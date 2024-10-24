-- source_data_structure_types

-- Time Series: Ideal for analyzing data that changes over time. Useful for continuously monitored data such as economic indicators or weather data.
-- [
--     {
--         "timestamp": "2024-10-01T00:00:00Z",
--         "value": 22.5
--     },
--     {
--         "timestamp": "2024-10-02T00:00:00Z",
--         "value": 21.7
--     },
--     {
--         "timestamp": "2024-10-03T00:00:00Z",
--         "value": 23.1
--     }
-- ]

-- Real Time: Provides instant data flow, allowing you to follow events instantly. Suitable for situations that require rapid response, such as social media data or changes in financial markets.
-- [
--     {
--         "platform": "Twitter",
--         "metric": "Live Tweet Count",
--         "value": 1500,
--         "timestamp": "2024-10-24T12:00:00Z"
--     },
--     {
--         "platform": "Stock Market",
--         "metric": "Current Price - XYZ Corp",
--         "value": 145.00,
--         "timestamp": "2024-10-24T12:00:00Z"
--     }
-- ]

-- Historical: Data obtained from past events is valuable for long-term analysis. Useful for understanding past trends.
-- [
--     {
--         "event": "Stock Price - XYZ Corp",
--         "value": 120.50,
--         "date": "2023-10-24"
--     },
--     {
--         "event": "Unemployment Rate",
--         "value": 7.2,
--         "date": "2023-10-01"
--     }
-- ]

-- Aggregated: Summarizing data collected from multiple sources is useful for quickly seeing general trends and patterns. For example, combining all weather data for a specific region.
-- [
--     {
--         "metric": "Average Temperature",
--         "value": 19.8,
--         "period": "October 2024"
--     },
--     {
--         "metric": "Total Cases - COVID-19",
--         "value": 5000,
--         "period": "October 2024"
--     }
-- ]

-- Categorical: Dividing data into specific categories makes analysis and reporting easier. Useful for examining different groups, such as demographic data.
-- [
--     {
--         "category": "Gender",
--         "type": "Male",
--         "percentage": 48
--     },
--     {
--         "category": "Age Group",
--         "type": "18-24",
--         "percentage": 30
--     },
--     {
--         "category": "Income Level",
--         "type": "Low",
--         "percentage": 25
--     }
-- ]

-- Text: Unstructured text data is important for obtaining valuable insights from sources such as social media posts or customer feedback. It can be analyzed with text mining methods.
-- [
--     {
--         "source": "Customer Feedback",
--         "text": "The product quality is excellent and the service was fast.",
--         "timestamp": "2024-10-24T12:00:00Z"
--     },
--     {
--         "source": "Social Media Post",
--         "text": "I love the new features in the latest update!",
--         "timestamp": "2024-10-24T12:00:00Z"
--     }
-- ]

-- Numerical: Data expressed in numbers is necessary for statistical analysis. It plays a critical role in decision-making processes based on numerical data, such as economic data or health statistics.
-- [
--     {
--         "metric": "Revenue",
--         "value": 250000,
--         "year": 2024
--     },
--     {
--         "metric": "Number of Employees",
--         "value": 150,
--         "year": 2024
--     }
-- ]

INSERT INTO source_data_structure_types (source_data_structure_type) VALUES
('time_series'),  -- Data organized by time intervals
('real_time'),    -- Data available as it is generated
('historical'),   -- Data collected from past events
('aggregated'),   -- Data summarized from multiple sources
('categorical'),  -- Data divided into categories
('text'),         -- Unstructured text data
('numerical');    -- Data represented in numbers
