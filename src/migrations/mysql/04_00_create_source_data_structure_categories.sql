 -- This field defines the source category of the data.
-- Various categories include social media data, meteorological data, economic data, health data, demographic data, geographic data, educational data, environmental data, and technological data.
-- These categories help to understand the origin and context of the data.
CREATE TABLE source_data_structure_categories (
    source_data_structure_category VARCHAR(50) NOT NULL,
    category_description TEXT
);
