import os
from pymongo import MongoClient

# MongoDB bağlantı bilgileri
MONGO_URI = f"mongodb://{os.getenv('MONGO_INITDB_ROOT_USERNAME')}:{os.getenv('MONGO_INITDB_ROOT_PASSWORD')}@mongodb:27017"

# MongoDB bağlantısını kurma
client = MongoClient(MONGO_URI)
db = client['trend_data_db']

# Örnek veri ekleme
db.trends.insert_one({
    "keyword": "AI",
    "search_volume": 12345
})
