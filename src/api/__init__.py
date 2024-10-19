import requests
import json
from pymongo import MongoClient
import psycopg2
import mysql.connector

# MongoDB Erişim Bilgileri
MONGO_DB_HOST_NAME = "localhost"
MONGO_DB_HOST_PORT = 27017
MONGO_DB_NAME = "trend_db"
MONGO_DB_USERNAME = "mongoadmin"
MONGO_DB_PASSWORD = "strongpassword123"

# MongoDB Bağlantısı
client = MongoClient(f"mongodb://{MONGO_DB_USERNAME}:{MONGO_DB_PASSWORD}@{MONGO_DB_HOST_NAME}:{MONGO_DB_HOST_PORT}/")
mongo_db = client[MONGO_DB_NAME]
api_collection = mongo_db["api_data"]

# PostgreSQL Erişim Bilgileri
POSTGRES_DB_HOST_NAME = "localhost"
POSTGRES_DB_HOST_PORT = 5432
POSTGRES_DB_NAME = "trend_db"
POSTGRES_USER = "postgresadmin"
POSTGRES_PASSWORD = "securepassword456"

# PostgreSQL Bağlantısı
conn = psycopg2.connect(
    host=POSTGRES_DB_HOST_NAME,
    port=POSTGRES_DB_HOST_PORT,
    database=POSTGRES_DB_NAME,
    user=POSTGRES_USER,
    password=POSTGRES_PASSWORD
)
cursor = conn.cursor()

# MySQL Erişim Bilgileri
MYSQL_DB_HOST_NAME = "localhost"
MYSQL_DB_HOST_PORT = 3306
MYSQL_DB_NAME = "data_sources_db" 
MYSQL_USER = "my_user"  
MYSQL_PASSWORD = "my_password"

# MySQL Bağlantısı
def get_active_sources():
    mydb = mysql.connector.connect(
        host=MYSQL_DB_HOST_NAME,
        port=MYSQL_DB_HOST_PORT,
        database=MYSQL_DB_NAME,
        user=MYSQL_USER,
        password=MYSQL_PASSWORD
    )
    cursor = mydb.cursor()
    cursor.execute("SELECT source_url FROM sources WHERE is_active = TRUE")
    active_urls = cursor.fetchall()
    cursor.close()
    mydb.close()
    return [url[0] for url in active_urls]

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
        print(f"Veri kaydedildi: {api_url}")
    else:
        print("API isteği başarısız oldu:", response.status_code)

# Ana İşlev
def main():
    active_urls = get_active_sources()
    for url in active_urls:
        fetch_api_data(url)

# Programı başlat
if __name__ == "__main__":
    main()

# Bağlantıları kapat
cursor.close()
conn.close()
