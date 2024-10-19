const axios = require("axios");
const { MongoClient } = require("mongodb");
const { Client } = require("pg");
const mysql = require("mysql2/promise"); // Use promise-based MySQL client

// MongoDB Erişim Bilgileri
const MONGO_DB_HOST_NAME = "localhost";
const MONGO_DB_HOST_PORT = 27017;
const MONGO_DB_NAME = "trend_db";
const MONGO_DB_USERNAME = "mongoadmin";
const MONGO_DB_PASSWORD = "strongpassword123";

// MongoDB Bağlantısı
const mongoClient = new MongoClient(
  `mongodb://${MONGO_DB_USERNAME}:${MONGO_DB_PASSWORD}@${MONGO_DB_HOST_NAME}:${MONGO_DB_HOST_PORT}/`
);
const dbName = MONGO_DB_NAME;

// PostgreSQL Erişim Bilgileri
const POSTGRES_DB_HOST_NAME = "localhost";
const POSTGRES_DB_HOST_PORT = 5432;
const POSTGRES_DB_NAME = "trend_db";
const POSTGRES_USER = "postgresadmin";
const POSTGRES_PASSWORD = "securepassword456";

// PostgreSQL Bağlantısı
const pgClient = new Client({
  host: POSTGRES_DB_HOST_NAME,
  port: POSTGRES_DB_HOST_PORT,
  database: POSTGRES_DB_NAME,
  user: POSTGRES_USER,
  password: POSTGRES_PASSWORD,
});
pgClient.connect();

// MySQL Erişim Bilgileri
const MYSQL_DB_HOST_NAME = "localhost";
const MYSQL_DB_HOST_PORT = 3306;
const MYSQL_DB_NAME = "data_sources_db";
const MYSQL_USER = "my_user"; 
const MYSQL_PASSWORD = "my_password"; 

// MySQL Bağlantısı
async function getActiveSources() {
  const connection = await mysql.createConnection({
    host: MYSQL_DB_HOST_NAME,
    port: MYSQL_DB_HOST_PORT,
    database: MYSQL_DB_NAME,
    user: MYSQL_USER,
    password: MYSQL_PASSWORD,
  });

  const [rows] = await connection.execute("SELECT source_url FROM sources WHERE is_active = TRUE");
  await connection.end();
  return rows.map(row => row.source_url);
}

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

    console.log(`Veri başarıyla kaydedildi: ${apiUrl}`);
  } catch (error) {
    console.error(`API Hatası (${apiUrl}):`, error);
  }
}

// Ana İşlev
async function main() {
  await mongoClient.connect();
  const activeUrls = await getActiveSources();

  for (const url of activeUrls) {
    await fetchApiData(url);
  }

  await pgClient.end();
  await mongoClient.close();
}

// Programı başlat
main().catch(console.error);
