CREATE TABLE categories (
    -- This table stores information about different categories.
    -- Each category can represent a distinct area of interest or subject matter.
    
    -- Name of the category (e.g., 'Technology', 'Health', 'Environment')
    category_name VARCHAR(100) NOT NULL,  -- This column stores the name of the category, which is mandatory.

    -- Description of the category, providing additional context or information about the category
    category_description TEXT  -- This column holds a textual description of the category for further context.
);
