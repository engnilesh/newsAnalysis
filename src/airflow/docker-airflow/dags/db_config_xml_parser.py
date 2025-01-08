import xml.dom.minidom
import sys
import os

# Access environment variables. Note: If you have to run this script from Local Machine and not from airflow worker then you have to first set the AIRFLOW_HOME directory
AIRFLOW_HOME = os.getenv('AIRFLOW_HOME')

config_file_with_path = AIRFLOW_HOME + '/config/db_config_for_dag.xml'

def main(db):
    # parse the XML file
    xml_doc = xml.dom.minidom.parse(config_file_with_path)

    # get the root element
    # root = xml_doc.documentElement
    # print('Root is',root)

    if db == "pg":
        # get all the package elements
        postgres = xml_doc.getElementsByTagName('postgres')

        pg = dict()
        # loop through the packages and extract the data
        for element in postgres:
        #package_id = package.getAttribute('id')

            dbname = element.getElementsByTagName('dbname')[0].childNodes[0].data
            pg["dbname"] = dbname
            user = element.getElementsByTagName('user')[0].childNodes[0].data
            pg["user"] = user
            password = element.getElementsByTagName('password')[0].childNodes[0].data
            pg["password"] = password
            host = element.getElementsByTagName('host')[0].childNodes[0].data
            pg["host"] = host
            port = element.getElementsByTagName('port')[0].childNodes[0].data
            pg["port"] = port
        return pg

    elif db == "mg.test":
        # get all the package elements
        mongodb = xml_doc.getElementsByTagName('test')

        mg = dict()
        # loop through the packages and extract the data
        for element in mongodb:
        #package_id = package.getAttribute('id')

            uri =   element.getElementsByTagName('uri')[0].childNodes[0].data
            mg["uri"] = uri
            database = element.getElementsByTagName('database')[0].childNodes[0].data
            mg["database"] = database
            collection = element.getElementsByTagName('collection')[0].childNodes[0].data
            mg["collection"] = collection
        return mg

    elif db == "mg.dev":
        # get all the package elements
        mongodb = xml_doc.getElementsByTagName('dev')

        mg = dict()
        # loop through the packages and extract the data
        for element in mongodb:
        #package_id = package.getAttribute('id')

            database = element.getElementsByTagName('database')[0].childNodes[0].data
            mg["database"] = database
            collection = element.getElementsByTagName('collection')[0].childNodes[0].data
            mg["collection"] = collection
        return mg
    else:
        sys.exit(1)

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="This script returns the database details in dict. format from config file based on db name provided")

    # Define positional argument
    parser.add_argument("db", type=str, help="db name")

    # Parse arguments from command line
    args = parser.parse_args()
    main(db=args.db)
