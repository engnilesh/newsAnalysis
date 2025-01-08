import requests

from pymongo import MongoClient
from datetime import datetime

import bson.json_util as json_util
import sys

import os


#Note here: These packages which we are importing in this script has to be install on Worker, Webserver, Scheduler and Triggerer instance(safer side I am installing it on every service) in order to the script to be executed by airflow beacuse the Worker, Webserver, Scheduler, Triggerer instances would be using the python which is installed on the their server
#If you fail to comply with above instruction, you might see DAG Import Error on Airflow UI with ModuleNotFoundError: No module named 'pymongo' error
# We can't use our local venv for this purpose, since our local venv resides on our Local WSL distro but the Worker, Webserver, Scheduler, Triggerer nodes are another running Machine/host with its own depedencies 
#Note: We can install packages directly on container by su airflow user
#Comment added on 10th Sep 24: In order to save this manual effort we prepaired a custom Dockerfile for pymonogo package installation on all nodes 

#And we need to put this file name into .airflowignore, so that airflow won't consider it as airflow configuration file for DAG 

##################################### SAMPLE OUTPUT #########################################################
# Call Statement:
#python3 newsAPI_To_MongoDB.py "API_URL" "q=Iran&" "API_KEY" -u "mongodb://localhost:27017/" -d "news" -c "Articles"
#
# Parameters: q=Iran&
# Data returned from API, Data load starting..
# API Data stored successfully in File data2024-08-26T02:15:09.json!
# Data inserted successfully into MongoDB!
# File data2024-08-26T02:15:09.json has been removed succefully!
##############################################################################################################


def get_api_data(api_url):
    '''Function to call the API and get the data'''
    '''Here in this function, I have use try and Except to fail the job if we get HTTPSConnectionPool due the application running offline mode/locally without internet connection. In we did not use the method we used in Get_API_news_in_postgres.py since it did not help failing the task '''
    try:
        response = requests.get(api_url)
        return response.json()
    except Exception as e:
        print(f"An error occurred: {e}")
        sys.exit(1)

def connect_to_MongoDB(uri, database, collection):
    '''Function to connect to MongoDB Deployment'''
    try:
        client = MongoClient(uri)
        database = client[database]
        collection = database[collection]
        return collection
    except Exception as e:
        print(f"An error occurred: {e}")
        sys.exit(1)

def main(api_url, parm, api_key, jcln, uri, database, collection):
    print(f"Parameters: {parm}")

    # Connect to MongoDB
    collection = connect_to_MongoDB(uri, database, collection)

    # Get data from API
    final_api_url = api_url + parm + "apiKey=" + api_key
    api_data = get_api_data(final_api_url)

    if api_data[jcln] == []: #To handle if we did not receive data from api for given parm
        print("No Data returned from API")
        sys.exit(1)
    else:
        print("Data returned from API, Data load starting..")
        current_timestamp = datetime.now()
        formatted_timestamp = current_timestamp.strftime('%Y-%m-%dT%H:%M:%S')
        file_name = "data_" + formatted_timestamp + ".json"
        try:
            with open(file_name, "w") as outfile:
                outfile.write(json_util.dumps(api_data, ensure_ascii=False, indent=4))
            print(f"API Data stored successfully in File {file_name}!")
        except Exception as e:
            print(f"An error occurred while storing data: {e}")
            sys.exit(1)
        
        news_data=api_data[jcln]

        try:
            collection.insert_many(news_data)
            print(f"Data inserted successfully into MongoDB! \nConnection Details: db= {database} ,collection= {collection.name}")
            if os.path.exists(file_name):
                os.remove(file_name)
                print(f"File {file_name} has been removed succefully!")
            else:
                print("The file does not exist")
        except Exception as e:
            print(f"An error occurred while inserting data: {e}")
            sys.exit(1)

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="This script gets the data of any schema from API and store it in MongoDB collection.")

    # Define positional argument
    parser.add_argument("api_url", type=str, help="API URL")
    parser.add_argument("parm", type=str, help="parametters")
    parser.add_argument("api_key", type=str, help="API Key")
    parser.add_argument("jcln", type=str, help="json containing list name") #To make our script dynamic to all type of json containing list
    
    # Define optional arguments with defaults and flags
    parser.add_argument("-u", "--uri", default="mongodb://localhost:27017/", help="uri for MongoDB")
    parser.add_argument("-d", "--database", default="test", help="Database name for MongoDB Deployment")
    parser.add_argument("-c", "--collection", default="posts", help="Collection name for MongoDB Deployment")

    # Parse arguments from command line
    args = parser.parse_args()
    main(api_url=args.api_url, parm=args.parm, api_key=args.api_key, jcln=args.jcln, uri=args.uri, database=args.database, collection=args.collection)
