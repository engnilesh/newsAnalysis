#!/bin/bash

python3 $PYTHON_WC_FILE '{"publishedAt":{"$regex":"2024-10-11"}}' -u "mongodb://airflow:airflow@mongodb:27017/news" -d "news" -c "Articles"