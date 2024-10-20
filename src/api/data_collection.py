import requests
from motor.motor_asyncio import AsyncIOMotorClient  # Change to motor
import psycopg2
import asyncio
import aiomysql
import json


# MongoDB Access Information
MONGO_DB_HOST_NAME = "localhost"
MONGO_DB_HOST_PORT = 27017
MONGO_DB_NAME = "trend_db"
MONGO_DB_USERNAME = "mongoadmin"
MONGO_DB_PASSWORD = "strongpassword123"

# PostgreSQL Access Information
POSTGRES_DB_HOST_NAME = "localhost"
POSTGRES_DB_HOST_PORT = 5432
POSTGRES_DB_NAME = "trend_db"
POSTGRES_USER = "postgresadmin"
POSTGRES_PASSWORD = "securepassword456"

# MySQL Access Information
MYSQL_DB_HOST_NAME = "localhost"
MYSQL_DB_HOST_PORT = 3306
MYSQL_DB_NAME = "data_sources_db"
MYSQL_USER = "my_user"
MYSQL_PASSWORD = "my_password"


# MySQL connection for getting active sources
async def get_active_sources():
    async with aiomysql.connect(
        host=MYSQL_DB_HOST_NAME,
        port=MYSQL_DB_HOST_PORT,
        user=MYSQL_USER,
        password=MYSQL_PASSWORD,
        db=MYSQL_DB_NAME,
    ) as connection:
        async with connection.cursor() as cursor:
            await cursor.execute(
                "SELECT source_url FROM sources WHERE is_active = TRUE"
            )
            rows = await cursor.fetchall()
            return [row[0] for row in rows]


# Fetch API Data and save it to MongoDB and PostgreSQL
import json  # Make sure to import this at the top of your file

from bson import ObjectId


def serialize(data):
    if isinstance(data, dict):
        return {k: serialize(v) for k, v in data.items()}
    elif isinstance(data, list):
        return [serialize(item) for item in data]
    elif isinstance(data, ObjectId):
        return str(data)
    return data


async def fetch_api_data(api_url, mongo_client, pg_conn):
    try:
        response = requests.get(api_url)
        data = response.json()

        # Save to MongoDB
        db = mongo_client[MONGO_DB_NAME]
        collection = db["api_data"]

        if isinstance(data, list):
            await collection.insert_many(data)
        else:
            await collection.insert_one(data)

        # Serialize the data to handle ObjectId
        serialized_data = serialize(data)

        # Save to PostgreSQL
        with pg_conn.cursor() as cursor:
            query = """
            INSERT INTO api_trends(source_type, access_method, data_format, extracted_data)
            VALUES(%s, %s, %s, %s)
            """
            cursor.execute(query, ("API", "GET", "JSON", json.dumps(serialized_data)))
            pg_conn.commit()

        print(f"Data successfully saved: {api_url}")

    except Exception as e:
        print(f"API Error ({api_url}):", e)


# Main function
async def main():
    mongo_client = AsyncIOMotorClient(
        f"mongodb://{MONGO_DB_USERNAME}:{MONGO_DB_PASSWORD}@{MONGO_DB_HOST_NAME}:{MONGO_DB_HOST_PORT}/"
    )
    pg_conn = psycopg2.connect(
        host=POSTGRES_DB_HOST_NAME,
        port=POSTGRES_DB_HOST_PORT,
        database=POSTGRES_DB_NAME,
        user=POSTGRES_USER,
        password=POSTGRES_PASSWORD,
    )

    active_urls = await get_active_sources()

    for url in active_urls:
        await fetch_api_data(url, mongo_client, pg_conn)

    pg_conn.close()
    mongo_client.close()


# Run the main function
if __name__ == "__main__":
    asyncio.run(main())
