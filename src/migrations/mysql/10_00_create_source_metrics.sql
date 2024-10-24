CREATE TABLE source_metrics (
    source_metric_id INT AUTO_INCREMENT PRIMARY KEY,
    source_id INT NOT NULL,
    -- Reliability score (0.00 to 1.00, e.g., 0.85)
    source_metric_reliability_score DECIMAL(3, 2),
    -- Freshness score (0.00 to 1.00, e.g., 0.90) 
    source_metric_freshness_score DECIMAL(3, 2),
    -- Timestamp of the last usage [ UTC Z timezone]
    source_metric_measured_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
