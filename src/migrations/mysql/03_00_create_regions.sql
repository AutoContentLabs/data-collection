CREATE TABLE regions (
    region_code CHAR(2) PRIMARY KEY,       -- Region code, must be unique and not null
    region_name VARCHAR(100) NOT NULL       -- Region name, must not be null
);
