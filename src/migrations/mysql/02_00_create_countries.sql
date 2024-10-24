CREATE TABLE countries (
    country_code CHAR(2) PRIMARY KEY,  -- ISO code for the country (e.g., 'US' for United States, 'GB' for United Kingdom)
    country_name VARCHAR(100) NOT NULL,  -- Full name of the country (e.g., 'United States of America', 'United Kingdom')
    region_code CHAR(2) NOT NULL,  -- ISO code for the region (e.g., 'EU' for Europe, 'NA' for North America)
    region_name VARCHAR(100) NOT NULL  -- Full name of the region (e.g., 'Europe', 'North America')
);
