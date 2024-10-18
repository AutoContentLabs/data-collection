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

    -- Her trendin zaman içindeki değişimi için trendlerin başlangıç ve bitiş tarihleri
    start_date DATE,
    end_date DATE,
    
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    -- Kaynakla ilişkilendirme
    FOREIGN KEY (source_id) REFERENCES sources(source_id),
    -- Kategori ile ilişkilendirme
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    -- Alt Kategori ile ilişkilendirme
    FOREIGN KEY (subcategory_id) REFERENCES subcategories(subcategory_id)
    );
    