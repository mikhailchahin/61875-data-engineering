from datetime import datetime
from email import message
from airflow.models import DAG
from airflow.operators.python_operator import PythonOperator
from airflow.operators.bash import BashOperator


default_args={
    'owner': 'anderson_o',
    'start_date': datetime(2024,7,3)
}

with DAG(
    dag_id='dag_smtp_email_automatico',
    default_args=default_args,
    schedule_interval='@daily') as dag:



    printer = BashOperator(
        task_id="printer_variables",
        bash_command='echo "{{ var.value.subject_mail }} --> {{ var.value.email }}"',
    )

