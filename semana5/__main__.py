
import os
from modules import DataManager , DataConn
from dotenv import load_dotenv

load_dotenv()

user_credentials = {
    "REDSHIFT_USERNAME" : os.getenv('REDSHIFT_USERNAME'),
    "REDSHIFT_PASSWORD" : os.getenv('REDSHIFT_PASSWORD'),
    "REDSHIFT_HOST" : os.getenv('REDSHIFT_HOST'),
    "REDSHIFT_PORT" : os.getenv('REDSHIFT_PORT', '5439'),
    "REDSHIFT_DBNAME" : os.getenv('REDSHIFT_DBNAME')
}

schema = "andru_ocatorres_coderhouse"

google = DataManager('goog')
google_data = google.data_transform()

data_conn = DataConn(user_credentials, schema)

try:
    data_conn.get_conn()
    data = google.data_transform()
    data_conn.upload_data(data, 'stage_yfinance_google')
finally:
    data_conn.close_conn()