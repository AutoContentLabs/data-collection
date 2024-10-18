-- Bu tablo, güvenilirlik ve tazelik skorlarının zaman içinde nasıl değiştiğini izlemeye yardımcı olur.
CREATE TABLE source_metrics (
    metric_id INT AUTO_INCREMENT PRIMARY KEY,
    source_id INT,
    reliability_score DECIMAL(3, 2),
    freshness_score DECIMAL(3, 2),
    measured_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (source_id) REFERENCES sources(source_id)
);
