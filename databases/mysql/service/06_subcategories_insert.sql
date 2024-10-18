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