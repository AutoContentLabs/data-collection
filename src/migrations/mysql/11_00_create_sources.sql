-- Purpose
-- This table is structured to provide comprehensive metadata about data sources, including their categorization, access methods, reliability, and more. It allows users to easily query and retrieve detailed information about each source for analysis or reporting purposes.
CREATE TABLE sources (
    -- Unique identifier for each source (e.g., 1, 2, 3)
    source_id INT AUTO_INCREMENT PRIMARY KEY,

    -- Name of the source (e.g., 'Google Trends (Middle East - Turkey)')
    source_name VARCHAR(255) NOT NULL,

    -- Source description (e.g., 'Open Meteo provides free weather data for Turkey.')
    source_description TEXT NULL,

    -- Language code (e.g., 'EN' for English, 'TR' for Turkish)
    language_code VARCHAR(5) NOT NULL,

    -- Full name of the language (e.g., 'English', 'Turkish')
    language_name VARCHAR(50) NOT NULL,

    -- Categories related to the source (e.g., 'Technology and Innovation')
    category_name VARCHAR(100) NOT NULL,

    -- Specific subcategories related to the main category (e.g., 'Artificial Intelligence')
    subcategory_name VARCHAR(100),

    -- Tags for categorization, allowing for specific keywords that enhance content discovery
    source_tags VARCHAR(255),  

    -- ISO code for the country (e.g., 'US', 'GB', 'TR')
    country_code CHAR(2),
    
    -- Full name of the country (e.g., 'United States of America', 'Turkey')
    country_name VARCHAR(100),
    
    -- ISO code for the region (e.g., 'EU' for Europe, 'ME' for Middle East)
    region_code CHAR(2),
    
    -- Full name of the region (e.g., 'Europe', 'Middle East')
    region_name VARCHAR(100),

    -- Domain of the source (e.g., 'trends.google.com', 'api.open-meteo.com')
    source_domain VARCHAR(255),
    
    -- Example query for accessing data (e.g., '/trending/rss?geo=US')
    source_query VARCHAR(255),

    -- Access method (e.g., 'free', 'subscription', 'open_access')
    source_access_method VARCHAR(50) NOT NULL,

    -- Type of source (e.g., 'manual', 'file', 'web', 'database', 'social', 'media')
    source_type VARCHAR(50) NOT NULL,

    -- Access type of the source (e.g., 'form', 'survey', 'api', 'scraping', etc.)
    source_access_type VARCHAR(50) NOT NULL,
    
    -- Format of the data (e.g., 'txt', 'csv', 'json', 'image')
    source_data_format VARCHAR(50),  

    -- This field specifies the type of data structure (e.g., 'time_series', 'categorical')
    source_data_structure_type VARCHAR(50) NOT NULL,

    -- This field defines the source category of the data (e.g., 'social_media_data', 'meteorological_data')
    source_data_structure_category VARCHAR(50),

    -- Time interval for data updates (e.g., 'real_time', 'daily', 'weekly')
    source_time_interval VARCHAR(50),  

    -- Reliability score (0.00 to 1.00, e.g., 0.85)
    source_metric_reliability_score DECIMAL(3, 2) CHECK (source_metric_reliability_score BETWEEN 0.00 AND 1.00),

    -- Freshness score (0.00 to 1.00, e.g., 0.90) 
    source_metric_freshness_score DECIMAL(3, 2) CHECK (source_metric_freshness_score BETWEEN 0.00 AND 1.00),

    -- Timestamp of the last usage [ UTC Z timezone]
    source_metric_measured_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,    

    -- Status of the source (e.g., 'active', 'maintenance', 'inactive')
    source_status VARCHAR(50) NOT NULL DEFAULT 'inactive'
);
