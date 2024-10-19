def insert_manual_entry(data_entry):
    # MongoDB'ye kaydet
    manual_collection = mongo_db["manual_entries"]
    manual_collection.insert_one({"data_entry": data_entry})
    # PostgreSQL'e kaydet
    cursor.execute("INSERT INTO manual_entries (data_entry) VALUES (%s)", (data_entry,))
    conn.commit()
    print("Manuel veri kaydedildi.")

insert_manual_entry("Bu manuel olarak eklenmiş bir veri.")
