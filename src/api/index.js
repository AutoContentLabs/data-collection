const axios = require("axios");
const { MongoClient } = require("mongodb");
const { Client } = require("pg");

// MongoDB Erişim Bilgileri
MONGO_DB_HOST_NAME = "localhost";
MONGO_DB_HOST_PORT = 27017;
MONGO_DB_NAME = "trend_db";
MONGO_DB_USERNAME = "mongoadmin";
MONGO_DB_PASSWORD = "strongpassword123";

// MongoDB Bağlantısı
const mongoClient = MongoClient(
  `mongodb://${MONGO_DB_USERNAME}:${MONGO_DB_PASSWORD}@${MONGO_DB_HOST_NAME}:${MONGO_DB_HOST_PORT}/`
);
const dbName = MONGO_DB_NAME;

// PostgreSQL Erişim Bilgileri
POSTGRES_DB_HOST_NAME = "localhost";
POSTGRES_DB_HOST_PORT = 5432;
POSTGRES_DB_NAME = "trend_db";
POSTGRES_USER = "postgresadmin";
POSTGRES_PASSWORD = "securepassword456";

// PostgreSQL Bağlantısı
const pgClient = new Client({
  host: POSTGRES_DB_HOST_NAME,
  port: POSTGRES_DB_HOST_PORT,
  database: POSTGRES_DB_NAME,
  user: POSTGRES_USER,
  password: POSTGRES_PASSWORD,
});
pgClient.connect();

// API Veri Çekme
async function fetchApiData(apiUrl) {
  try {
    const response = await axios.get(apiUrl);
    const data = response.data;

    // MongoDB'ye Kaydet
    const db = mongoClient.db(dbName);
    const collection = db.collection("api_data");
    await collection.insertOne(data);

    // PostgreSQL'e Kaydet
    const query =
      "INSERT INTO api_trends(source_type, access_method, data_format, extracted_data) VALUES($1, $2, $3, $4)";
    await pgClient.query(query, ["API", "GET", "JSON", JSON.stringify(data)]);

    console.log("Veri başarıyla kaydedildi");
  } catch (error) {
    console.error("API Hatası:", error);
  }
}

fetchApiData("https://api.example.com/trending");
