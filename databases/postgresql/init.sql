CREATE TABLE IF NOT EXISTS trend_data (
    id SERIAL PRIMARY KEY,
    keyword VARCHAR(255),
    search_volume INT,
    collected_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
