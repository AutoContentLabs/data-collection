-- INSERT INTO collections (source_data_structure_type, source_data_structure_category, source, data, collection_data) VALUES
-- ('time_series', 'meteorological_data', '{"source_name": "Open Meteo", "source_id": 1}', 
-- '[
--     {"timestamp": "2024-10-01T00:00:00Z", "value": 22.5},
--     {"timestamp": "2024-10-02T00:00:00Z", "value": 21.7},
--     {"timestamp": "2024-10-03T00:00:00Z", "value": 23.1}
-- ]', 'Daily temperature readings for October 2024.'),
-- ('real_time', 'social_media_data', '{"source_name": "Twitter", "source_id": 2}', 
-- '[
--     {"platform": "Twitter", "metric": "Live Tweet Count", "value": 1500, "timestamp": "2024-10-24T12:00:00Z"},
--     {"platform": "Stock Market", "metric": "Current Price - XYZ Corp", "value": 145.00, "timestamp": "2024-10-24T12:00:00Z"}
-- ]', 'Real-time engagement data from social media.'),
-- ('historical', 'economic_data', '{"source_name": "Market Analysis", "source_id": 3}', 
-- '[
--     {"event": "Stock Price - XYZ Corp", "value": 120.50, "date": "2023-10-24"},
--     {"event": "Unemployment Rate", "value": 7.2, "date": "2023-10-01"}
-- ]', 'Historical economic indicators for analysis.');

INSERT INTO collections (
    source_data_structure_type, 
    source_data_structure_category, 
    source, 
    data, 
    collection_data
) VALUES (
    'real_time', 
    'social_media_data', 
    '{"source_name": "Google Trends", "source_id": LAST_INSERT_ID()}', 
    '[
        {"topic": "Küresel Isınma", "interest": 75, "timestamp": "2024-10-24T12:00:00Z"},
        {"topic": "Yapay Zeka", "interest": 80, "timestamp": "2024-10-24T12:00:00Z"},
        {"topic": "Türkiye Ekonomisi", "interest": 65, "timestamp": "2024-10-24T12:00:00Z"}
    ]', 
    'Real-time trending topics in Turkey from Google Trends.'
);

INSERT INTO collections (
    source_data_structure_type, 
    source_data_structure_category, 
    source, 
    data, 
    collection_data
) VALUES (
    'time_series', 
    'meteorological_data', 
    '{"source_name": "Open Meteo", "source_id": LAST_INSERT_ID()}', 
    '[
        {"timestamp": "2024-10-24T08:00:00Z", "temperature": 15.3},
        {"timestamp": "2024-10-24T09:00:00Z", "temperature": 16.1},
        {"timestamp": "2024-10-24T10:00:00Z", "temperature": 17.8},
        {"timestamp": "2024-10-24T11:00:00Z", "temperature": 18.5},
        {"timestamp": "2024-10-24T12:00:00Z", "temperature": 19.2}
    ]', 
    'Hourly temperature readings for Ankara from Open Meteo.'
);
