-- Tags for categorization, allowing for specific keywords that enhance content discovery and classification
CREATE TABLE tags (
    tag_id INT AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(10) NOT NULL UNIQUE  -- Name of the tag
);