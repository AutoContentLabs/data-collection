// MongoDB Bilgileri
MONGO_DB_NAME = "trend_db";

db = db.getSiblingDB(MONGO_DB_NAME); // Veritabanı oluştur veya seç

// api_data: API’lerden toplanan JSON verilerini depolayacak.
db.createCollection("api_data");

// web_data: Web scraping ile elde edilen verileri depolayacak.
db.createCollection("web_data");

// rss_data: RSS beslemelerinden toplanan veriler için.
db.createCollection("rss_data");

// manual_entries: Manuel olarak girilen veriler için.
db.createCollection("manual_entries");

db.manual_entries.insertMany([
  { keyword: "test", search_volume: 12345, collected_at: new Date() },
]);
