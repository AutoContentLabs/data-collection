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
-- SOURCE /docker-entrypoint-initdb.d/categories.sql;

-- 8. Örnek Veri Ekleme: Veri Tipleri
-- SOURCE /docker-entrypoint-initdb.d/data_types.sql;

-- 9. Örnek Veri Ekleme: Erişim Yöntemleri
-- SOURCE /docker-entrypoint-initdb.d/access_methods.sql;

-- 10. Örnek Veri Ekleme: Güvenilirlik Seviyeleri
-- SOURCE /docker-entrypoint-initdb.d/reliability_levels.sql;

-- 11. Örnek Veri Ekleme: Güncellik Seviyeleri
-- SOURCE /docker-entrypoint-initdb.d/freshness_levels.sql;

-- 12. Örnek Veri Ekleme: Veri Kaynakları
-- SOURCE /docker-entrypoint-initdb.d/data_sources.sql;
