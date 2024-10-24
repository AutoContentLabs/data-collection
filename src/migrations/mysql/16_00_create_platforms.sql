-- Create Platforms Table
CREATE TABLE platforms (
    
    platform_name VARCHAR(255) NOT NULL,  -- Name of the platform
    platform_description TEXT NOT NULL,  -- Brief description of what the platform does
    category_name VARCHAR(255) NOT NULL,  -- Main category under which the platform falls
    subcategory_name VARCHAR(255) NOT NULL  -- More specific subcategory for further classification
);

CREATE TABLE platform_services (
   
    platform_name VARCHAR(255) NOT NULL,  -- Name of the platform
    service_name VARCHAR(255) NOT NULL,
    service_description TEXT NOT NULL,
    service_url VARCHAR(255) NOT NULL
);
