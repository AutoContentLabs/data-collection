-- The source_access_types table is designed to store different types of access methods for data sources.
-- Each entry in the table represents a specific access type, allowing for diverse methods of data retrieval.
-- The source_access_type column is of type VARCHAR(50) to accommodate a variety of access type names, such as:
-- - 'form': Indicates data is collected through online forms.
-- - 'survey': Refers to data obtained from surveys conducted with participants.
-- - 'csv': Represents data provided in CSV (Comma-Separated Values) format.
-- - 'excel': Indicates data available in Excel spreadsheet format.
-- - 'api': Refers to data accessed via an Application Programming Interface (API).
-- - 'scraping': Indicates data collected through web scraping techniques.
-- - 'ftp': Refers to data accessed via File Transfer Protocol.
-- - 'socket': Indicates data received through socket communication.
-- - 'mysql': Refers to data stored in MySQL databases.
-- - 'postgresql': Indicates data stored in PostgreSQL databases.
-- - 'twitter': Represents data sourced from Twitter.
-- - 'facebook': Indicates data sourced from Facebook.
-- - 'news_site': Refers to data collected from news websites.
-- - 'blog': Indicates data sourced from blogs.
-- - 'podcast': Refers to data from podcast episodes.
-- - 'video': Represents data accessed from video platforms.
-- This structure enables easy categorization and querying of various access types for different data sources.
CREATE TABLE source_access_types (
    source_access_type VARCHAR(50)
);