CREATE TABLE collections (
    -- Her kaydı benzersiz şekilde tanımlamak için birincil anahtar
    id INT AUTO_INCREMENT PRIMARY KEY,

    -- source_data_structure_types tablosundaki veri türlerini belirtir
    source_data_structure_type VARCHAR(50) NOT NULL,

    -- source_data_structure_categories tablosundaki kategorileri belirtir
    source_data_structure_category VARCHAR(50) NOT NULL,

    -- source bilgileri
    source JSON NOT NULL,

    -- JSON formatında kaynak bilgilerini saklar
    data JSON NOT NULL,

    -- Toplanan verilerle ilgili ek notları veya içerikleri tutar
    collection_data TEXT,

    -- Verinin toplandığı zaman damgasını tutar; varsayılan olarak şu anki zaman
    collected_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
