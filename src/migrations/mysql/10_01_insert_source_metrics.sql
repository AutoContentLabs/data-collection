-- INSERT INTO source_metrics: This command specifies that we are adding new records to the source_metrics table.

-- (source_id, source_metric_reliability_score, source_metric_freshness_score, source_metric_measured_at): This lists the columns that we will be inserting values into. The source_metric_id column does not need a value since it is an AUTO_INCREMENT field.

-- VALUES: This keyword introduces the actual data being inserted.

-- (1, 0.85, 0.90, CURRENT_TIMESTAMP): Each set of parentheses represents a new row of data to be inserted:

-- source_id: The ID of the associated source.
-- source_metric_reliability_score: The reliability score for the source.
-- source_metric_freshness_score: The freshness score for the source.
-- source_metric_measured_at: The timestamp when the metric was measured (defaulting to the current timestamp).

-- INSERT INTO source_metrics (source_id, source_metric_reliability_score, source_metric_freshness_score, source_metric_measured_at) VALUES
-- (1, 0.85, 0.90, CURRENT_TIMESTAMP),
-- (2, 0.88, 0.92, CURRENT_TIMESTAMP),
-- (3, 0.75, 0.80, CURRENT_TIMESTAMP),
-- (4, 0.90, 0.95, CURRENT_TIMESTAMP),
-- (5, 0.82, 0.85, CURRENT_TIMESTAMP);
