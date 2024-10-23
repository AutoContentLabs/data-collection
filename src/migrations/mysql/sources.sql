CREATE TABLE sources (
    source_id INT AUTO_INCREMENT PRIMARY KEY,
    source_name VARCHAR(100) NOT NULL
    language_code CHAR(2) NOT NULL,
    language_name VARCHAR(50) NOT NULL,
    category_name VARCHAR(100) NOT NULL, 
    subcategory_name VARCHAR(100), 
    country_code CHAR(2),
    country_name VARCHAR(100), 
    region_code CHAR(2),
    region_name VARCHAR(100), 
    source_type VARCHAR(50) NOT NULL, 
    source_access_method VARCHAR(50) NOT NULL,
    source_data_type VARCHAR(50) NOT NULL,
    source_domain VARCHAR(255),
    source_query VARCHAR(255), 
    source_reliability_score DECIMAL(3, 2), 
    source_freshness_score DECIMAL(3, 2),
    source_is_active BOOLEAN DEFAULT FALSE, 
    source_last_used TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);