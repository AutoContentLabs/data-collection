-- Explanation:
-- source_id: This column references the source_id from the sources table, linking each tag to its corresponding data source.
-- tag_id: This column references the tag_id from the tags table, allowing for multiple tags to be associated with a single source.

-- INSERT INTO source_tags (source_id, tag_id) VALUES
-- (1, 1),  -- Linking source_id 1 with tag_id 1
-- (1, 2),  -- Linking source_id 1 with tag_id 2
-- (2, 3),  -- Linking source_id 2 with tag_id 3
-- (3, 4),  -- Linking source_id 3 with tag_id 4
-- (4, 5);  -- Linking source_id 4 with tag_id 5
