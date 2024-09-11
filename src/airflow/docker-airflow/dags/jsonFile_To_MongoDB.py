import json
from pymongo import MongoClient 
import sys
import os

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

def main(uri, database, collection, file):
    # Connect to MongoDB
    collection = connect_to_MongoDB(uri, database, collection)

    # Loading or Opening the json file
    with open(file) as open_file:
         file_data = json.load(open_file)

    news_data=file_data["articles"]

    try:
        collection.insert_many(news_data)
        print("Data inserted successfully into MongoDB!")
        if os.path.exists(file):
            os.remove(file)
            print(f"File {file} has been removed succefully!")
        else:
            print("The file does not exist")
    except Exception as e:
        print(f"An error occurred while inserting data: {e}")
        sys.exit(1)

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="This script loads data from json file to MongoDB collection.")
    
    # Define optional arguments with defaults and flags
    parser.add_argument("-u", "--uri", default="mongodb://localhost:27017/", help="uri for MongoDB")
    parser.add_argument("-d", "--database", default="test", help="Database name for MongoDB Deployment")
    parser.add_argument("-c", "--collection", default="posts", help="Collection name for MongoDB Deployment")
    parser.add_argument("-f", "--file", type=str, help="File name with full path")

    # Parse arguments from command line
    args = parser.parse_args()
    main( uri=args.uri, database=args.database, collection=args.collection, file=args.file)
