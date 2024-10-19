import requests
import json
from pymongo import MongoClient
import psycopg2

# MongoDB Erişim Bilgileri
MONGO_DB_HOST_NAME="localhost"
MONGO_DB_HOST_PORT=27017
MONGO_DB_NAME="trend_db"
MONGO_DB_USERNAME="mongoadmin"
MONGO_DB_PASSWORD="strongpassword123"


# MongoDB Bağlantısı
client = MongoClient("mongodb://{MONGO_DB_USERNAME}:{MONGO_DB_PASSWORD}@{MONGO_DB_HOST_NAME}:{MONGO_DB_HOST_PORT}/")

# MongoDB veritabanı? seçimi
# trend data [ neden 'data' ismini verdik?]
mongo_db = client[MONGO_DB_NAME]

# MongoDB Collection seçimi
api_collection = mongo_db["api_data"]

# PostgreSQL Erişim Bilgileri
POSTGRES_DB_HOST_NAME="localhost"
POSTGRES_DB_HOST_PORT=5432
POSTGRES_DB_NAME="trend_db"
POSTGRES_USER="postgresadmin"
POSTGRES_PASSWORD="securepassword456"


# PostgreSQL Bağlantısı
conn = psycopg2.connect(
    # trend analysis [ neden analysis ismimi verdik?]
    host=POSTGRES_DB_HOST_NAME,
    port=POSTGRES_DB_HOST_PORT,
    database=POSTGRES_DB_NAME,
    user=POSTGRES_USER,
    password=POSTGRES_PASSWORD

)
cursor = conn.cursor()

# API veri çekme fonksiyonu
def fetch_api_data(api_url, headers=None):
    response = requests.get(api_url, headers=headers)
    if response.status_code == 200:
        data = response.json()
        # MongoDB'ye kaydet
        api_collection.insert_one(data)
        # PostgreSQL'e kaydet
        cursor.execute("INSERT INTO api_trends (source_type, access_method, data_format, extracted_data) VALUES (%s, %s, %s, %s)", 
                       ('API', 'GET', 'JSON', json.dumps(data)))
        conn.commit()
        print("Veri kaydedildi.")
    else:
        print("API isteği başarısız oldu:", response.status_code)

# API çağrısı
api_url = "https://api.example.com/trending"
fetch_api_data(api_url)
