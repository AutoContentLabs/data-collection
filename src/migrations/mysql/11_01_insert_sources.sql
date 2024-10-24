INSERT INTO sources (
    source_name, 
    source_description, 
    language_code, 
    language_name, 
    category_name, 
    subcategory_name, 
    source_tags, 
    country_code, 
    country_name, 
    region_code, 
    region_name, 
    source_domain, 
    source_query, 
    source_access_method, 
    source_type, 
    source_access_type, 
    source_data_format, 
    source_data_structure_type, 
    source_data_structure_category, 
    source_time_interval, 
    source_metric_reliability_score, 
    source_metric_freshness_score, 
    source_metric_measured_at, 
    source_status
) VALUES (
    'Google Trends', 
    'Provides trending topics and search trends across various regions, offering insights into public interest.', 
    'TR',   
    'Turkish', 
    'Human Society and Culture',  
    'Social Media and Communication',  
    'google, trends, popularity', 
    'TR', 
    'Turkey', 
    'ME', 
    'Middle East', 
    'trends.google.com', 
    '/trending/rss?geo=TR', 
    'free', 
    'web', 
    'api', 
    'xml', 
    'real_time', 
    'social_media_data', 
    'real_time', 
    0.90, 
    0.95, 
    CURRENT_TIMESTAMP, 
    'active'
);

INSERT INTO sources (
    source_name, 
    source_description, 
    language_code, 
    language_name, 
    category_name, 
    subcategory_name, 
    source_tags, 
    country_code, 
    country_name, 
    region_code, 
    region_name, 
    source_domain, 
    source_query, 
    source_access_method, 
    source_type, 
    source_access_type, 
    source_data_format, 
    source_data_structure_type, 
    source_data_structure_category, 
    source_time_interval, 
    source_metric_reliability_score, 
    source_metric_freshness_score, 
    source_metric_measured_at, 
    source_status
) VALUES (
    'Open Meteo', 
    'Offers weather forecasts and historical data, accessible via API for various global locations.', 
    'TR', 
    'Turkish',
    'The Universe and Natural World',
    'Meteorology',
    'weather, forecast, climate', 
    'TR', 
    'Turkey', 
    'ME', 
    'Middle East', 
    'api.open-meteo.com', 
    '/v1/forecast?latitude=39.9334&longitude=32.8597&hourly=temperature_2m', 
    'open_access', 
    'api', 
    'json', 
    'time_series', 
    'meteorological_data', 
    'hourly', 
    0.95, 
    0.98, 
    CURRENT_TIMESTAMP, 
    'active'
);
