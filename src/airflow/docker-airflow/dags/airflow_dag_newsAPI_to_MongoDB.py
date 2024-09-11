from datetime import datetime, timedelta
from airflow import DAG
from airflow.operators.empty import EmptyOperator
from airflow.operators.python import PythonOperator
from airflow.operators.email import EmailOperator

import newsAPI_To_MongoDB as newsAPI_To_MongoDB

from dotenv import load_dotenv
import os

# Load environment variables from the .env file (if present)
load_dotenv()

# Access environment variables as if they came from the actual environment
API_URL = os.getenv('API_URL')
API_KEY = os.getenv('API_KEY')


# Define DAG parameters
default_args = {
    'owner': 'airflow',
    'depends_on_past': False,
    'start_date': datetime(2024, 8, 4),
    'email_on_failure': False,
    'email_on_retry': False,
    'retries': 0
}

# Instantiate DAG
dag = DAG('newsapi_mongodb_dag_refresh_by_country', default_args=default_args, schedule=timedelta(days=1))

# Define tasks
start_task = EmptyOperator(task_id='start_task', dag=dag)

def run_my_script():
    # Specify the full path to your Python script
    try:
        newsAPI_To_MongoDB.main( API_URL,"q=India&", API_KEY, "mongodb://mongodb:27017/", "news","Articles")
    except Exception as e:
        print(f"An error occurred: {e}")
        return None

execute_script_task = PythonOperator(task_id='execute_script_task', python_callable=run_my_script, dag=dag)

end_task = EmptyOperator(task_id='end_task', dag=dag)

# Define task dependencies
start_task >> execute_script_task >> end_task

# Define EmailOperator to send email on success
# email_on_success_task = EmailOperator(
#     task_id='email_on_success_task',
#     to='patilnilesh232000@gmail.com',
#     subject='Airflow DAG Succeeded!',
#     html_content='<p>The Airflow DAG has completed successfully.</p>',
#     dag=dag,
# )

# # Define task dependency for sending email only on success
# end_task >> email_on_success_task
