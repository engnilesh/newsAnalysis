from pymongo import MongoClient
import sys
from langdetect import detect_langs
import json
import psycopg2
from psycopg2 import sql


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

def connect_to_postgres(postgres_conn_string):
    try:
        conn = psycopg2.connect(postgres_conn_string)
        return conn
    except Exception as e:
        print(f"An error occurred: {e}")
        return None

def main(query, uri, database, collection, min_word_count):
    print(f"Query: {query}")

    # Connect to MongoDB
    collection = connect_to_MongoDB(uri, database, collection)

    #All the languages names along with their shorthand notation
    langDic = {'af': 'afrikaans', 'sq': 'albanian', 'am': 'amharic', 'ar': 'arabic', 'hy': 'armenian', 'az': 'azerbaijani', 'eu': 'basque', 'be': 'belarusian', 'bn': 'bengali', 'bs': 'bosnian', 'bg': 'bulgarian', 'ca': 'catalan', 'ceb': 'cebuano', 'ny': 'chichewa', 'zh-cn': 'chinese (simplified)', 'zh-tw': 'chinese (traditional)', 'co': 'corsican', 'hr': 'croatian', 'cs': 'czech', 'da': 'danish', 'nl': 'dutch', 'en': 'english', 'eo': 'esperanto', 'et': 'estonian', 'tl': 'filipino', 'fi': 'finnish', 'fr': 'french', 'fy': 'frisian', 'gl': 'galician', 'ka': 'georgian', 'de': 'german', 'el': 'greek', 'gu': 'gujarati', 'ht': 'haitian creole', 'ha': 'hausa', 'haw': 'hawaiian', 'iw': 'hebrew', 'hi': 'hindi', 'hmn': 'hmong', 'hu': 'hungarian', 'is': 'icelandic', 'ig': 'igbo', 'id': 'indonesian', 'ga': 'irish', 'it': 'italian', 'ja': 'japanese', 'jw': 'javanese', 'kn': 'kannada', 'kk': 'kazakh', 'km': 'khmer', 'ko': 'korean', 'ku': 'kurdish (kurmanji)', 'ky': 'kyrgyz', 'lo': 'lao', 'la': 'latin', 'lv': 'latvian', 'lt': 'lithuanian', 'lb': 'luxembourgish', 'mk': 'macedonian', 'mg': 'malagasy', 'ms': 'malay', 'ml': 'malayalam', 'mt': 'maltese', 'mi': 'maori', 'mr': 'marathi', 'mn': 'mongolian', 'my': 'myanmar (burmese)', 'ne': 'nepali', 'no': 'norwegian', 'ps': 'pashto', 'fa': 'persian', 'pl': 'polish', 'pt': 'portuguese', 'pa': 'punjabi', 'ro': 'romanian', 'ru': 'russian', 'sm': 'samoan', 'gd': 'scots gaelic', 'sr': 'serbian', 'st': 'sesotho', 'sn': 'shona', 'sd': 'sindhi', 'si': 'sinhala', 'sk': 'slovak', 'sl': 'slovenian', 'so': 'somali', 'es': 'spanish', 'su': 'sundanese', 'sw': 'swahili', 'sv': 'swedish', 'tg': 'tajik', 'ta': 'tamil', 'te': 'telugu', 'th': 'thai', 'tr': 'turkish', 'uk': 'ukrainian', 'ur': 'urdu', 'uz': 'uzbek', 'vi': 'vietnamese', 'cy': 'welsh', 'xh': 'xhosa', 'yi': 'yiddish', 'yo': 'yoruba', 'zu': 'zulu', 'fil': 'Filipino', 'he': 'Hebrew'}

    d = dict()
    prepositionsAndmore = [
        #Prepositions
        "about", "above", "across", "after", "against", "along", "among", "around",
        "at", "before", "behind", "below", "beneath", "beside", "between", "beyond",
        "by", "despite", "down", "during", "except", "for", "from", "in", "inside",
        "into","near", "of", "off", "on", "onto", "out", "outside", "over",
        "past", "since", "through", "to", "toward", "under", "underneath", "until",
        "up", "with", "within", "without",
        # Subjects
        "I","you","he","she","it","we","they","me","him","her","us","them","this","that",
        "these","those","who","whom","whose","which","what","somebody","everybody","anyone","everyone",
        "its",
        # Verbs
        "am", "are", "is", "was", "were", "be", "been", "being","have", "has", "had",
        # Articles
        "a", "an", "the"
        ]
    
    res = json.loads(query)
    for x in collection.find(res,{'_id':1,'title':1}):
        New_line=x.get('title')
        id=x.get('_id')
        new_line = New_line.lower()
        L = detect_langs(new_line)
        l = (str(L).split(":",1)[0]).replace("[","")

        if langDic[l] != "english":
            continue
        # Split the line into words
        words = new_line.split(" ")

        # Iterate over each word in line
        for word in words:
            if word not in prepositionsAndmore:
                # Check if the word is already in the dictionary
                if word in d:
                    # Increase the word count by 1
                    d[word]["count"] = d[word]["count"] + 1
                    if id not in d[word]["article_id"]:
                        d[word]["article_id"].append(id)
                else:
                    d[word] = {}
                    # Add the word to dictionary, counting 1
                    d[word]["count"] = 1
                    #d[word] = 1
                    d[word]["article_id"] = []
                    d[word]["article_id"].append(id)

    #Print the contents of the dictionary
    myKeys = list(d.keys())
    myKeys.sort()
    sorted_dict = {i: d[i] for i in myKeys}
    #print(sorted_dict)

    for key in list(sorted_dict.keys()):
        if d[key]["count"] > int(min_word_count):
            print(key, ":", d[key])

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="This script gets the articles from MongoDB based on query provided and returns word count in title.")

    # Define positional argument
    parser.add_argument("query", type=str, help="Mongodb query to get data which we want to process")
    
    # Define optional arguments with defaults and flags
    parser.add_argument("-u", "--uri", default="mongodb://localhost:27017/", help="uri for MongoDB")
    parser.add_argument("-d", "--database", default="test", help="Database name for MongoDB Deployment")
    parser.add_argument("-c", "--collection", default="posts", help="Collection name for MongoDB Deployment")
    parser.add_argument("-m", "--min_word_count", default="4", help="Return only those words which has count greater than Min word count")

    # Parse arguments from command line
    args = parser.parse_args()
    main(query=args.query, uri=args.uri, database=args.database, collection=args.collection, min_word_count=args.min_word_count)