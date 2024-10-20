-- Alt Kategoriler tablosu
CREATE TABLE subcategories  (
    subcategory_id INT AUTO_INCREMENT PRIMARY KEY,
    subcategory_name VARCHAR(255) NOT NULL,
    category_id INT,
    UNIQUE(category_id, subcategory_name),  -- Aynı kategoride benzersiz alt kategoriler
    FOREIGN KEY (category_id) REFERENCES categories (category_id) ON DELETE CASCADE
);