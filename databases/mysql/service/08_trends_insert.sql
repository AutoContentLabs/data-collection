-- Trendler
INSERT INTO trends (source_id, category_id, subcategory_id, trend_title, trend_description, trend_data) VALUES
(
    -- kaynak id
    1,
    -- kategori id
    3,
    -- alt kategori
    1 ,
    -- trend başlığı
    'AI in Healthcare',
    -- trend açıklaması
    'Exploring the impact of AI technologies in the healthcare industry.',
    -- trend data -- JSON formatında veriler
    JSON_OBJECT('keywords', JSON_ARRAY('AI', 'Healthcare', 'Machine Learning'), 'search_volume', 10000)  
);
