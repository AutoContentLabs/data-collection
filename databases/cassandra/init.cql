CREATE KEYSPACE IF NOT EXISTS my_keyspace WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

USE my_keyspace;

CREATE TABLE IF NOT EXISTS trend_data (
    id UUID PRIMARY KEY,
    keyword text,
    search_volume int,
    collected_at timestamp
);
