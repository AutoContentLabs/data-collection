CREATE TABLE source_metrics (
    source_metric_id INT AUTO_INCREMENT PRIMARY KEY,
    source_id INT NOT NULL,
    source_metric_reliability_score DECIMAL(3, 2),
    source_metric_freshness_score DECIMAL(3, 2),
    source_metric_measured_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
