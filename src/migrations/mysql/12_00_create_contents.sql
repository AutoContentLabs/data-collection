CREATE TABLE contents (
    id INT AUTO_INCREMENT PRIMARY KEY,    -- Unique identifier for each content entry
    title VARCHAR(255) NOT NULL,          -- Title of the content
    description TEXT,                      -- Description of the content
    category_name VARCHAR(100) NOT NULL,  -- Name of the category
    subcategory_name VARCHAR(100),         -- Name of the subcategory (optional)
    source_tags VARCHAR(255)               -- Tags for categorization, allowing for specific keywords that enhance content discovery and classification
);
