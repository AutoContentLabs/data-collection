-- Inserting various types of access methods for data sources
INSERT INTO source_access_methods (source_access_method) VALUES
('free'),               -- Represents data sources that are available at no cost
('subscription'),       -- Refers to sources that require a subscription fee for access
('open_access'),       -- Indicates data that is freely available to the public without restrictions
('paywall'),           -- Sources that provide limited access, requiring payment for full access
('limited_access'),    -- Represents sources with restrictions on the amount or type of data available
('membership'),        -- Indicates sources that require membership for access
('trial'),             -- Refers to sources offering a trial period before requiring payment
('one_time_purchase'), -- Represents data sources that can be accessed through a one-time payment
('institutional_access'); -- Indicates access provided to institutions (like universities or libraries)
