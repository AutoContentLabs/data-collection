CREATE DATABASE social_media_interactions;
CREATE DATABASE weather_data;

-- Instagram interaction example
USE social_media_interactions;
CREATE RETENTION POLICY "one_year" ON social_media_interactions DURATION 365d REPLICATION 1 DEFAULT;
INSERT INTO instagram_interactions (time, user, likes, comments, category) VALUES (now(), 'user123', 150, 10, 'fashion');

-- Weather data example
USE weather_data;
CREATE RETENTION POLICY "one_year" ON weather_data DURATION 365d REPLICATION 1 DEFAULT;
INSERT INTO weather_measurements (time, location, temperature, humidity) VALUES (now(), 'New York', 22.5, 60);
