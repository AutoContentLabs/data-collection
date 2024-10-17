CREATE TABLE IF NOT EXISTS trend_data (
    keyword String,
    search_volume UInt32,
    collected_at DateTime
) ENGINE = MergeTree() ORDER BY collected_at;
