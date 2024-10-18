-- Kategoriler tablosu
CREATE TABLE categories  (
    category_id  INT AUTO_INCREMENT PRIMARY KEY, 
    category_name VARCHAR(100) NOT NULL, 
    category_description TEXT
);

INSERT INTO categories (category_name,category_description) VALUES
('The Universe and Natural World', 'Topics related to the cosmos, space, and Earth sciences.'),
('Human Society and Culture', 'Topics related to history, politics, economics, and culture.'),
('Technology and Innovation', 'Topics related to IT, engineering, and inventions.'),
('Human Needs and Activities', 'Topics related to basic human needs and occupations.'),
('Creative Arts and Entertainment', 'Topics related to arts, literature, and media.'),
('Human Interaction and Social Structure', 'Topics related to communication, culture, and society.'),
('Leisure and Recreation', 'Topics related to sports, hobbies, and travel.'),
('Man-made Constructs', 'Topics related to architecture, infrastructure, and urban planning.'),
('Environment and Sustainability', 'Topics related to environmental issues and sustainability.'),
('Data and Information Systems', 'Topics related to data science and information technology.');


-- Alt Kategoriler tablosu
CREATE TABLE subcategories  (
    subcategory_id INT AUTO_INCREMENT PRIMARY KEY,
    subcategory_name VARCHAR(255) NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories (category_id)
);

-- "The Universe and Natural World" kategorisinin ID'sini bulalım
SELECT category_id FROM categories WHERE category_name = 'The Universe and Natural World';

-- "The Universe and Natural World" (category_id = 1) için:
INSERT INTO subcategories (subcategory_name, category_id) VALUES
('Cosmos and Space', 1),
('Galaxies', 1),
('Stars', 1),
('Planets', 1),
('Black Holes', 1),
('Dark Matter', 1),
('Earth Sciences', 1),
('Geology', 1),
('Oceanography', 1),
('Meteorology', 1),
('Ecology', 1);

-- "Human Society and Culture" kategorisinin ID'sini bulalım
SELECT category_id FROM categories WHERE category_name = 'Human Society and Culture';

-- "Human Society and Culture" (category_id = 2) için:
INSERT INTO subcategories (subcategory_name, category_id) VALUES
('History', 2),
('Ancient History', 2),
('Modern History', 2),
('Politics and Governance', 2),
('Economics', 2),
('Religion and Belief Systems', 2),
('Law and Order', 2);

-- "Technology and Innovation" kategorisinin ID'sini bulalım
SELECT category_id FROM categories WHERE category_name = 'Technology and Innovation';

-- "Technology and Innovation" (category_id = 3) için:
INSERT INTO subcategories (subcategory_name, category_id) VALUES
('AI', 3);
