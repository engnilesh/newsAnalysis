import psycopg2
from psycopg2 import sql
import db_config_xml_parser as db_config_xml_parser

def connect_to_postgres(postgres_conn_string):
    try:
        conn = psycopg2.connect(postgres_conn_string)
        return conn
    except Exception as e:
        print(f"An error occurred: {e}")
        return None

def main():
    postgresdb = db_config_xml_parser.main("pg")
    postgres_conn_string = "dbname='" + postgresdb["dbname"] + "' user='" + postgresdb["user"] + "' password='" + postgresdb["password"] + "' host='" + postgresdb["host"] + "' port='" + postgresdb["port"] + "'"
    conn = connect_to_postgres(postgres_conn_string)
    cursor = conn.cursor()
    sql = "select REPLACE((REPLACE((REPLACE((REPLACE((REPLACE(country_name, ' ', '_')), '(', '-')), ')', '')), '''', '')), ',', ''), LOWER(alpha_2_cd) from const_schema.country_cd_dim where country_name in ('Afghanistan','Argentina','Australia','Bangladesh','Brazil','Myanmar','Canada','Chile','China','Colombia','Denmark','Ethiopia','Finland','France','Germany','Ghana','Greece','Iceland','India','Indonesia','Ireland','Israel','Italy','Japan','Kenya','Libya','Malaysia','Mexico','New Zealand','Nigeria','Norway','Pakistan','Peru','Portugal','Saudi Arabia','Singapore','South Africa','Spain','South Sudan','Sweden','Switzerland','Thailand','Turkey','Ukraine','Egypt','Yemen','United Kingdom of Great Britain and Northern Ireland (the)','United States of America (the)','Venezuela (Bolivarian Republic of)','Viet Nam','Syrian Arab Republic','Taiwan (Province of China)','Tanzania, United Republic of','Korea (the Democratic People''s Republic of)','Korea (the Republic of)','Russian Federation (the)','Philippines (the)','Iran (Islamic Republic of)')"
    cursor.execute(sql)
    res_list=cursor.fetchall()
    res_dict = {}
    for i in range(0, len(res_list)):
        res_dict[res_list[i][0]] = res_list[i][1]
    return res_dict

if __name__ == "__main__":
    main()