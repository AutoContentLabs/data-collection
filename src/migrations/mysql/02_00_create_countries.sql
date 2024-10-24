CREATE TABLE countries (
    country_code CHAR(2) PRIMARY KEY,  -- 'US', 'GB'
    country_name VARCHAR(100) NOT NULL,  -- 'United States of America', 'United Kingdom'
    region_code CHAR(2) NOT NULL,  -- 'EU', 'NA'
    region_name VARCHAR(100) NOT NULL  -- 'Europe', 'North America'
);
