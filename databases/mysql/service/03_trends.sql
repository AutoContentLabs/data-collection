-- Trendler Tablosu
CREATE TABLE trends (
    
    trend_id INT AUTO_INCREMENT PRIMARY KEY,
    
    -- Kaynağın ID'si
    source_id INT NOT NULL,
    
    -- Trendin kategorisi
    category_id INT,
    
    -- Trendin Alt kategorisi
    subcategory_id INT,
    
    -- Trendin başlığı
    trend_title VARCHAR(255) NOT NULL,
    
    -- Trend hakkında açıklama
    trend_description TEXT,
    
    -- Trend verileri (örn. ilgili anahtar kelimeler, arama hacmi)
    trend_data JSON NOT NULL,
    
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    -- Kaynakla ilişkilendirme
    FOREIGN KEY (source_id) REFERENCES sources(source_id),
    -- Kategori ile ilişkilendirme
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    -- Alt Kategori ile ilişkilendirme
    FOREIGN KEY (subcategory_id) REFERENCES subcategories(subcategory_id)
    );

-- Trendler
INSERT INTO trends (source_id, category_id, subcategory_id, trend_title, trend_description, trend_data) VALUES
(
    -- kaynak id
    1,
    -- kategori id
    3,
    -- alt kategori
    1 ,
    -- trend başlığı
    'AI in Healthcare',
    -- trend açıklaması
    'Exploring the impact of AI technologies in the healthcare industry.',
    -- trend data -- JSON formatında veriler
    JSON_OBJECT('keywords', JSON_ARRAY('AI', 'Healthcare', 'Machine Learning'), 'search_volume', 10000)  
);
