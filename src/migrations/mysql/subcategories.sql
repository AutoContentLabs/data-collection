CREATE TABLE subcategories (
    category_name VARCHAR(100) NOT NULL,
    subcategory_name VARCHAR(100) NOT NULL,
    FOREIGN KEY (category_name) REFERENCES categories(category_name)
);
