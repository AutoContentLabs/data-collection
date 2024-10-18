-- Veri Kaynakları tablosu
CREATE TABLE sources (
    -- Kaynak ID
    source_id INT AUTO_INCREMENT PRIMARY KEY,
    -- Kaynağın adı
    source_name VARCHAR(255) NOT NULL UNIQUE,
    -- Kaynak Dili
    source_language ENUM('ENG', 'TUR' ) NOT NULL,  
    -- Kaynak Coğrafyası
    source_geo ENUM('US', 'TR' ) NOT NULL,  
    -- Kaynak türü
    source_type ENUM('Manual', 'Web' , 'RSS', 'API',  'Database' ) NOT NULL,
    -- Erişim metodu
    access_method ENUM('GET', 'POST', 'WebSocket', 'FTP') NOT NULL,
    -- Veri türü
    data_type ENUM('Text', 'CSV', 'XML', 'HTML', 'JSON' ) NOT NULL,

    -- Kaynağın URL'si
    source_url VARCHAR(255) NOT NULL,

    -- Güvenilirlik skoru -- Örneğin, 0.00 ile 1.00 arasında
    reliability_score DECIMAL(3, 2),
    -- Tazelik skoru -- Örneğin, 0.00 ile 1.00 arasında
    freshness_score DECIMAL(3, 2), 

    -- Kaynağın aktif olup olmadığı
    is_active BOOLEAN DEFAULT TRUE,
    
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

    );

-- Veri Kaynakları
INSERT INTO sources (source_name, source_language, source_geo, source_type, access_method, data_type,  source_url, reliability_score, freshness_score, is_active) VALUES
('Google Trends (Web)', 'ENG', 'US', 'Web', 'GET', 'HTML', 'https://trends.google.com/trending?geo=US', 0.90, 0.95, TRUE);
