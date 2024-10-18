-- Trendler Ekleme
INSERT INTO trends (source_id, category_id, subcategory_id, trend_title, trend_description, trend_data, start_date, end_date) VALUES
(
    1,  -- kaynak id
    3,  -- kategori id
    1,  -- alt kategori id
    'AI in Healthcare',  -- trend başlığı
    'Exploring the impact of AI technologies in the healthcare industry.',  -- trend açıklaması
    JSON_OBJECT('keywords', JSON_ARRAY('AI', 'Healthcare', 'Machine Learning'), 'search_volume', 10000),  -- trend verileri
    '2024-01-01',  -- trendin başlangıç tarihi
    '2024-12-31'   -- trendin bitiş tarihi
);