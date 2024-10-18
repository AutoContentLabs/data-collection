-- Veri Kaynakları tablosu
CREATE TABLE sources (
    source_id INT AUTO_INCREMENT PRIMARY KEY,
    source_name VARCHAR(255) NOT NULL UNIQUE,
    source_language ENUM('ENG', 'CHI' ) NOT NULL,
    source_geo ENUM('Global', 'China' ) NOT NULL,
    source_type ENUM('Manual', 'Web' , 'RSS', 'API',  'Database' ) NOT NULL,
    access_method ENUM('GET', 'POST', 'WebSocket', 'FTP') NOT NULL,
    data_type ENUM('Text', 'CSV', 'XML', 'HTML', 'JSON' ) NOT NULL,
    source_url VARCHAR(255) NOT NULL,
    reliability_score DECIMAL(3, 2),
    freshness_score DECIMAL(3, 2), 
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);