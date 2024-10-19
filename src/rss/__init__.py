import feedparser

def fetch_rss_data(rss_url):
    feed = feedparser.parse(rss_url)
    for entry in feed.entries:
        # MongoDB'ye kaydet
        rss_collection = mongo_db["rss_data"]
        rss_collection.insert_one({"rss_url": rss_url, "entry": entry})
        # PostgreSQL'e kaydet
        cursor.execute("INSERT INTO rss_trends (rss_url, extracted_data) VALUES (%s, %s)", (rss_url, str(entry)))
        conn.commit()
        print("RSS verisi kaydedildi.")

fetch_rss_data("https://example.com/rss")
