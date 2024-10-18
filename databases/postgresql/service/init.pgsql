CREATE TABLE api_trends (
  id SERIAL PRIMARY KEY,
  source_type VARCHAR(50),
  access_method VARCHAR(10),
  data_format VARCHAR(10),
  extracted_data JSON,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE web_trends (
  id SERIAL PRIMARY KEY,
  source_url TEXT,
  extracted_html TEXT,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE rss_trends (
  id SERIAL PRIMARY KEY,
  rss_url TEXT,
  extracted_data TEXT,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE manual_entries (
  id SERIAL PRIMARY KEY,
  data_entry TEXT,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
