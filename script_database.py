import sqlite3

conn = sqlite3.connect('./data/tienda.db')
cursor = conn.cursor()

with open("Create_database.sql", "r", encoding="utf-8") as f:
    create_script = f.read()

with open("Insert_sintetic_values.sql", "r", encoding="utf-8") as f:
    insert_script = f.read()

cursor.executescript(create_script)
cursor.executescript(insert_script)

conn.commit()
conn.close()