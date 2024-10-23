INSERT INTO sources (
    source_name, 
    language_code, 
    language_name, 
    category_name, 
    subcategory_name, 
    country_code, 
    country_name, 
    region_code, 
    region_name, 
    source_type, 
    source_access_method, 
    source_data_type, 
    source_domain, 
    source_query, 
    source_reliability_score, 
    source_freshness_score, 
    source_is_active
) VALUES
-- North America (NA)
('Google Trends (United States)', 'EN', 'English', 'Human Society and Culture', 'Modern History', 'US', 'United States', 'NA', 'North America', 'web', 'api', 'xml', 'trends.google.com', '/trending/rss?geo=US', 0.85, 0.90, TRUE),
('Open-Meteo (United States)', 'EN', 'English', 'The Universe and Natural World', 'Meteorology', 'US', 'United States', 'NA', 'North America', 'web', 'api', 'json', 'api.open-meteo.com', '/v1/forecast?latitude=37.7749&longitude=-122.4194&hourly=temperature_2m', 0.85, 0.90, TRUE),

-- South America (SA)
('Google Trends (Brazil)', 'PT', 'Portuguese', 'Human Society and Culture', 'Modern History', 'BR', 'Brazil', 'SA', 'South America', 'web', 'api', 'xml', 'trends.google.com', '/trending/rss?geo=BR', 0.85, 0.90, TRUE),
('Open-Meteo (Brazil)', 'PT', 'Portuguese', 'The Universe and Natural World', 'Meteorology', 'BR', 'Brazil', 'SA', 'South America', 'web', 'api', 'json', 'api.open-meteo.com', '/v1/forecast?latitude=-15.7801&longitude=-47.9292&hourly=temperature_2m', 0.85, 0.90, TRUE),

-- Europe (EU)
('Google Trends (Germany)', 'DE', 'German', 'Human Society and Culture', 'Modern History', 'DE', 'Germany', 'EU', 'Europe', 'web', 'api', 'xml', 'trends.google.com', '/trending/rss?geo=DE', 0.85, 0.90, TRUE),
('Open-Meteo (Germany)', 'DE', 'German', 'The Universe and Natural World', 'Meteorology', 'DE', 'Germany', 'EU', 'Europe', 'web', 'api', 'json', 'api.open-meteo.com', '/v1/forecast?latitude=52.5200&longitude=13.4050&hourly=temperature_2m', 0.85, 0.90, TRUE),

-- Asia (AS)
('Google Trends (India)', 'EN', 'English', 'Human Society and Culture', 'Modern History', 'IN', 'India', 'AS', 'Asia', 'web', 'api', 'xml', 'trends.google.com', '/trending/rss?geo=IN', 0.85, 0.90, TRUE),
('Open-Meteo (India)', 'EN', 'English', 'The Universe and Natural World', 'Meteorology', 'IN', 'India', 'AS', 'Asia', 'web', 'api', 'json', 'api.open-meteo.com', '/v1/forecast?latitude=20.5937&longitude=78.9629&hourly=temperature_2m', 0.85, 0.90, TRUE),

-- Africa (AF)
('Google Trends (Nigeria)', 'EN', 'English', 'Human Society and Culture', 'Modern History', 'NG', 'Nigeria', 'AF', 'Africa', 'web', 'api', 'xml', 'trends.google.com', '/trending/rss?geo=NG', 0.85, 0.90, TRUE),
('Open-Meteo (Nigeria)', 'EN', 'English', 'The Universe and Natural World', 'Meteorology', 'NG', 'Nigeria', 'AF', 'Africa', 'web', 'api', 'json', 'api.open-meteo.com', '/v1/forecast?latitude=9.0820&longitude=8.6753&hourly=temperature_2m', 0.85, 0.90, TRUE),

-- Oceania (OC)
('Google Trends (Australia)', 'EN', 'English', 'Human Society and Culture', 'Modern History', 'AU', 'Australia', 'OC', 'Oceania', 'web', 'api', 'xml', 'trends.google.com', '/trending/rss?geo=AU', 0.85, 0.90, TRUE),
('Open-Meteo (Australia)', 'EN', 'English', 'The Universe and Natural World', 'Meteorology', 'AU', 'Australia', 'OC', 'Oceania', 'web', 'api', 'json', 'api.open-meteo.com', '/v1/forecast?latitude=-25.2744&longitude=133.7751&hourly=temperature_2m', 0.85, 0.90, TRUE),

-- Middle East (ME)
('Google Trends (Turkey)', 'TR', 'Turkish', 'Human Society and Culture', 'Modern History', 'TR', 'Turkey', 'ME', 'Middle East', 'web', 'api', 'xml', 'trends.google.com', '/trending/rss?geo=TR', 0.85, 0.90, TRUE),
('Open-Meteo (Turkey)', 'TR', 'Turkish', 'The Universe and Natural World', 'Meteorology', 'TR', 'Turkey', 'ME', 'Middle East', 'web', 'api', 'json', 'api.open-meteo.com', '/v1/forecast?latitude=39.9334&longitude=32.8597&hourly=temperature_2m', 0.85, 0.90, TRUE),
