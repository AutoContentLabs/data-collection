-- The source_access_methods table is designed to store various methods by which users can access data sources.
-- Each method is represented by a single entry in the table, allowing for flexibility and expansion as new access methods are defined.
-- The source_access_method column is of type VARCHAR(50) to accommodate a variety of access method names, such as:
-- - 'free': Indicates that the data source can be accessed without any cost.
-- - 'subscription': Indicates that access to the data source requires a paid subscription.
-- - 'open_access': Indicates that the data source is freely available to the public without restrictions.
-- This structure allows for easy management and querying of access methods associated with different data sources.
CREATE TABLE source_access_methods (
    source_access_method VARCHAR(50)
);