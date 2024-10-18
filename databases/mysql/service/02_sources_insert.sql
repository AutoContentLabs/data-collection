-- Veri Kaynakları
INSERT INTO sources (source_name, source_language, source_geo, source_type, access_method, data_type,  source_url, reliability_score, freshness_score, is_active) VALUES
('Google Trends (Web)', 'ENG', 'US', 'Web', 'GET', 'HTML', 'https://trends.google.com/trending?geo=US', 0.90, 0.95, TRUE);