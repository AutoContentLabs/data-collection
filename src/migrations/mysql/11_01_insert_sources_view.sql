INSERT INTO sources_view (
    source_name,                  -- The name of the data source
    source_description,           -- A brief description of the data source
    language_code,                -- The language code (e.g., ISO 639-1 format)
    language_name,                -- The full name of the language
    category_name,                -- The main category the source falls under
    subcategory_name,             -- A more specific subcategory within the main category
    source_tags,                  -- Tags for categorization to aid in content discovery
    country_code,                 -- ISO code for the country where the source is based
    country_name,                 -- Full name of the country
    region_code,                  -- Code representing the region (e.g., Middle East)
    region_name,                  -- Full name of the region
    source_domain,                -- Domain name of the source
    source_query,                 -- Example query to access data from the source
    source_access_method,         -- The method through which the source can be accessed (e.g., free, subscription)
    source_type,                  -- Type of source (e.g., web, mobile app)
    source_access_type,           -- Type of access (e.g., API, direct access)
    source_data_format,           -- Format in which the data is provided (e.g., JSON, XML)
    source_data_structure_type,    -- Type of data structure (e.g., real-time, batch)
    source_data_structure_category, -- Category of the data structure (e.g., social media data)
    source_time_interval,          -- Frequency of data updates (e.g., daily, hourly)
    source_metric_reliability_score, -- Score indicating the reliability of the source's data
    source_metric_freshness_score,  -- Score indicating how up-to-date the data is
    source_metric_measured_at,     -- Timestamp of the last measurement of the data's metrics
    source_status                   -- Current status of the source (e.g., active, inactive)
) VALUES
(
    'Google Trends (Middle East - Turkey)', -- Name of the source being added
    'Provides trending search data in Turkey.', -- Description that summarizes the source's purpose
    'TR', -- Language code indicating Turkish
    'Turkish', -- Full name of the language for clarity
    'Technology and Innovation', -- Main category under which the source is classified
    'Search Trends', -- Subcategory providing a more specific classification
    'trends, search, data', -- Tags to help categorize and find the source easily
    'TR', -- ISO country code for Turkey
    'Turkey', -- Full name of the country for human readability
    'ME', -- Code for the Middle East region
    'Middle East', -- Full name of the region for context
    'trends.google.com', -- Domain where the data can be accessed
    '/trending?geo=TR', -- Example URL query to retrieve relevant data
    'free', -- Indicates that the source is freely accessible
    'web', -- Type of source, specifying it as a web-based resource
    'api', -- Indicates that the source can be accessed via an API
    'json', -- Format in which the data is returned (JSON format is common for APIs)
    'real_time', -- Specifies that the data is structured in real-time
    'social_media_data', -- Categorizes the type of data as related to social media
    'daily', -- Specifies that the data is updated daily
    0.95, -- Reliability score reflecting the trustworthiness of the data source
    0.90, -- Freshness score indicating how current the data is
    CURRENT_TIMESTAMP, -- Automatically records the time the entry is created
    'active' -- Indicates that the source is currently active and operational
);
