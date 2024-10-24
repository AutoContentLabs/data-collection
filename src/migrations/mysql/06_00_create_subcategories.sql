CREATE TABLE subcategories (
    subcategory_id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each subcategory, auto-incremented.
    category_name VARCHAR(100) NOT NULL,            -- Name of the main category to which this subcategory belongs.
    subcategory_name VARCHAR(100) NOT NULL           -- Name of the subcategory itself.
);
