    -- Explanation of Examples:
    -- Social Media Data: Specific types of metrics that can be measured and tracked.
    -- Meteorological Data: Examples show the variety of weather-related data collected over time.
    -- Economic Data: Highlights the breadth of economic indicators that can be analyzed.
    -- Health Data: Provides real-world applications of health-related data tracking.
    -- Demographic Data: Showcases different forms of demographic analysis.
    -- Geographic Data: Examples illustrate how geographical data can be collected and utilized.
    -- Educational Data: Focuses on metrics relevant to education systems and their outcomes.
    -- Environmental Data: Examples emphasize the types of assessments that can be made.
    -- Technological Data: Provides insight into the kinds of metrics related to technology usage and access.
        
    -- Examples of Each Category:

    -- Social Media Data:

    -- Example: Twitter trending topics for a specific region or the engagement rates on Instagram posts.
    -- [
    --     {
    --         "platform": "Twitter",
    --         "metric": "Trending Topics",
    --         "value": "Climate Change, AI Innovations",
    --         "timestamp": "2024-10-24T12:00:00Z"
    --     },
    --     {
    --         "platform": "Instagram",
    --         "metric": "Engagement Rate",
    --         "value": "4.5%",
    --         "timestamp": "2024-10-24T12:00:00Z"
    --     },
    --     {
    --         "platform": "Facebook",
    --         "metric": "Post Reach",
    --         "value": "15000",
    --         "timestamp": "2024-10-24T12:00:00Z"
    --     }
    -- ]


    -- Meteorological Data:

    -- Example: Daily temperature readings for a city, humidity levels across a month, or wind speed recorded every hour.
    -- [
    --     {
    --         "location": "Istanbul",
    --         "metric": "Temperature",
    --         "value": "22°C",
    --         "timestamp": "2024-10-24T12:00:00Z"
    --     },
    --     {
    --         "location": "Ankara",
    --         "metric": "Humidity",
    --         "value": "60%",
    --         "timestamp": "2024-10-24T12:00:00Z"
    --     },
    --     {
    --         "location": "Izmir",
    --         "metric": "Precipitation",
    --         "value": "5mm",
    --         "timestamp": "2024-10-24T12:00:00Z"
    --     }
    -- ]

    -- Economic Data:

    -- Example: Daily stock prices for a set of companies, quarterly GDP growth rates, or monthly inflation rates.

    -- [
    --     {
    --         "indicator": "Stock Price - XYZ Corp",
    --         "value": "150.25",
    --         "date": "2024-10-24"
    --     },
    --     {
    --         "indicator": "GDP Growth Rate",
    --         "value": "3.2%",
    --         "date": "2024 Q3"
    --     },
    --     {
    --         "indicator": "Unemployment Rate",
    --         "value": "5.1%",
    --         "date": "2024-10-01"
    --     }
    -- ]


    -- Health Data:

    -- Example: Weekly COVID-19 case counts, vaccination rates by region, or access to healthcare facilities reported in a health survey.

    -- [
    --     {
    --         "disease": "COVID-19",
    --         "case_count": "120",
    --         "date": "2024-10-24"
    --     },
    --     {
    --         "disease": "Flu",
    --         "case_count": "80",
    --         "date": "2024-10-24"
    --     },
    --     {
    --         "metric": "Vaccination Rate",
    --         "value": "75%",
    --         "date": "2024-10-24"
    --     }
    -- ]

    -- Demographic Data:

    -- Example: Census data showing population age distribution, statistics on gender ratios in different areas, or household income reports.

    -- [
    --     {
    --         "category": "Age Distribution",
    --         "statistic": "0-14 years",
    --         "value": "20%",
    --         "year": "2024"
    --     },
    --     {
    --         "category": "Gender Ratio",
    --         "statistic": "Male",
    --         "value": "49%",
    --         "year": "2024"
    --     },
    --     {
    --         "category": "Household Size",
    --         "statistic": "Average",
    --         "value": "3.5",
    --         "year": "2024"
    --     }
    -- ]

    -- Geographic Data:

    -- Example: Maps showing land use in urban areas, climate data for different regions, or GPS coordinates for significant landmarks.

    -- [
    --     {
    --         "location": "Istanbul",
    --         "type": "Climate Zone",
    --         "description": "Mediterranean",
    --         "coordinates": "41.0082° N, 28.9784° E"
    --     },
    --     {
    --         "location": "Ankara",
    --         "type": "Topography",
    --         "description": "Plateau",
    --         "coordinates": "39.9334° N, 32.8597° E"
    --     },
    --     {
    --         "location": "Antalya",
    --         "type": "Land Use",
    --         "description": "Tourism",
    --         "coordinates": "36.8969° N, 30.7133° E"
    --     }
    -- ]

    -- Educational Data:

    -- Example: Enrollment statistics for a school district, graduation rates over several years, or performance metrics from standardized tests.

    -- [
    --     {
    --         "school": "School A",
    --         "metric": "Graduation Rate",
    --         "value": "95%",
    --         "year": "2024"
    --     },
    --     {
    --         "school": "District B",
    --         "metric": "Enrollment Numbers",
    --         "value": "2000",
    --         "year": "2024"
    --     },
    --     {
    --         "metric": "Average Score",
    --         "value": "88%",
    --         "year": "2024"
    --     }
    -- ]

    -- Environmental Data:

    -- Example: Air quality index readings over a month, water quality test results from various lakes, or reports on species biodiversity in a given ecosystem.

    -- [
    --     {
    --         "location": "Istanbul",
    --         "metric": "Air Quality Index",
    --         "value": "42",
    --         "timestamp": "2024-10-24T12:00:00Z"
    --     },
    --     {
    --         "location": "Marmara Sea",
    --         "metric": "Water Quality",
    --         "value": "Good",
    --         "timestamp": "2024-10-24T12:00:00Z"
    --     },
    --     {
    --         "location": "Northern Forest",
    --         "metric": "Biodiversity Index",
    --         "value": "High",
    --         "timestamp": "2024-10-24T12:00:00Z"
    --     }
    -- ]

    -- Technological Data:

    -- Example: Statistics on mobile app downloads over a year, internet usage trends among different demographics, or data on technology access in schools.

    -- [
    --     {
    --         "metric": "Internet Penetration Rate",
    --         "value": "85%",
    --         "year": "2024"
    --     },
    --     {
    --         "metric": "Mobile App Downloads",
    --         "value": "1,200,000",
    --         "year": "2024"
    --     },
    --     {
    --         "metric": "Technology Adoption Rate",
    --         "value": "70%",
    --         "year": "2024"
    --     }
    -- ]

    INSERT INTO source_data_structure_categories (source_data_structure_category, category_description) VALUES
        ('social_media_data', 'Data from social media platforms, covering trends, hashtags, engagement rates, and user interactions.'),  -- Comprehensive insights from social media
        ('meteorological_data', 'Weather-related data, including temperature, humidity, wind speed, precipitation levels, and atmospheric pressure.'),  -- Detailed weather metrics
        ('economic_data', 'Market-related data encompassing stock prices, exchange rates, inflation rates, and key economic indicators.'),  -- Comprehensive economic insights
        ('health_data', 'Epidemiological data tracking disease case counts, vaccination rates, healthcare access, and public health trends.'),  -- Insights into public health
        ('demographic_data', 'Population statistics providing details on age distribution, gender ratios, ethnicity, and household characteristics.'),  -- In-depth demographic analysis
        ('geographic_data', 'Geospatial information including GPS coordinates, land use patterns, climate zones, and topographical features.'),  -- Spatial and environmental insights
        ('educational_data', 'Statistics related to educational outcomes, including school performance metrics, graduation rates, enrollment figures, and education access.'),  -- Educational insights
        ('environmental_data', 'Data concerning air quality, water quality, biodiversity, habitat health, and environmental assessments.'),  -- Comprehensive environmental data
        ('technological_data', 'Information about internet usage patterns, app downloads, technology adoption rates, and digital literacy statistics.');  -- Insights into technology trends
