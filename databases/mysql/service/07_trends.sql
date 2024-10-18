-- Trendler Tablosu
CREATE TABLE trends (
    trend_id INT AUTO_INCREMENT PRIMARY KEY,
    source_id INT NOT NULL,
    category_id INT,
    subcategory_id INT,
    trend_title VARCHAR(255) NOT NULL,
    trend_description TEXT,
    trend_data JSON NOT NULL,
    start_date DATE,  -- Trendin başlangıç tarihi
    end_date DATE,    -- Trendin bitiş tarihi
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (source_id) REFERENCES sources(source_id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES categories(category_id) ON DELETE SET NULL,
    FOREIGN KEY (subcategory_id) REFERENCES subcategories(subcategory_id) ON DELETE SET NULL
);