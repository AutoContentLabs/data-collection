import requests
from motor.motor_asyncio import AsyncIOMotorClient
import psycopg2
import asyncio
import aiomysql
import json
import os
import logging
from bson import ObjectId
import cryptography

# Logging configuration
logging.basicConfig(
    level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s"
)

# Database connection details
MONGO_DB_HOST_NAME = os.getenv("MONGO_DB_HOST_NAME", "localhost")
MONGO_DB_HOST_PORT = int(os.getenv("MONGO_DB_HOST_PORT", 27017))
MONGO_DB_NAME = os.getenv("MONGO_DB_NAME", "trend_db")
MONGO_DB_USERNAME = os.getenv("MONGO_DB_USERNAME", "mongoadmin")
MONGO_DB_PASSWORD = os.getenv("MONGO_DB_PASSWORD", "strongpassword123")

POSTGRES_DB_HOST_NAME = os.getenv("POSTGRES_DB_HOST_NAME", "localhost")
POSTGRES_DB_HOST_PORT = int(os.getenv("POSTGRES_DB_HOST_PORT", 5432))
POSTGRES_DB_NAME = os.getenv("POSTGRES_DB_NAME", "trend_db")
POSTGRES_USER = os.getenv("POSTGRES_USER", "postgresadmin")
POSTGRES_PASSWORD = os.getenv("POSTGRES_PASSWORD", "securepassword456")

MYSQL_DB_HOST_NAME = os.getenv("MYSQL_DB_HOST_NAME", "localhost")
MYSQL_DB_HOST_PORT = int(os.getenv("MYSQL_DB_HOST_PORT", 3306))
MYSQL_DB_NAME = os.getenv("MYSQL_DB_NAME", "data_sources_db")
MYSQL_USER = os.getenv("MYSQL_USER", "my_user")
MYSQL_PASSWORD = os.getenv("MYSQL_PASSWORD", "my_password")

# Read retries from environment variables
MYSQL_RETRIES = int(os.getenv("MYSQL_RETRIES", 60))
MONGODB_RETRIES = int(os.getenv("MONGODB_RETRIES", 60))
POSTGRES_RETRIES = int(os.getenv("POSTGRES_RETRIES", 60))

async def connect_mysql():
    
    for attempt in range(MYSQL_RETRIES):
        try:
            logging.info("Connecting to MySQL database...")
            connection = await aiomysql.connect(
                host=MYSQL_DB_HOST_NAME,
                port=MYSQL_DB_HOST_PORT,
                user=MYSQL_USER,
                password=MYSQL_PASSWORD,
                db=MYSQL_DB_NAME,
            )
            logging.info("Connected to MySQL successfully.")
            return connection
        except Exception as e:
            logging.error(
                f"MySQL Connection Error (Attempt {attempt + 1}/{MYSQL_RETRIES}): {e}"
            )
            await asyncio.sleep(2)
    raise Exception("Could not connect to MySQL after multiple attempts.")

async def connect_mongodb():

    for attempt in range(MONGODB_RETRIES):
        try:
            logging.info("Connecting to MongoDB database...")
            mongo_client = AsyncIOMotorClient(
                f"mongodb://{MONGO_DB_USERNAME}:{MONGO_DB_PASSWORD}@{MONGO_DB_HOST_NAME}:{MONGO_DB_HOST_PORT}/"
            )
            await mongo_client.admin.command("ping")
            logging.info("Connected to MongoDB successfully.")
            return mongo_client
        except Exception as e:
            logging.error(
                f"MongoDB Connection Error (Attempt {attempt + 1}/{MONGODB_RETRIES}): {e}"
            )
            await asyncio.sleep(2)
    raise Exception("Could not connect to MongoDB after multiple attempts.")

async def connect_postgres():

    for attempt in range(POSTGRES_RETRIES):
        try:
            logging.info("Connecting to PostgreSQL database...")
            connection = await asyncio.to_thread(psycopg2.connect,
                host=POSTGRES_DB_HOST_NAME,
                port=POSTGRES_DB_HOST_PORT,
                database=POSTGRES_DB_NAME,
                user=POSTGRES_USER,
                password=POSTGRES_PASSWORD,
            )
            logging.info("Connected to PostgreSQL successfully.")
            return connection
        except Exception as e:
            logging.error(
                f"PostgreSQL Connection Error (Attempt {attempt + 1}/{POSTGRES_RETRIES}): {e}"
            )
            await asyncio.sleep(2)
    raise Exception("Could not connect to PostgreSQL after multiple attempts.")

async def get_active_sources(mysql_conn):
   
    for attempt in range(MYSQL_RETRIES):
        try:
            async with mysql_conn.cursor() as cursor:
                await cursor.execute(
                    "SELECT source_url FROM sources WHERE is_active = TRUE"
                )
                rows = await cursor.fetchall()
                logging.info("Active sources fetched successfully.")
                return [row[0] for row in rows]
        except Exception as e:
            logging.error(f"MySQL Query Error (Attempt {attempt + 1}/{MYSQL_RETRIES}): {e}")
            await asyncio.sleep(2)
    raise Exception("Could not fetch active sources after multiple attempts.")

def serialize(data):
    if isinstance(data, dict):
        return {k: serialize(v) for k, v in data.items()}
    elif isinstance(data, list):
        return [serialize(item) for item in data]
    elif isinstance(data, ObjectId):
        return str(data)  # Convert ObjectId to string
    return data


async def fetch_api_data(api_url, mongo_client, pg_conn):
    try:
        logging.info(f"Fetching data from API: {api_url}")
        response = requests.get(api_url)
        response.raise_for_status()  # Raise an error for bad responses
        data = response.json()

        # Save to MongoDB
        db = mongo_client[MONGO_DB_NAME]
        collection = db["api_data"]
        if isinstance(data, list):
            await collection.insert_many(data)
        else:
            await collection.insert_one(data)

        # Save to PostgreSQL
        with pg_conn.cursor() as cursor:
            query = """
            INSERT INTO api_trends(source_type, access_method, data_format, extracted_data)
            VALUES(%s, %s, %s, %s)
            """
            serialized_data = serialize(data)  # Serialize data here
            cursor.execute(query, ("API", "GET", "JSON", json.dumps(serialized_data)))
            pg_conn.commit()

        logging.info(f"Data successfully saved from: {api_url}")

    except Exception as e:
        logging.error(f"API Error ({api_url}): {e}")

async def main():
    # Connect to MySQL
    mysql_conn = await connect_mysql()

    # Fetch active sources
    active_urls = await get_active_sources(mysql_conn)

    # Connect to MongoDB
    mongo_client = await connect_mongodb()

    # Connect to PostgreSQL
    pg_conn = await connect_postgres()

    # Fetch API data and save
    for url in active_urls:
        await fetch_api_data(url, mongo_client, pg_conn)

    # Close connections
    mysql_conn.close()
    pg_conn.close()
    mongo_client.close()

if __name__ == "__main__":
    asyncio.run(main())
