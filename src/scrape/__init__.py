from bs4 import BeautifulSoup
import requests

def scrape_web_data(url):
    response = requests.get(url)
    if response.status_code == 200:
        soup = BeautifulSoup(response.content, 'html.parser')
        data = soup.prettify()
        # MongoDB'ye kaydet
        web_collection = mongo_db["web_scraped_data"]
        web_collection.insert_one({"url": url, "html_data": data})
        # PostgreSQL'e kaydet
        cursor.execute("INSERT INTO web_trends (source_url, extracted_html) VALUES (%s, %s)", (url, data))
        conn.commit()
        print("Web verisi kaydedildi.")
    else:
        print("Web sayfası erişilemedi:", response.status_code)

scrape_web_data("https://example.com/trending")
