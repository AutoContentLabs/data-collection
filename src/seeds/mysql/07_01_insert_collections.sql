INSERT INTO collections (
    source, 
    collection_data, 
    collected_at
) VALUES 
(
    '{
        "source_id": 6,
        "source_name": "Google Trends (Turkey)",
        "language_code": "TR",
        "language_name": "Turkish",
        "category_name": "Human Society and Culture",
        "subcategory_name": "Modern History",
        "country_code": "TR",
        "country_name": "Turkey",
        "region_code": "ME",
        "region_name": "Middle East",
        "source_type": "web",
        "source_access_method": "api",
        "source_data_type": "xml",
        "source_domain": "trends.google.com",
        "source_query": "/trending/rss?geo=TR",
        "source_reliability_score": 0.85,
        "source_freshness_score": 0.90,
        "source_is_active": true
    }',
    '{
        "trending": [
            {
                "title": "Hava Durumu",
                "url": "https://example.com/hava-durumu",
                "date": "2024-01-01"
            },
            {
                "title": "Yerel Seçimler",
                "url": "https://example.com/yerel-secimler",
                "date": "2024-01-02"
            }
        ]
    }',
    CURRENT_TIMESTAMP
);

INSERT INTO collections (
    source, 
    collection_data, 
    collected_at
) VALUES 
(
    '{
        "source_id": 7,
        "source_name": "Open-Meteo (Turkey)",
        "language_code": "TR",
        "language_name": "Turkish",
        "category_name": "The Universe and Natural World",
        "subcategory_name": "Meteorology",
        "country_code": "TR",
        "country_name": "Turkey",
        "region_code": "ME",
        "region_name": "Middle East",
        "source_type": "web",
        "source_access_method": "api",
        "source_data_type": "json",
        "source_domain": "api.open-meteo.com",
        "source_query": "/v1/forecast?latitude=39.9334&longitude=32.8597&hourly=temperature_2m",
        "source_reliability_score": 0.85,
        "source_freshness_score": 0.90,
        "source_is_active": true
    }',
    '<weather>
        <location>
            <city>Istanbul</city>
            <temperature unit="Celsius">22</temperature>
            <forecast>
                <day date="2024-01-01">
                    <condition>Sunny</condition>
                    <high>24</high>
                    <low>18</low>
                </day>
            </forecast>
        </location>
    </weather>',
    CURRENT_TIMESTAMP
);

INSERT INTO collections (
    source, 
    collection_data, 
    collected_at
) VALUES 
(
    '{
        "source_id": 1,
        "source_name": "Google Trends (United States)",
        "language_code": "EN",
        "language_name": "English",
        "category_name": "Human Society and Culture",
        "subcategory_name": "Modern History",
        "country_code": "US",
        "country_name": "United States",
        "region_code": "NA",
        "region_name": "North America",
        "source_type": "web",
        "source_access_method": "api",
        "source_data_type": "xml",
        "source_domain": "trends.google.com",
        "source_query": "/trending/rss?geo=US",
        "source_reliability_score": 0.85,
        "source_freshness_score": 0.90,
        "source_is_active": true
    }',
    '<div class="trending-topics">
        <h2>Trending Topics in the US</h2>
        <ul>
            <li><a href="https://example.com/topic1">Topic 1</a></li>
            <li><a href="https://example.com/topic2">Topic 2</a></li>
        </ul>
    </div>',
    CURRENT_TIMESTAMP
);

INSERT INTO collections (
    source, 
    collection_data, 
    collected_at
) VALUES 
(
    '{
        "source_id": 2,
        "source_name": "Open-Meteo (United States)",
        "language_code": "EN",
        "language_name": "English",
        "category_name": "The Universe and Natural World",
        "subcategory_name": "Meteorology",
        "country_code": "US",
        "country_name": "United States",
        "region_code": "NA",
        "region_name": "North America",
        "source_type": "web",
        "source_access_method": "api",
        "source_data_type": "json",
        "source_domain": "api.open-meteo.com",
        "source_query": "/v1/forecast?latitude=37.7749&longitude=-122.4194&hourly=temperature_2m",
        "source_reliability_score": 0.85,
        "source_freshness_score": 0.90,
        "source_is_active": true
    }',
    '{
        "forecast": {
            "location": "San Francisco",
            "temperature": {
                "current": 18,
                "high": 22,
                "low": 14
            }
        }
    }',
    CURRENT_TIMESTAMP
);
