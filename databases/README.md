# Database Architecture Overview

This project uses a variety of databases, each selected to fulfill specific roles in our automated trend analysis, content generation, and publishing system. Below is an overview of each database, its purpose, and its initialization details.

## Database Summary

| Database     | Purpose                                                                 | Initialization Script                |
|--------------|-------------------------------------------------------------------------|--------------------------------------|
| **MongoDB**  | Storing unstructured and semi-structured data such as social media API and trend data. | `./databases/mongodb/service/init.js` |
| **PostgreSQL** | Structured data for detailed trend analysis and structured data queries. | `./databases/postgresql/service/init.pgsql` |
| **Cassandra** | Large-scale distributed data storage for handling vast datasets with high availability. | `./databases/cassandra/service/init.cql` |
| **ClickHouse** | Fast and efficient large-scale data analytics and reporting.           | `./databases/clickhouse/service/init.sql` |
| **Redis**     | Caching and fast data retrieval to optimize real-time queries.          | N/A                                  |
| **InfluxDB**  | Storing and analyzing time-series data such as social media engagement trends. | N/A                                  |
| **Elasticsearch** | Full-text search engine for trend and content recommendation systems. | N/A                                  |
| **Neo4j**     | Graph database for complex relationship and network analysis.           | N/A                                  |
| **HDFS (Hadoop)** | Distributed storage system for large datasets and historical data processing. | N/A                                  |
| **CouchDB**   | Document-based NoSQL database for flexible JSON-based data storage.     | N/A                                  |

---

## MongoDB

- **Purpose**: MongoDB is used for storing unstructured or semi-structured data, particularly for social media and trend data retrieved from various APIs.
- **Initialization**: The database is initialized with `mongo-init.js` which defines basic collections and indexes.
- **Data Schema**:
  - Collection: `trends`
    - Fields: `source`, `data`, `timestamp`
  - Collection: `social_media_data`
    - Fields: `platform`, `content`, `user`, `engagement`

---

## PostgreSQL

- **Purpose**: PostgreSQL serves as the relational database to manage structured and highly organized data. It is particularly useful for performing complex trend analyses.
- **Initialization**: The schema and initial tables are created using the `init.pgsql` script.
- **Data Schema**:
  - Table: `trends`
    - Columns: `id`, `source`, `trend_data`, `created_at`
  - Table: `users`
    - Columns: `id`, `username`, `email`, `created_at`

---

## Cassandra

- **Purpose**: Cassandra is used for managing large-scale datasets that require horizontal scaling and high availability. It's optimized for write-heavy operations.
- **Initialization**: The `init.cql` script is used to set up the keyspace and initial tables.
- **Data Schema**:
  - Keyspace: `trends_ks`
    - Table: `social_trends`
      - Columns: `platform`, `trend_id`, `data`, `timestamp`

---

## ClickHouse

- **Purpose**: ClickHouse is used for fast, real-time data analytics. It excels in high-speed data ingestion and complex queries on large datasets.
- **Initialization**: The `init.sql` script is used to set up the initial database and tables.
- **Data Schema**:
  - Table: `content_performance`
    - Columns: `content_id`, `views`, `likes`, `shares`, `timestamp`

---

## Redis

- **Purpose**: Redis is used as a caching layer to enhance system performance by storing frequently accessed data for quick retrieval.
- **Initialization**: No specific initialization script is needed as Redis is an in-memory store.

---

## InfluxDB

- **Purpose**: InfluxDB is used to store time-series data, such as real-time engagement metrics and social media interaction trends.
- **Initialization**: InfluxDB doesn't require a custom initialization script but can be configured using environment variables.

---

## Elasticsearch

- **Purpose**: Elasticsearch is a powerful search engine for querying large amounts of text data. It's used in the recommendation engine and trend analysis pipelines.
- **Initialization**: Elasticsearch does not need a specific initialization script; indices and mappings can be created on the fly as needed.

---

## Neo4j

- **Purpose**: Neo4j is used to manage and query graph-based relationships, making it ideal for analyzing complex connections between topics, users, and trends.
- **Initialization**: Initialization is handled via the environment variable `NEO4J_AUTH`, but no additional custom setup is required.

---

## HDFS (Hadoop)

- **Purpose**: HDFS is used to store large-scale datasets and for distributed processing. This is useful for managing historical trend data and large media files.
- **Initialization**: No custom initialization is required, as the Hadoop NameNode handles initial configurations.

---

## CouchDB

- **Purpose**: CouchDB is used for storing JSON documents in a NoSQL environment. It's highly flexible for unstructured data that needs to be queried via HTTP.
- **Initialization**: No custom initialization script is provided, but CouchDB uses basic environment variables for setup.
