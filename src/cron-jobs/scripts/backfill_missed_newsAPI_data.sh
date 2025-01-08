#!/bin/bash

if [ $1 = "Afghanistan" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Afghanistan_$yest'' --conf '{'\"parm\":\"q=Afghanistan\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Argentina" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Argentina_$yest'' --conf '{'\"parm\":\"q=Argentina\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Australia" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Australia_$yest'' --conf '{'\"parm\":\"q=Australia\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Bangladesh" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Bangladesh_$yest'' --conf '{'\"parm\":\"q=Bangladesh\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Brazil" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Brazil_$yest'' --conf '{'\"parm\":\"q=Brazil\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Myanmar" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Myanmar_$yest'' --conf '{'\"parm\":\"q=Myanmar\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Canada" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Canada_$yest'' --conf '{'\"parm\":\"q=Canada\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Chile" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Chile_$yest'' --conf '{'\"parm\":\"q=Chile\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "China" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_China_$yest'' --conf '{'\"parm\":\"q=China\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Colombia" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Colombia_$yest'' --conf '{'\"parm\":\"q=Colombia\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Denmark" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Denmark_$yest'' --conf '{'\"parm\":\"q=Denmark\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Ethiopia" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Ethiopia_$yest'' --conf '{'\"parm\":\"q=Ethiopia\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Finland" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Finland_$yest'' --conf '{'\"parm\":\"q=Finland\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "France" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_France_$yest'' --conf '{'\"parm\":\"q=France\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Germany" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Germany_$yest'' --conf '{'\"parm\":\"q=Germany\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Ghana" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Ghana_$yest'' --conf '{'\"parm\":\"q=Ghana\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Greece" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Greece_$yest'' --conf '{'\"parm\":\"q=Greece\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Iceland" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Iceland_$yest'' --conf '{'\"parm\":\"q=Iceland\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "India" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_India_$yest'' --conf '{'\"parm\":\"q=India\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Indonesia" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Indonesia_$yest'' --conf '{'\"parm\":\"q=Indonesia\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Ireland" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Ireland_$yest'' --conf '{'\"parm\":\"q=Ireland\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Israel" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Israel_$yest'' --conf '{'\"parm\":\"q=Israel\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Italy" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Italy_$yest'' --conf '{'\"parm\":\"q=Italy\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Japan" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Japan_$yest'' --conf '{'\"parm\":\"q=Japan\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Kenya" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Kenya_$yest'' --conf '{'\"parm\":\"q=Kenya\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Libya" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Libya_$yest'' --conf '{'\"parm\":\"q=Libya\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Malaysia" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Malaysia_$yest'' --conf '{'\"parm\":\"q=Malaysia\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Mexico" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Mexico_$yest'' --conf '{'\"parm\":\"q=Mexico\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "New_Zealand" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_New_Zealand_$yest'' --conf '{'\"parm\":\"q=New\ Zealand\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Nigeria" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Nigeria_$yest'' --conf '{'\"parm\":\"q=Nigeria\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Norway" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Norway_$yest'' --conf '{'\"parm\":\"q=Norway\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Pakistan" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Pakistan_$yest'' --conf '{'\"parm\":\"q=Pakistan\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Peru" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Peru_$yest'' --conf '{'\"parm\":\"q=Peru\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Portugal" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Portugal_$yest'' --conf '{'\"parm\":\"q=Portugal\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Saudi_Arabia" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Saudi_Arabia_$yest'' --conf '{'\"parm\":\"q=Saudi\ Arabia\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Singapore" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Singapore_$yest'' --conf '{'\"parm\":\"q=Singapore\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "South_Africa" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_South_Africa_$yest'' --conf '{'\"parm\":\"q=South\ Africa\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Spain" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Spain_$yest'' --conf '{'\"parm\":\"q=Spain\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "South_Sudan" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_South_Sudan_$yest'' --conf '{'\"parm\":\"q=South\ Sudan\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Sweden" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Sweden_$yest'' --conf '{'\"parm\":\"q=Sweden\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Switzerland" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Switzerland_$yest'' --conf '{'\"parm\":\"q=Switzerland\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Thailand" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Thailand_$yest'' --conf '{'\"parm\":\"q=Thailand\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Turkey" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Turkey_$yest'' --conf '{'\"parm\":\"q=Turkey\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Ukraine" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Ukraine_$yest'' --conf '{'\"parm\":\"q=Ukraine\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Egypt" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Egypt_$yest'' --conf '{'\"parm\":\"q=Egypt\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Yemen" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Yemen_$yest'' --conf '{'\"parm\":\"q=Yemen\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "United_Kingdom" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_United_Kingdom_$yest'' --conf '{'\"parm\":\"q=United\ Kingdom\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Ireland" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Ireland_$yest'' --conf '{'\"parm\":\"q=Ireland\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "America" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_America_$yest'' --conf '{'\"parm\":\"q=America\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Venezuela" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Venezuela_$yest'' --conf '{'\"parm\":\"q=Venezuela\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Viet_Nam" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Viet_Nam_$yest'' --conf '{'\"parm\":\"q=Viet\ Nam\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Syrian" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Syrian_$yest'' --conf '{'\"parm\":\"q=Syrian\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Taiwan" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Taiwan_$yest'' --conf '{'\"parm\":\"q=Taiwan\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Tanzania" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Tanzania_$yest'' --conf '{'\"parm\":\"q=Tanzania\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "South_Korea" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_South_Korea_$yest'' --conf '{'\"parm\":\"q=South\ Korea\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "North_Korea" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_North_Korea_$yest'' --conf '{'\"parm\":\"q=North\ Korea\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Russian" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Russian_$yest'' --conf '{'\"parm\":\"q=Russia\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Philippines" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Philippines_$yest'' --conf '{'\"parm\":\"q=Philippines\&from=$yest\&to=$yest\"}'''
	exit 0
elif [ $1 = "Iran" ]
then
	docker exec docker-airflow-airflow-worker-1 /bin/bash -c 'yest=`date -d "-1 day" "+%Y-%m-%d"` && airflow dags trigger ''newsapi_mongodb_dag_refresh_by_country'' -r ''Get_news_from_API_for_Iran_$yest'' --conf '{'\"parm\":\"q=Iran\&from=$yest\&to=$yest\"}'''
	exit 0
else 
	echo "Wrong ountry name passed $1"
	exit 1
fi

