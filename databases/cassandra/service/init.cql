-- Keyspace: trending_data
CREATE KEYSPACE IF NOT EXISTS trending_data WITH replication = {
  'class': 'SimpleStrategy',
  'replication_factor': '3'
};

-- Table: twitter_trends (distributed across nodes)
CREATE TABLE IF NOT EXISTS trending_data.twitter_trends (
    trend_name TEXT,
    tweet_volume INT,
    location TEXT,
    date TIMESTAMP,
    PRIMARY KEY (location, date)
);

-- Table: reddit_trends
CREATE TABLE IF NOT EXISTS trending_data.reddit_trends (
    post_title TEXT,
    subreddit TEXT,
    post_score INT,
    comments_count INT,
    post_date TIMESTAMP,
    PRIMARY KEY (subreddit, post_date)
);

-- Table: cryptocurrency_data
CREATE TABLE IF NOT EXISTS trending_data.cryptocurrency_data (
    crypto_name TEXT,
    price DECIMAL,
    market_cap DECIMAL,
    volume_24h DECIMAL,
    last_updated TIMESTAMP,
    PRIMARY KEY (crypto_name, last_updated)
);
