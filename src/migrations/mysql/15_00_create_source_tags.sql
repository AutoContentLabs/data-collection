-- Explanation:
-- source_id: This column references the source_id from the sources table, linking each tag to its corresponding data source.
-- tag_id: This column references the tag_id from the tags table, allowing for multiple tags to be associated with a single source.
-- PRIMARY KEY: The combination of source_id and tag_id as a composite primary key ensures that each source-tag relationship is unique.
-- FOREIGN KEY: The foreign key constraints ensure referential integrity between the source_tags, sources, and tags tables.
CREATE TABLE source_tags (
    source_id INT NOT NULL,  -- ID of the source from the sources table
    tag_id INT NOT NULL,     -- ID of the tag from the tags table
    -- PRIMARY KEY (source_id, tag_id),  -- Composite primary key to ensure uniqueness
    -- FOREIGN KEY (source_id) REFERENCES sources(source_id),  -- Foreign key referencing sources table
    -- FOREIGN KEY (tag_id) REFERENCES tags(tag_id)           -- Foreign key referencing tags table
);