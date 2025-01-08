from airflow.operators.python import PythonOperator
from airflow import DAG
from datetime import datetime, timedelta
from airflow.operators.empty import EmptyOperator

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
with DAG(
    'my_dynamic_dag',
    default_args=default_args,
    schedule_interval=timedelta(days=1),  # Daily schedule
    catchup=False  # Ensures only the most recent DAG run is executed
) as dag:

    def my_task(arg1, arg2):
        # Task logic here
        print(f"Task executed with arguments: arg1={arg1}, arg2={arg2}")

    # Define start and end tasks
    start_task = EmptyOperator(task_id='start_task')
    end_task = EmptyOperator(task_id='end_task')

    # Dynamically create tasks and chain them
    previous_task = start_task
    for i in range(10):
        task_instance = PythonOperator(
            task_id=f'task_{i}',
            python_callable=my_task,
            op_kwargs={'arg1': f'value_{i}', 'arg2': i}
        )
        # Chain the previous task to the current task
        previous_task >> task_instance
        # Set the current task as the previous one for the next iteration
        previous_task = task_instance

    # Chain the last task to the end_task
    previous_task >> end_task
