import os
import psycopg2
from psycopg2 import sql

# PostgreSQL bağlantı bilgileri
POSTGRES_USER = os.getenv('POSTGRES_USER')
POSTGRES_PASSWORD = os.getenv('POSTGRES_PASSWORD')
POSTGRES_DB = os.getenv('POSTGRES_DB')
POSTGRES_HOST = 'postgresql'  # Docker container ismi

# Bağlantıyı kurma
conn = psycopg2.connect(
    dbname=POSTGRES_DB,
    user=POSTGRES_USER,
    password=POSTGRES_PASSWORD,
    host=POSTGRES_HOST
)

cursor = conn.cursor()

# Örnek tablo oluşturma
cursor.execute("""
CREATE TABLE IF NOT EXISTS trend_data (
    id SERIAL PRIMARY KEY,
    keyword VARCHAR(255),
    search_volume INT,
    collected_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)
""")

conn.commit()
cursor.close()
conn.close()
