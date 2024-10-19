-- API kaynaklı trend verileri
CREATE TABLE api_trends (
  id SERIAL PRIMARY KEY,
  -- API, Web, RSS, etc
  source_type VARCHAR(50),

  -- GET, POST, WebSocket, FTP
  access_method VARCHAR(10),

  -- JSON, XML, CSV, etc
  data_format VARCHAR(10),

  -- JSON veya metin
  extracted_data JSON,

  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Web scraping kaynaklı veriler
CREATE TABLE web_trends (
  id SERIAL PRIMARY KEY,
  source_url TEXT,

  -- HTML veya metin
  extracted_html TEXT,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- RSS kaynaklı veriler
CREATE TABLE rss_trends (
  id SERIAL PRIMARY KEY,
  rss_url TEXT,

  -- metin
  extracted_data TEXT,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Manuel girilen veriler
CREATE TABLE manual_entries (
  id SERIAL PRIMARY KEY,
  -- metin
  data_entry TEXT,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
