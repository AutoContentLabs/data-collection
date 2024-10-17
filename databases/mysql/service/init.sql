-- Veritabanı Oluşturma
CREATE DATABASE IF NOT EXISTS data_sources_db;
USE data_sources_db;

-- 1. Kategoriler tablosu
CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY, 
    category_name VARCHAR(100) NOT NULL, 
    description TEXT
);

-- 2. Veri Tipi tablosu: API, RSS, Web gibi veri türlerini normalleştirme
CREATE TABLE data_types (
    data_type_id INT AUTO_INCREMENT PRIMARY KEY, 
    data_type VARCHAR(100) NOT NULL, 
    description TEXT
);

-- 3. Erişim Yöntemi tablosu: Ücretsiz, ücretli gibi yöntemleri normalleştirme
CREATE TABLE access_methods (
    access_method_id INT AUTO_INCREMENT PRIMARY KEY, 
    method_name VARCHAR(100) NOT NULL, 
    description TEXT
);

-- 4. Güvenilirlik Seviyesi tablosu
CREATE TABLE reliability_levels (
    reliability_id INT AUTO_INCREMENT PRIMARY KEY,
    level VARCHAR(10) NOT NULL,
    description TEXT
);

-- 5. Güncellik tablosu
CREATE TABLE freshness_levels (
    freshness_id INT AUTO_INCREMENT PRIMARY KEY,
    freshness VARCHAR(20) NOT NULL,
    description TEXT
);

-- 6. Veri Kaynakları tablosu
CREATE TABLE data_sources (
    source_id INT AUTO_INCREMENT PRIMARY KEY, 
    source_name VARCHAR(255) NOT NULL, 
    source_url TEXT NOT NULL, 
    category_id INT NOT NULL, 
    data_type_id INT NOT NULL, 
    access_method_id INT NOT NULL,  
    reliability_id INT NOT NULL, 
    freshness_id INT NOT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    -- Yabancı anahtar tanımlamaları
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (data_type_id) REFERENCES data_types(data_type_id),
    FOREIGN KEY (access_method_id) REFERENCES access_methods(access_method_id),
    FOREIGN KEY (reliability_id) REFERENCES reliability_levels(reliability_id),
    FOREIGN KEY (freshness_id) REFERENCES freshness_levels(freshness_id)
);

-- 7. Örnek Veri Ekleme: Kategoriler
INSERT INTO categories (category_name, description) VALUES
    ('News', 'Sources providing news updates'),
    ('Social Media', 'Data from social media platforms'),
    ('Trends', 'Trending topics from various platforms'),
    ('Finance', 'Financial and economic data'),
    ('Entertainment', 'Movies, TV shows, and other entertainment data'),
    ('Technology & Science', 'Technological and scientific information'),
    ('Health & Medicine', 'Health-related data and medical research'),
    ('Sports', 'Sports updates and news'),
    ('E-commerce & Products', 'Product trends from e-commerce platforms'),
    ('Education & Research', 'Data for education and research purposes');

-- 8. Örnek Veri Ekleme: Veri Tipleri
INSERT INTO data_types (data_type, description) VALUES
    ('API', 'Application Programming Interface'),
    ('RSS', 'Really Simple Syndication'),
    ('Web', 'Web scraping or web-based data');

-- 9. Örnek Veri Ekleme: Erişim Yöntemleri
INSERT INTO access_methods (method_name, description) VALUES
    ('Free', 'No cost access'),
    ('Paid', 'Requires subscription or payment');

-- 10. Örnek Veri Ekleme: Güvenilirlik Seviyeleri
INSERT INTO reliability_levels (level, description) VALUES
    ('High', 'Reliable source with verified data'),
    ('Medium', 'Moderately reliable source'),
    ('Low', 'Source with low credibility');

-- 11. Örnek Veri Ekleme: Güncellik Seviyeleri
INSERT INTO freshness_levels (freshness, description) VALUES
    ('Continuous', 'Updated continuously'),
    ('Daily', 'Updated daily'),
    ('Weekly', 'Updated weekly');

-- 12. Örnek Veri Ekleme: Veri Kaynakları
INSERT INTO data_sources (source_name, source_url, category_id, data_type_id, access_method_id, reliability_id, freshness_id) VALUES
    ('BBC News', 'https://feeds.bbci.co.uk/news/rss.xml', 
    (SELECT category_id FROM categories WHERE category_name = 'News'),
    (SELECT data_type_id FROM data_types WHERE data_type = 'RSS'),
    (SELECT access_method_id FROM access_methods WHERE method_name = 'Free'),
    (SELECT reliability_id FROM reliability_levels WHERE level = 'High'),
    (SELECT freshness_id FROM freshness_levels WHERE freshness = 'Daily')),

    ('CoinGecko', 'https://www.coingecko.com/', 
    (SELECT category_id FROM categories WHERE category_name = 'Finance'),
    (SELECT data_type_id FROM data_types WHERE data_type = 'API'),
    (SELECT access_method_id FROM access_methods WHERE method_name = 'Free'),
    (SELECT reliability_id FROM reliability_levels WHERE level = 'High'),
    (SELECT freshness_id FROM freshness_levels WHERE freshness = 'Continuous')),

    ('YouTube Trending', 'https://www.youtube.com/feed/trending', 
    (SELECT category_id FROM categories WHERE category_name = 'Social Media'),
    (SELECT data_type_id FROM data_types WHERE data_type = 'Web'),
    (SELECT access_method_id FROM access_methods WHERE method_name = 'Free'),
    (SELECT reliability_id FROM reliability_levels WHERE level = 'Medium'),
    (SELECT freshness_id FROM freshness_levels WHERE freshness = 'Daily')),

    ('Amazon Bestsellers', 'https://www.amazon.com/', 
    (SELECT category_id FROM categories WHERE category_name = 'E-commerce & Products'),
    (SELECT data_type_id FROM data_types WHERE data_type = 'Web'),
    (SELECT access_method_id FROM access_methods WHERE method_name = 'Free'),
    (SELECT reliability_id FROM reliability_levels WHERE level = 'High'),
    (SELECT freshness_id FROM freshness_levels WHERE freshness = 'Weekly'));
