# Dockerfile

FROM python:3.9

# Çalışma dizinini ayarla
WORKDIR /app

# Gereksinimleri kopyala ve yükle
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Uygulama dosyalarını kopyala
COPY . .

# Komutları çalıştır
CMD ["python", "-m", "api.data_collection"]
