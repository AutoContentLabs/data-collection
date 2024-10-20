const mysql = require("mysql2/promise");
const { MongoClient } = require("mongodb");
const { Client } = require("pg");
const axios = require("axios");
const dotenv = require("dotenv");
const logging = require("loglevel");

dotenv.config();

// Logging configuration
logging.setLevel("info");

// Database connection details
const MONGO_DB_HOST_NAME = process.env.MONGO_DB_HOST_NAME || "localhost";
const MONGO_DB_HOST_PORT = process.env.MONGO_DB_HOST_PORT || 27017;
const MONGO_DB_NAME = process.env.MONGO_DB_NAME || "trend_db";
const MONGO_DB_USERNAME = process.env.MONGO_DB_USERNAME || "mongoadmin";
const MONGO_DB_PASSWORD = process.env.MONGO_DB_PASSWORD || "strongpassword123";

const POSTGRES_DB_HOST_NAME = process.env.POSTGRES_DB_HOST_NAME || "localhost";
const POSTGRES_DB_HOST_PORT = process.env.POSTGRES_DB_HOST_PORT || 5432;
const POSTGRES_DB_NAME = process.env.POSTGRES_DB_NAME || "trend_db";
const POSTGRES_USER = process.env.POSTGRES_USER || "postgresadmin";
const POSTGRES_PASSWORD = process.env.POSTGRES_PASSWORD || "securepassword456";

const MYSQL_DB_HOST_NAME = process.env.MYSQL_DB_HOST_NAME || "localhost";
const MYSQL_DB_HOST_PORT = process.env.MYSQL_DB_HOST_PORT || 3306;
const MYSQL_DB_NAME = process.env.MYSQL_DB_NAME || "data_sources_db";
const MYSQL_USER = process.env.MYSQL_USER || "my_user";
const MYSQL_PASSWORD = process.env.MYSQL_PASSWORD || "my_password";

const MYSQL_RETRIES = parseInt(process.env.MYSQL_RETRIES, 10) || 60;
const MONGODB_RETRIES = parseInt(process.env.MONGODB_RETRIES, 10) || 60;
const POSTGRES_RETRIES = parseInt(process.env.POSTGRES_RETRIES, 10) || 60;

async function connectMySQL() {
    for (let attempt = 0; attempt < MYSQL_RETRIES; attempt++) {
        try {
            logging.info("Connecting to MySQL database...");
            const connection = await mysql.createConnection({
                host: MYSQL_DB_HOST_NAME,
                port: MYSQL_DB_HOST_PORT,
                user: MYSQL_USER,
                password: MYSQL_PASSWORD,
                database: MYSQL_DB_NAME,
            });
            logging.info("Connected to MySQL successfully.");
            return connection;
        } catch (error) {
            logging.error(
                `MySQL Connection Error (Attempt ${
                    attempt + 1
                }/${MYSQL_RETRIES}): ${error.message}`
            );
            await new Promise((resolve) => setTimeout(resolve, 2000));
        }
    }
    throw new Error("Could not connect to MySQL after multiple attempts.");
}

async function connectMongoDB() {
    for (let attempt = 0; attempt < MONGODB_RETRIES; attempt++) {
        try {
            logging.info("Connecting to MongoDB database...");
            const mongoClient = new MongoClient(
                `mongodb://${MONGO_DB_USERNAME}:${MONGO_DB_PASSWORD}@${MONGO_DB_HOST_NAME}:${MONGO_DB_HOST_PORT}/`
            );
            await mongoClient.connect();
            logging.info("Connected to MongoDB successfully.");
            return mongoClient;
        } catch (error) {
            logging.error(
                `MongoDB Connection Error (Attempt ${
                    attempt + 1
                }/${MONGODB_RETRIES}): ${error.message}`
            );
            await new Promise((resolve) => setTimeout(resolve, 2000));
        }
    }
    throw new Error("Could not connect to MongoDB after multiple attempts.");
}

async function connectPostgres() {
    for (let attempt = 0; attempt < POSTGRES_RETRIES; attempt++) {
        try {
            logging.info("Connecting to PostgreSQL database...");
            const pgClient = new Client({
                host: POSTGRES_DB_HOST_NAME,
                port: POSTGRES_DB_HOST_PORT,
                database: POSTGRES_DB_NAME,
                user: POSTGRES_USER,
                password: POSTGRES_PASSWORD,
            });
            await pgClient.connect();
            logging.info("Connected to PostgreSQL successfully.");
            return pgClient;
        } catch (error) {
            logging.error(
                `PostgreSQL Connection Error (Attempt ${
                    attempt + 1
                }/${POSTGRES_RETRIES}): ${error.message}`
            );
            await new Promise((resolve) => setTimeout(resolve, 2000));
        }
    }
    throw new Error("Could not connect to PostgreSQL after multiple attempts.");
}

async function getActiveSources(mysqlConn) {
    for (let attempt = 0; attempt < MYSQL_RETRIES; attempt++) {
        try {
            const [rows] = await mysqlConn.execute(
                "SELECT source_url FROM sources WHERE is_active = TRUE"
            );
            logging.info("Active sources fetched successfully.");
            return rows.map((row) => row.source_url);
        } catch (error) {
            logging.error(
                `MySQL Query Error (Attempt ${attempt + 1}/${MYSQL_RETRIES}): ${
                    error.message
                }`
            );
            await new Promise((resolve) => setTimeout(resolve, 2000));
        }
    }
    throw new Error("Could not fetch active sources after multiple attempts.");
}

async function fetchApiData(apiUrl, mongoClient, pgClient) {
    try {
        logging.info(`Fetching data from API: ${apiUrl}`);
        const response = await axios.get(apiUrl);
        const data = response.data;

        // Save to MongoDB
        const db = mongoClient.db(MONGO_DB_NAME);
        const collection = db.collection("api_data");
        if (Array.isArray(data)) {
            await collection.insertMany(data);
        } else {
            await collection.insertOne(data);
        }

        // Save to PostgreSQL
        const query = `
            INSERT INTO api_trends(source_type, access_method, data_format, extracted_data)
            VALUES($1, $2, $3, $4)
        `;
        const serializedData = JSON.stringify(data);
        await pgClient.query(query, ["API", "GET", "JSON", serializedData]);

        logging.info(`Data successfully saved from: ${apiUrl}`);
    } catch (error) {
        logging.error(`API Error (${apiUrl}): ${error.message}`);
    }
}

async function main() {
    // Connect to MySQL
    const mysqlConn = await connectMySQL();

    // Fetch active sources
    const activeUrls = await getActiveSources(mysqlConn);

    // Connect to MongoDB
    const mongoClient = await connectMongoDB();

    // Connect to PostgreSQL
    const pgClient = await connectPostgres();

    // Fetch API data and save
    for (const url of activeUrls) {
        await fetchApiData(url, mongoClient, pgClient);
    }

    // Close connections
    await mysqlConn.end();
    await pgClient.end();
    await mongoClient.close();
}

main().catch((error) => logging.error(`Error in main: ${error.message}`));
