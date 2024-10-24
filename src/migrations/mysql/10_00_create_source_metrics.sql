CREATE TABLE source_metrics (
    source_metric_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each metric entry
    source_id INT NOT NULL, -- Identifier for the source associated with the metrics
    source_metric_reliability_score DECIMAL(3, 2), -- Reliability score ranging from 0.00 to 1.00
    source_metric_freshness_score DECIMAL(3, 2), -- Freshness score ranging from 0.00 to 1.00
    source_metric_measured_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Timestamp of when the metric was measured
);
