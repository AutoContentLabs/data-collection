-- Veri Kaynakları Ekleme

INSERT INTO sources (source_name, source_language, source_geo, source_type, access_method, data_type, source_url, reliability_score, freshness_score, is_active) VALUES
('Google Trends (Web)', 'ENG', 'Global', 'Web', 'GET', 'HTML', 'https://trends.google.com/trending?geo=US', 0.90, 0.95, TRUE);

-- Twitter dünyanın her yerinde popüler konuları ve hashtag'leri sağlar.
INSERT INTO sources (source_name, source_language, source_geo, source_type, access_method, data_type, source_url, reliability_score, freshness_score, is_active) VALUES
('Twitter Trends API', 'ENG', 'Global', 'API', 'GET', 'JSON', 'https://api.twitter.com/1.1/trends/place.json', 0.85, 0.90, TRUE);

-- YouTube dünya çapında en popüler videoları sağlar.
INSERT INTO sources (source_name, source_language, source_geo, source_type, access_method, data_type, source_url, reliability_score, freshness_score, is_active) VALUES
('YouTube Trending Videos', 'ENG', 'Global', 'Web', 'GET', 'HTML', 'https://www.youtube.com/feed/trending', 0.87, 0.92, TRUE);

-- Reddit popüler tartışmaları ve konuları sağlar.
INSERT INTO sources (source_name, source_language, source_geo, source_type, access_method, data_type, source_url, reliability_score, freshness_score, is_active) VALUES
('Reddit Trending API', 'ENG', 'Global', 'API', 'GET', 'JSON', 'https://www.reddit.com/api/trending_subreddits', 0.80, 0.88, TRUE);

-- TikTok, genç kitleler için çok popüler trendler sağlar.
INSERT INTO sources (source_name, source_language, source_geo, source_type, access_method, data_type, source_url, reliability_score, freshness_score, is_active) VALUES
('TikTok Trends', 'ENG', 'Global', 'Web', 'GET', 'HTML', 'https://www.tiktok.com/trending', 0.83, 0.89, TRUE);

-- Instagram'ın popüler içerikleri ve hashtag'leri.
INSERT INTO sources (source_name, source_language, source_geo, source_type, access_method, data_type, source_url, reliability_score, freshness_score, is_active) VALUES
('Instagram Trends', 'ENG', 'Global', 'Web', 'GET', 'HTML', 'https://www.instagram.com/explore/tags/trending/', 0.82, 0.87, TRUE);

-- Dünya çapındaki haber kaynaklarını tarar.
INSERT INTO sources (source_name, source_language, source_geo, source_type, access_method, data_type, source_url, reliability_score, freshness_score, is_active) VALUES
('NewsAPI Trending News', 'ENG', 'Global', 'API', 'GET', 'JSON', 'https://newsapi.org/v2/top-headlines', 0.92, 0.96, TRUE);

-- Pinterest platformu üzerinde popüler görsel içerikler sağlar.
INSERT INTO sources (source_name, source_language, source_geo, source_type, access_method, data_type, source_url, reliability_score, freshness_score, is_active) VALUES
('Pinterest Trends', 'ENG', 'Global', 'Web', 'GET', 'HTML', 'https://www.pinterest.com/trending/', 0.78, 0.85, TRUE);

-- Bing arama motoru üzerinden popüler aramaları ve trendleri sağlar.
INSERT INTO sources (source_name, source_language, source_geo, source_type, access_method, data_type, source_url, reliability_score, freshness_score, is_active) VALUES
('Bing Trends', 'ENG', 'Global', 'Web', 'GET', 'HTML', 'https://www.bing.com/explore?q=trending', 0.85, 0.90, TRUE);

-- Çin'in en büyük sosyal medya platformlarından biri olan Weibo'nun trend verilerini sağlar.
INSERT INTO sources (source_name, source_language, source_geo, source_type, access_method, data_type, source_url, reliability_score, freshness_score, is_active) VALUES
('Weibo Trends', 'CHI', 'China', 'Web', 'GET', 'HTML', 'https://www.weibo.com/trending', 0.90, 0.93, TRUE);

-- Kripto para dünyasındaki en popüler kripto paraları takip eder.
INSERT INTO sources (source_name, source_language, source_geo, source_type, access_method, data_type, source_url, reliability_score, freshness_score, is_active) VALUES
('CoinGecko Trending Coins', 'ENG', 'Global', 'API', 'GET', 'JSON', 'https://www.coingecko.com/en/trending-coins', 0.88, 0.92, TRUE);

-- Kapsamlı haber kaynağı ile trend analizleri sunar.
INSERT INTO sources (source_name, source_language, source_geo, source_type, access_method, data_type, source_url, reliability_score, freshness_score, is_active) VALUES
('GNews API', 'ENG', 'Global', 'API', 'GET', 'JSON', 'https://gnews.io/docs/', 0.87, 0.91, TRUE);

-- Profesyonel dünyada öne çıkan trendleri sunar.
INSERT INTO sources (source_name, source_language, source_geo, source_type, access_method, data_type, source_url, reliability_score, freshness_score, is_active) VALUES
('LinkedIn Trends', 'ENG', 'Global', 'Web', 'GET', 'HTML', 'https://www.linkedin.com/today/trending/', 0.84, 0.88, TRUE);

-- Web trafiği ve internet üzerindeki trendleri izler.
INSERT INTO sources (source_name, source_language, source_geo, source_type, access_method, data_type, source_url, reliability_score, freshness_score, is_active) VALUES
('Cloudflare Radar', 'ENG', 'Global', 'Web', 'GET', 'HTML', 'https://radar.cloudflare.com/', 0.85, 0.89, TRUE);

-- En popüler yazılım projelerini ve repo trendlerini takip eder.
INSERT INTO sources (source_name, source_language, source_geo, source_type, access_method, data_type, source_url, reliability_score, freshness_score, is_active) VALUES
('GitHub Trending Repositories', 'ENG', 'Global', 'Web', 'GET', 'HTML', 'https://github.com/trending', 0.88, 0.93, TRUE);

-- Amazon'da en popüler kitapları listeler.
INSERT INTO sources (source_name, source_language, source_geo, source_type, access_method, data_type, source_url, reliability_score, freshness_score, is_active) VALUES
('Amazon Bestsellers (Books)', 'ENG', 'Global', 'Web', 'GET', 'HTML', 'https://www.amazon.com/best-sellers-books-Amazon/zgbs/books', 0.85, 0.90, TRUE);

-- Spotify üzerindeki en popüler şarkıları listeler.
INSERT INTO sources (source_name, source_language, source_geo, source_type, access_method, data_type, source_url, reliability_score, freshness_score, is_active) VALUES
('Spotify Trending Music', 'ENG', 'Global', 'Web', 'GET', 'HTML', 'https://charts.spotify.com/', 0.90, 0.94, TRUE);
