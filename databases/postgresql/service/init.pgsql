-- Veri kaynakları tabloları (trend verileri, haberler, sosyal medya içerikleri vb.)
-- Table: google_trends
CREATE TABLE google_trends (
    id SERIAL PRIMARY KEY,
    trend_name VARCHAR(255),
    search_volume INT,
    location VARCHAR(100),
    category VARCHAR(100),
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table: youtube_trending
CREATE TABLE youtube_trending (
    id SERIAL PRIMARY KEY,
    video_title VARCHAR(255),
    channel_name VARCHAR(255),
    view_count INT,
    like_count INT,
    comment_count INT,
    category VARCHAR(100),
    upload_date DATE,
    trending_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table: twitter_trends
CREATE TABLE twitter_trends (
    id SERIAL PRIMARY KEY,
    trend_name VARCHAR(255),
    tweet_volume INT,
    location VARCHAR(100),
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table: reddit_news
CREATE TABLE reddit_news (
    id SERIAL PRIMARY KEY,
    post_title VARCHAR(255),
    subreddit VARCHAR(100),
    post_score INT,
    comments_count INT,
    post_date DATE,
    trending_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table: cryptocurrency_trends
CREATE TABLE cryptocurrency_trends (
    id SERIAL PRIMARY KEY,
    crypto_name VARCHAR(100),
    price DECIMAL(18, 8),
    market_cap DECIMAL(18, 8),
    volume_24h DECIMAL(18, 8),
    last_updated TIMESTAMP
);

-- Table: instagram_explore
CREATE TABLE instagram_explore (
    id SERIAL PRIMARY KEY,
    post_id VARCHAR(100),
    user_name VARCHAR(255),
    post_likes INT,
    post_comments INT,
    category VARCHAR(100),
    post_date DATE,
    trending_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table: pinterest_trends
CREATE TABLE pinterest_trends (
    id SERIAL PRIMARY KEY,
    trend_name VARCHAR(255),
    trend_volume INT,
    category VARCHAR(100),
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table: amazon_best_sellers
CREATE TABLE amazon_best_sellers (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(255),
    product_category VARCHAR(100),
    rank INT,
    price DECIMAL(10, 2),
    review_count INT,
    rating DECIMAL(3, 2),
    last_updated TIMESTAMP
);

-- Table: weather_data (OpenWeatherMap)
CREATE TABLE weather_data (
    id SERIAL PRIMARY KEY,
    location VARCHAR(100),
    temperature DECIMAL(5, 2),
    humidity INT,
    wind_speed DECIMAL(5, 2),
    weather_condition VARCHAR(100),
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
