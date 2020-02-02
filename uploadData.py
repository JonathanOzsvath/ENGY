import psycopg2

conn = psycopg2.connect(
    database="ENGY",
    user="postgres",
    password="admin",
    host="127.0.0.1",
    port="5432"
)

cur = conn.cursor()

cur.execute('select * from public."ENGY_App_item"')
#cur.execute(
 #   'insert into ENGY_App_item(itemNumber, description, quantity, unit, unitPriceOfMaterial, pricePerUnit, isMainCategory) values (null, %s, null, null, null, null, %s)', ("Egyéb kiegészítő erőforrások", True))

conn.close()
