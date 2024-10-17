db = db.getSiblingDB('mydatabase');  // Veritabanı oluştur veya seç
db.createCollection('trend_data');  // Koleksiyon oluştur

db.trend_data.insertMany([
   { keyword: "Python", search_volume: 12345, collected_at: new Date() },
   { keyword: "Docker", search_volume: 6789, collected_at: new Date() }
]);
