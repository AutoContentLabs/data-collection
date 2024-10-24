CREATE TABLE sources_view (
    -- Unique identifier for each source (e.g., 1, 2, 3)
    source_id INT AUTO_INCREMENT PRIMARY KEY,

    -- Name of the source (e.g., 'Google Trends (Middle East - Turkey), 'Open Meteo (Middle East - Turkey)')
    source_name VARCHAR(255) NOT NULL,

    -- Source description (e.g., Open Meteo provides free weather data for Turkey.)
    source_description TEXT NULL,

    -- Language code (e.g., 'EN' for English, 'TR' for Turkish)
    language_code VARCHAR(5) NOT NULL,

    -- Full name of the language (e.g., 'English', 'Turkish')
    language_name VARCHAR(50) NOT NULL,

    -- Categories related to the source
    -- ('The Universe and Natural World', 'Topics related to the cosmos, space, and Earth sciences.'),
    -- ('Human Society and Culture', 'Topics related to history, politics, economics, and culture.'),
    -- ('Technology and Innovation', 'Topics related to IT, engineering, and inventions.'),
    -- ('Human Needs and Activities', 'Topics related to basic human needs and occupations.'),
    -- ('Creative Arts and Entertainment', 'Topics related to arts, literature, and media.'),
    -- ('Human Interaction and Social Structure', 'Topics related to communication, culture, and society.'),
    -- ('Leisure and Recreation', 'Topics related to sports, hobbies, and travel.'),
    -- ('Man-made Constructs', 'Topics related to architecture, infrastructure, and urban planning.'),
    -- ('Environment and Sustainability', 'Topics related to environmental issues and sustainability.'),
    -- ('Data and Information Systems', 'Topics related to data science and information technology.');
    category_name VARCHAR(100) NOT NULL,

    -- -- "The Universe and Natural World"
    -- subcategories (category_name, subcategory_name)
    -- ('The Universe and Natural World', 'Cosmos and Space'),
    -- ('The Universe and Natural World', 'Galaxies'),
    -- ('The Universe and Natural World', 'Stars'),
    -- ('The Universe and Natural World', 'Planets'),
    -- ('The Universe and Natural World', 'Black Holes'),
    -- ('The Universe and Natural World', 'Dark Matter'),
    -- ('The Universe and Natural World', 'Earth Sciences'),
    -- ('The Universe and Natural World', 'Geology'),
    -- ('The Universe and Natural World', 'Oceanography'),
    -- ('The Universe and Natural World', 'Meteorology'),
    -- ('The Universe and Natural World', 'Ecology');

    -- -- "Human Society and Culture"
    -- subcategories (category_name, subcategory_name)
    -- ('Human Society and Culture', 'History'),
    -- ('Human Society and Culture', 'Ancient History'),
    -- ('Human Society and Culture', 'Modern History'),
    -- ('Human Society and Culture', 'Politics and Governance'),
    -- ('Human Society and Culture', 'Economics'),
    -- ('Human Society and Culture', 'Religion and Belief Systems'),
    -- ('Human Society and Culture', 'Law and Order');

    -- -- "Technology and Innovation"
    -- subcategories (category_name, subcategory_name)
    -- ('Technology and Innovation', 'Artificial Intelligence'),
    -- ('Technology and Innovation', 'Machine Learning'),
    -- ('Technology and Innovation', 'Blockchain'),
    -- ('Technology and Innovation', 'Quantum Computing'),
    -- ('Technology and Innovation', 'Robotics'),
    -- ('Technology and Innovation', 'Cybersecurity'),
    -- ('Technology and Innovation', 'Software Development'),
    -- ('Technology and Innovation', 'Biotechnology'),
    -- ('Technology and Innovation', 'Nanotechnology'),
    -- ('Technology and Innovation', 'Automation');

    -- -- "Human Needs and Activities"
    -- subcategories (category_name, subcategory_name)
    -- ('Human Needs and Activities', 'Health and Medicine'),
    -- ('Human Needs and Activities', 'Nutrition'),
    -- ('Human Needs and Activities', 'Fitness and Exercise'),
    -- ('Human Needs and Activities', 'Work and Careers'),
    -- ('Human Needs and Activities', 'Education'),
    -- ('Human Needs and Activities', 'Housing and Shelter'),
    -- ('Human Needs and Activities', 'Transportation'),
    -- ('Human Needs and Activities', 'Food and Agriculture'),
    -- ('Human Needs and Activities', 'Personal Finance'),
    -- ('Human Needs and Activities', 'Childcare and Parenting');

    -- -- "Creative Arts and Entertainment"
    -- subcategories (category_name, subcategory_name)
    -- ('Creative Arts and Entertainment', 'Literature'),
    -- ('Creative Arts and Entertainment', 'Music'),
    -- ('Creative Arts and Entertainment', 'Visual Arts'),
    -- ('Creative Arts and Entertainment', 'Theater'),
    -- ('Creative Arts and Entertainment', 'Film and Television'),
    -- ('Creative Arts and Entertainment', 'Video Games'),
    -- ('Creative Arts and Entertainment', 'Dance'),
    -- ('Creative Arts and Entertainment', 'Photography'),
    -- ('Creative Arts and Entertainment', 'Comics and Graphic Novels'),
    -- ('Creative Arts and Entertainment', 'Fashion');

    -- -- "Human Interaction and Social Structure"
    -- subcategories (category_name, subcategory_name)
    -- ('Human Interaction and Social Structure', 'Sociology'),
    -- ('Human Interaction and Social Structure', 'Psychology'),
    -- ('Human Interaction and Social Structure', 'Communication'),
    -- ('Human Interaction and Social Structure', 'Anthropology'),
    -- ('Human Interaction and Social Structure', 'Linguistics'),
    -- ('Human Interaction and Social Structure', 'Cultural Studies'),
    -- ('Human Interaction and Social Structure', 'Philosophy'),
    -- ('Human Interaction and Social Structure', 'Gender Studies'),
    -- ('Human Interaction and Social Structure', 'Political Science'),
    -- ('Human Interaction and Social Structure', 'Globalization');

    -- -- "Leisure and Recreation"
    -- subcategories (category_name, subcategory_name)
    -- ('Leisure and Recreation', 'Sports'),
    -- ('Leisure and Recreation', 'Travel'),
    -- ('Leisure and Recreation', 'Hobbies'),
    -- ('Leisure and Recreation', 'Outdoor Activities'),
    -- ('Leisure and Recreation', 'Gaming'),
    -- ('Leisure and Recreation', 'Gardening'),
    -- ('Leisure and Recreation', 'Collecting'),
    -- ('Leisure and Recreation', 'Camping and Hiking'),
    -- ('Leisure and Recreation', 'Fishing'),
    -- ('Leisure and Recreation', 'Amateur Sports');

    -- -- "Man-made Constructs"
    -- subcategories (category_name, subcategory_name)
    -- ('Man-made Constructs', 'Architecture'),
    -- ('Man-made Constructs', 'Urban Planning'),
    -- ('Man-made Constructs', 'Civil Engineering'),
    -- ('Man-made Constructs', 'Transportation Infrastructure'),
    -- ('Man-made Constructs', 'Bridges and Tunnels'),
    -- ('Man-made Constructs', 'Skyscrapers'),
    -- ('Man-made Constructs', 'Energy Systems'),
    -- ('Man-made Constructs', 'Water Management'),
    -- ('Man-made Constructs', 'Transportation Design'),
    -- ('Man-made Constructs', 'Sustainable Buildings');

    -- -- "Environment and Sustainability"
    -- subcategories (category_name, subcategory_name)
    -- ('Environment and Sustainability', 'Climate Change'),
    -- ('Environment and Sustainability', 'Renewable Energy'),
    -- ('Environment and Sustainability', 'Conservation'),
    -- ('Environment and Sustainability', 'Pollution'),
    -- ('Environment and Sustainability', 'Waste Management'),
    -- ('Environment and Sustainability', 'Sustainable Agriculture'),
    -- ('Environment and Sustainability', 'Ecosystem Restoration'),
    -- ('Environment and Sustainability', 'Biodiversity'),
    -- ('Environment and Sustainability', 'Deforestation'),
    -- ('Environment and Sustainability', 'Environmental Policy');

    -- -- "Data and Information Systems"
    -- subcategories (category_name, subcategory_name)
    -- ('Data and Information Systems', 'Data Science'),
    -- ('Data and Information Systems', 'Big Data'),
    -- ('Data and Information Systems', 'Cloud Computing'),
    -- ('Data and Information Systems', 'Internet of Things (IoT)'),
    -- ('Data and Information Systems', 'Data Privacy'),
    -- ('Data and Information Systems', 'Database Management'),
    -- ('Data and Information Systems', 'Data Visualization'),
    -- ('Data and Information Systems', 'Cybersecurity'),
    -- ('Data and Information Systems', 'Network Systems'),
    -- ('Data and Information Systems', 'Distributed Systems');
    subcategory_name VARCHAR(100),

    -- Tags for categorization, allowing for specific keywords that enhance content discovery and classification.
    -- (e.g., 'cosmos', 'lifecycle', 'marine_science', 'ancient_history' )
    -- tags (tag_name)
    -- ('cosmos'),
    -- ('space'),
    -- ('exploration'),
    -- ('galaxies'),
    -- ('astronomy'),
    -- ('formation'),
    -- ('stars'),
    -- ('lifecycle'),
    -- ('astrophysics'),
    -- ('solar_system'),
    -- ('planets'),
    -- ('black_holes'),
    -- ('dark_matter'),
    -- ('geology'),
    -- ('earth'),
    -- ('oceanography'),
    -- ('marine_science'),
    -- ('meteorology'),
    -- ('weather'),
    -- ('ecology'),
    -- ('history'),
    -- ('events'),
    -- ('timeline'),
    -- ('ancient_history'),
    -- ('civilizations'),
    -- ('archaeology'),
    -- ('modern_history'),
    -- ('key_events'),
    -- ('society'),
    -- ('politics'),
    -- ('governance'),
    -- ('systems'),
    -- ('economics'),
    -- ('theories'),
    -- ('finance'),
    -- ('religion'),
    -- ('beliefs'),
    -- ('practices'),
    -- ('law'),
    -- ('justice'),
    -- ('AI'),
    -- ('applications'),
    -- ('technology'),
    -- ('machine_learning'),
    -- ('blockchain'),
    -- ('quantum_computing'),
    -- ('robotics'),
    -- ('cybersecurity'),
    -- ('software_development'),
    -- ('biotechnology'),
    -- ('nanotechnology'),
    -- ('automation'),
    -- ('health'),
    -- ('medicine'),
    -- ('advancements'),
    -- ('nutrition'),
    -- ('diet'),
    -- ('fitness'),
    -- ('exercise'),
    -- ('career'),
    -- ('development'),
    -- ('growth'),
    -- ('education'),
    -- ('learning'),
    -- ('housing'),
    -- ('trends'),
    -- ('architecture'),
    -- ('transportation'),
    -- ('food_security'),
    -- ('agriculture'),
    -- ('economy'),
    -- ('personal'),
    -- ('parenting'),
    -- ('literature'),
    -- ('culture'),
    -- ('impact'),
    -- ('music'),
    -- ('evolution'),
    -- ('visual_arts'),
    -- ('theater'),
    -- ('film'),
    -- ('analysis'),
    -- ('video_games'),
    -- ('gaming'),
    -- ('dance'),
    -- ('expression'),
    -- ('photography'),
    -- ('storytelling'),
    -- ('comics'),
    -- ('graphic_novels'),
    -- ('fashion'),
    -- ('sociology'),
    -- ('human_behavior'),
    -- ('communication'),
    -- ('anthropology'),
    -- ('cultural_studies'),
    -- ('philosophy'),
    -- ('inquiry'),
    -- ('concepts'),
    -- ('gender_studies'),
    -- ('political_science'),
    -- ('globalization'),
    -- ('leisure'),
    -- ('personal_growth'),
    -- ('outdoor_activities'),
    -- ('adventure'),
    -- ('collecting'),
    -- ('camping'),
    -- ('nature'),
    -- ('fishing'),
    -- ('amateur_sports'),
    -- ('man-made'),
    -- ('constructs'),
    -- ('urban_planning'),
    -- ('civil_engineering'),
    -- ('infrastructure'),
    -- ('projects'),
    -- ('bridges'),
    -- ('tunnels'),
    -- ('skyscrapers'),
    -- ('energy_systems'),
    -- ('water_management'),
    -- ('sustainable_buildings'),
    -- ('climate_change'),
    -- ('impacts'),
    -- ('renewable_energy'),
    -- ('options'),
    -- ('conservation'),
    -- ('initiatives'),
    -- ('pollution'),
    -- ('strategies'),
    -- ('waste_management'),
    -- ('solutions'),
    -- ('sustainable_agriculture'),
    -- ('ecosystem_restoration'),
    -- ('biodiversity'),
    -- ('deforestation'),
    -- ('environmental_policy'),
    -- ('data_science'),
    -- ('introduction'),
    -- ('big_data'),
    -- ('applications'),
    -- ('cloud_computing'),
    -- ('basics'),
    -- ('IoT'),
    -- ('transformation'),
    -- ('data_privacy'),
    -- ('regulations'),
    -- ('database_management'),
    -- ('best_practices'),
    -- ('data_visualization'),
    -- ('network_systems'),
    -- ('explanation'),
    -- ('distributed_systems'),
    -- ('role'),
    -- ('computing');
    source_tags VARCHAR(255),  

    -- ISO code for the country (e.g., 'US', 'GB', 'TR')
    country_code CHAR(2),
    
    -- Full name of the country (e.g., 'United States of America', 'United Kingdom', 'Turkey')
    country_name VARCHAR(100),
    
    -- ISO code for the region (e.g., 'EU' for Europe, 'ME' for Middle East)
    -- regions (region_code, region_name)
    -- ('AF', 'Africa'),
    -- ('AS', 'Asia'),
    -- ('EU', 'Europe'),
    -- ('NA', 'North America'),
    -- ('SA', 'South America'),
    -- ('OC', 'Oceania'),
    -- ('AN', 'Antarctica'),
    -- ('ME', 'Middle East');
    region_code CHAR(2),
    
    -- Full name of the region (e.g., 'Europe', 'Middle East')
    region_name VARCHAR(100),

    -- Domain of the source (e.g., 'trends.google.com', 'api.open-meteo.com')
    source_domain VARCHAR(255),
    
    -- Example query for accessing data (e.g., '/trending/rss?geo=US')
    source_query VARCHAR(255),

    -- Access method (e.g., 'free', 'subscription', 'open_access')
    -- ('free'),
    -- ('subscription'),
    -- ('open_access');    
    source_access_method VARCHAR(50) NOT NULL,

    -- Type of source
    -- ('manual'),
    -- ('file'),
    -- ('web'),
    -- ('database'),
    -- ('social'),
    -- ('media');    
    source_type VARCHAR(50) NOT NULL,

    -- Access type of the source
    -- ('form'),
    -- ('survey'),
    -- ('csv'),
    -- ('excel'),
    -- ('api'),
    -- ('scraping'),
    -- ('ftp'),
    -- ('socket'),
    -- ('mysql'),
    -- ('postgresql'),
    -- ('twitter'),
    -- ('facebook'),
    -- ('news_site'),
    -- ('blog'),
    -- ('podcast'),
    -- ('video');
    source_access_type VARCHAR(50) NOT NULL,
    

    -- Format of the data
    -- ('txt'),
    -- ('csv'),
    -- ('xml'),
    -- ('htm'),
    -- ('json'),
    -- ('image'),
    -- ('audio'),
    -- ('video');   
    source_data_format VARCHAR(50),  


    -- This field specifies the type of data structure.
    -- Data types include time series, real-time, historical, aggregated, categorical, text, and numerical.
    -- These types determine how the data is organized and analyzed.
    -- ('time_series'),
    -- ('real_time'),
    -- ('historical'),
    -- ('aggregated'),
    -- ('categorical'),
    -- ('text'),
    -- ('numerical');
    source_data_structure_type  VARCHAR(50) NOT NULL,

    -- This field defines the source category of the data.
    -- Various categories include social media data, meteorological data, economic data, health data, demographic data, geographic data, educational data, environmental data, and technological data.
    -- These categories help to understand the origin and context of the data.
    -- ('social_media_data', 'Data from social media platforms regarding trends, hashtags, and engagement rates.'),
    -- ('meteorological_data', 'Weather data, temperature, humidity, wind speed, etc.'),
    -- ('economic_data', 'Market data including stock prices, exchange rates, and economic indicators.'),
    -- ('health_data', 'Epidemiological data such as disease case counts and vaccination rates.'),
    -- ('demographic_data', 'Population statistics including age distribution, gender ratios, and household information.'),
    -- ('geographic_data', 'Geospatial information, GPS coordinates, and climate types.'),
    -- ('educational_data', 'Statistics related to school performance, graduation rates, and enrollment numbers.'),
    -- ('environmental_data', 'Data related to air quality, water quality, and environmental assessments.'),
    -- ('technological_data', 'Information regarding internet usage, app downloads, and technology adoption rates.');    
    source_data_structure_category   VARCHAR(50),

    -- Time interval for data updates (e.g., 'Real-Time', 'Daily', 'Weekly')
    -- ('real_time'),
    -- ('hourly'),
    -- ('daily'),
    -- ('weekly'),
    -- ('monthly'),
    -- ('annually'),
    -- ('quarterly');    
    source_time_interval VARCHAR(50),  

    -- Reliability score (0.00 to 1.00, e.g., 0.85)
    source_metric_reliability_score DECIMAL(3, 2) CHECK (source_metric_reliability_score BETWEEN 0.00 AND 1.00),

    -- Freshness score (0.00 to 1.00, e.g., 0.90) 
    source_metric_freshness_score DECIMAL(3, 2) CHECK (source_metric_freshness_score BETWEEN 0.00 AND 1.00),

    -- Timestamp of the last usage [ UTC Z timezone]
    source_metric_measured_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,    

    -- Status of the source (e.g., 'active', 'maintenance', 'inactive', etc.)
    source_status VARCHAR(50) NOT NULL DEFAULT 'inactive'
);
