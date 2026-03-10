SQL> -- Nama: Marta Safitri
SQL> -- NIM: 103122400047
SQL> desc buah;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                                 CHAR(2)
 NAMA_BUAH                                          VARCHAR2(25)
 HARGA                                              NUMBER
 RASA                                               VARCHAR2(20)
 WARNA                                              VARCHAR2(20)

SQL> INSERT INTO buah (id, nama_buah, harga, rasa, warna)
  2  VALUES ('01', 'Mangga', '10000', 'manis', 'kuning');

1 row created.

SQL> VALUES ('02', 'Jeruk', '12000', 'asam', 'orange');
SP2-0734: unknown command beginning "VALUES ('0..." - rest of line ignored.
SQL> INSERT INTO buah (id, nama_buah, harga, rasa, warna)
  2  VALUES ('02', 'Jeruk', '12000', 'asam', 'orange');

1 row created.

SQL> INSERT INTO buah (id, nama_buah, harga, rasa, warna)
  2  VALUES ('03', 'Pisang', '8000', 'Manis', 'kuning');

1 row created.

SQL> INSERT INTO buah (id, nama_buah, harga, rasa, warna)
  2  VALUES ('04', 'Anggur', '25000', 'manis', 'ungu');

1 row created.

SQL> INSERT INTO buah (id, nama_buah, harga, rasa, warna)
  2  VALUES ('05', 'Apel', '15000', 'manis', 'merah');

1 row created.

SQL> INSERT INTO buah (id, nama_buah, harga, rasa, warna)
  2  VALUES ('06', 'Nanas', '9000', 'asam', 'kuning');

1 row created.

SQL> SELECT * FROM buah;

ID NAMA_BUAH                      HARGA RASA                                    
-- ------------------------- ---------- --------------------                    
WARNA                                                                           
--------------------                                                            
01 Mangga                         10000 manis                                   
kuning                                                                          
                                                                                
02 Jeruk                          12000 asam                                    
orange                                                                          
                                                                                
03 Pisang                          8000 Manis                                   
kuning                                                                          
                                                                                

ID NAMA_BUAH                      HARGA RASA                                    
-- ------------------------- ---------- --------------------                    
WARNA                                                                           
--------------------                                                            
04 Anggur                         25000 manis                                   
ungu                                                                            
                                                                                
05 Apel                           15000 manis                                   
merah                                                                           
                                                                                
06 Nanas                           9000 asam                                    
kuning                                                                          
                                                                                

6 rows selected.

SQL> CREATE TABLE buah_promo (
  2  id CHAR(2),
  3  nama_buah VARCHAR2(25),
  4  harga_promo NUMBER,
  5  status_promo VARCHAR(20)
  6  );

Table created.

SQL> INSERT INTO buah_promo VALUES ('01', 'Mangga', 8500, 'aktif');

1 row created.

SQL> INSERT INTO buah_promo VALUES ('03', 'Pisang', 7000, 'aktif');

1 row created.

SQL> INSERT INTO buah_promo VALUES ('07', 'Semangka', 12000, 'aktif');

1 row created.

SQL> SELECT * FROM buah_promo;

ID NAMA_BUAH                 HARGA_PROMO STATUS_PROMO                           
-- ------------------------- ----------- --------------------                   
01 Mangga                           8500 aktif                                  
03 Pisang                           7000 aktif                                  
07 Semangka                        12000 aktif                                  

SQL> MERGE INTO buah_promo p
  2  USING (SELECT id, nama_buah, harga FROM buah) b
  3  ON (p.id = b.id)
  4  WHEN MATCHED THEN
  5  UPSATE SET p.harga_promo = b.harga * 0.9,
  6  p.status_promo = 'update'
  7  WHEN MATCHED THEN
  8  INSERT(id, nama_buah, harga_promo, status_promo)
  9  VALUES(b.id, b.nama_buah, b.harga * 0.85, 'baru');
UPSATE SET p.harga_promo = b.harga * 0.9,
*
ERROR at line 5:
ORA-00905: missing keyword 


SQL> MERGE INTO buah_promo p
  2  USING (SELECT id, nama_buah, harga FROM buah) b
  3  ON (p.id = b.id)
  4  WHEN MATCHED THEN
  5  UPDATE SET p.harga_promo = b.harga * 0.9,
  6  p.status_promo = 'update'
  7  WHEN NOT MATCHED THEN
  8  INSERT (id, nama_buah, harga_promo, status_promo)
  9  VALUES (b.id, b.nama_buah, b.harga * 0.85, 'baru');

6 rows merged.

SQL> SELECT * FROM buah_promo;

ID NAMA_BUAH                 HARGA_PROMO STATUS_PROMO                           
-- ------------------------- ----------- --------------------                   
01 Mangga                           9000 update                                 
03 Pisang                           7200 update                                 
07 Semangka                        12000 aktif                                  
05 Apel                            12750 baru                                   
06 Nanas                            7650 baru                                   
02 Jeruk                           10200 baru                                   
04 Anggur                          21250 baru                                   

7 rows selected.

SQL> CREATE VIEW buah_mahal AS
  2  SELECT id, nama_buah, harga, rasa
  3  FROM buah
  4  WHERE harga > 15000
  5  WITH CHECK OPTION;

View created.

SQL> SELECT * FROM buah_mahal;

ID NAMA_BUAH                      HARGA RASA                                    
-- ------------------------- ---------- --------------------                    
04 Anggur                         25000 manis                                   

SQL> CREATE VIEW buah_diskon AS
  2  SELECT id, nama_buah, harga,
  3  harga * 0.9 AS harga_diskon,
  4  rasa, warna
  5  FROM buah
  6  WHERE warna = 'kuning';

View created.

SQL> SELECT * FROM buah_diskon;

ID NAMA_BUAH                      HARGA HARGA_DISKON RASA                       
-- ------------------------- ---------- ------------ --------------------       
WARNA                                                                           
--------------------                                                            
01 Mangga                         10000         9000 manis                      
kuning                                                                          
                                                                                
03 Pisang                          8000         7200 Manis                      
kuning                                                                          
                                                                                
06 Nanas                           9000         8100 asam                       
kuning                                                                          
                                                                                

SQL> CREATE MATERIALIZED VIEW buah_statistik_MV
  2  REFRESH COMPLETE ON DEMAND
  3  AS
  4  SELECT warna,
  5  COUNT(*) AS jumlah_buah,
  6  AVG(harga) AS rata_rata_harga,
  7  MAX(harga) AS harga_tertinggi,
  8  MIN(harga) AS harga_terendah
  9  FROM buah
 10  GROUP BY warna;

Materialized view created.

SQL> SELECT * FROM buah_statistik_MV;

WARNA                JUMLAH_BUAH RATA_RATA_HARGA HARGA_TERTINGGI HARGA_TERENDAH 
-------------------- ----------- --------------- --------------- -------------- 
kuning                         3            9000           10000           8000 
orange                         1           12000           12000          12000 
ungu                           1           25000           25000          25000 
merah                          1           15000           15000          15000 

SQL> CREATE TABLE supplier_buah (
  2  id_supplier CHAR(2),
  3  nama_supplier VARCHAR2(30),
  4  id_buah CHAR(2),
  5  stok NUMBER
  6  );

Table created.

SQL> INSERT INTO supplier_buah VALUES ('S1', 'UD Segar', '01', 50);

1 row created.

SQL> INSERT INTO supplier_buah VALUES ('S1', 'UD Segar', '02', 30);

1 row created.

SQL> INSERT INTO supplier_buah VALUES ('S2', 'PT BuahIndah', '04', 25);

1 row created.

SQL> INSERT INTO supplier_buah VALUES ('S3', 'Tani Makmur', '05', 40);

1 row created.

SQL> CREATE VIEW detail_supplier AS
  2  SELECT s.id_supplier,
  3  s.nama_supplier,
  4  b.id,
  5  b.nama_buah,
  6  b.harga,
  7  b.stok,
  8  b.warna
  9  FROM supplier_buah s
 10  JOIN buah b ON s.id_buah = b.id;
b.stok,
*
ERROR at line 7:
ORA-00904: "B"."STOK": invalid identifier 


SQL> CREATE VIEW detail_supplier AS
  2  SELECT s.id_supplier,
  3  s.nama_supplier,
  4  b.id,
  5  b.nama_buah,
  6  b.harga,
  7  s.stok,
  8  b.warna
  9  FROM supplier_buah s
 10  JOIN buah b ON s.id_buah = b.id;

View created.

SQL> SELECT * FROM detail_supplier;

ID NAMA_SUPPLIER                  ID NAMA_BUAH                      HARGA       
-- ------------------------------ -- ------------------------- ----------       
      STOK WARNA                                                                
---------- --------------------                                                 
S1 UD Segar                       01 Mangga                         10000       
        50 kuning                                                               
                                                                                
S1 UD Segar                       02 Jeruk                          12000       
        30 orange                                                               
                                                                                
S2 PT BuahIndah                   04 Anggur                         25000       
        25 ungu                                                                 
                                                                                

ID NAMA_SUPPLIER                  ID NAMA_BUAH                      HARGA       
-- ------------------------------ -- ------------------------- ----------       
      STOK WARNA                                                                
---------- --------------------                                                 
S3 Tani Makmur                    05 Apel                           15000       
        40 merah                                                                
                                                                                

SQL> UPDATE buah_mahal SET harga = 27000 WHERE id = '04';

1 row updated.

SQL> SELECT * FROM buah_mahal;

ID NAMA_BUAH                      HARGA RASA                                    
-- ------------------------- ---------- --------------------                    
04 Anggur                         27000 manis                                   

SQL> DELETE FROM buah_promo WHERE status_promo = 'aktif';

1 row deleted.

SQL> SELECT * FROM buah_promo;

ID NAMA_BUAH                 HARGA_PROMO STATUS_PROMO                           
-- ------------------------- ----------- --------------------                   
01 Mangga                           9000 update                                 
03 Pisang                           7200 update                                 
05 Apel                            12750 baru                                   
06 Nanas                            7650 baru                                   
02 Jeruk                           10200 baru                                   
04 Anggur                          21250 baru                                   

6 rows selected.

SQL> CREATE INDEX idx_buah_warna ON buah(warna);

Index created.

SQL> CREATE INDEX idx_buah_harga ON buah(harga);

Index created.

SQL> CREATE SEQUENCE seq_buah
  2  START WITH 7
  3  INCREMENT BY 1
  4  MAXVALUE 99
  5  NOCYCLE;

Sequence created.

SQL> INSERT INTO buah (id, nama_buah, harga, rasa, warna)
  2  VALUES (LPAD(seq_buah.NEXTVAL, 2, '0'), 'Melon', 18000, 'manis', 'hijau');

1 row created.

SQL> SELECT * FROM buah;

ID NAMA_BUAH                      HARGA RASA                                    
-- ------------------------- ---------- --------------------                    
WARNA                                                                           
--------------------                                                            
01 Mangga                         10000 manis                                   
kuning                                                                          
                                                                                
02 Jeruk                          12000 asam                                    
orange                                                                          
                                                                                
03 Pisang                          8000 Manis                                   
kuning                                                                          
                                                                                

ID NAMA_BUAH                      HARGA RASA                                    
-- ------------------------- ---------- --------------------                    
WARNA                                                                           
--------------------                                                            
04 Anggur                         27000 manis                                   
ungu                                                                            
                                                                                
05 Apel                           15000 manis                                   
merah                                                                           
                                                                                
06 Nanas                           9000 asam                                    
kuning                                                                          
                                                                                

ID NAMA_BUAH                      HARGA RASA                                    
-- ------------------------- ---------- --------------------                    
WARNA                                                                           
--------------------                                                            
07 Melon                          18000 manis                                   
hijau                                                                           
                                                                                

7 rows selected.

SQL> CREATE SYNONYM buah_data FOR buah;

Synonym created.

SQL> SELECT * FROM buah_data WHERE warna = 'merah';

ID NAMA_BUAH                      HARGA RASA                                    
-- ------------------------- ---------- --------------------                    
WARNA                                                                           
--------------------                                                            
05 Apel                           15000 manis                                   
merah                                                                           
                                                                                

SQL> SELECT '=== DATA BUAH ===' AS info FROM dual;

INFO                                                                            
-----------------                                                               
=== DATA BUAH ===                                                               

SQL> SELECT * FROM buah ORDER BY harga DESC;

ID NAMA_BUAH                      HARGA RASA                                    
-- ------------------------- ---------- --------------------                    
WARNA                                                                           
--------------------                                                            
04 Anggur                         27000 manis                                   
ungu                                                                            
                                                                                
07 Melon                          18000 manis                                   
hijau                                                                           
                                                                                
05 Apel                           15000 manis                                   
merah                                                                           
                                                                                

ID NAMA_BUAH                      HARGA RASA                                    
-- ------------------------- ---------- --------------------                    
WARNA                                                                           
--------------------                                                            
02 Jeruk                          12000 asam                                    
orange                                                                          
                                                                                
01 Mangga                         10000 manis                                   
kuning                                                                          
                                                                                
06 Nanas                           9000 asam                                    
kuning                                                                          
                                                                                

ID NAMA_BUAH                      HARGA RASA                                    
-- ------------------------- ---------- --------------------                    
WARNA                                                                           
--------------------                                                            
03 Pisang                          8000 Manis                                   
kuning                                                                          
                                                                                

7 rows selected.

SQL> SELECT '=== DATA SUPPLIER ===' AS info FROM dual;

INFO                                                                            
---------------------                                                           
=== DATA SUPPLIER ===                                                           

SQL> SELECT * FROM supplier_buah;

ID NAMA_SUPPLIER                  ID       STOK                                 
-- ------------------------------ -- ----------                                 
S1 UD Segar                       01         50                                 
S1 UD Segar                       02         30                                 
S2 PT BuahIndah                   04         25                                 
S3 Tani Makmur                    05         40                                 

SQL> SELECT '=== DATA PROMO ===' AS info FROM dual;

INFO                                                                            
------------------                                                              
=== DATA PROMO ===                                                              

SQL> SELECT * FROM buah_promo;

ID NAMA_BUAH                 HARGA_PROMO STATUS_PROMO                           
-- ------------------------- ----------- --------------------                   
01 Mangga                           9000 update                                 
03 Pisang                           7200 update                                 
05 Apel                            12750 baru                                   
06 Nanas                            7650 baru                                   
02 Jeruk                           10200 baru                                   
04 Anggur                          21250 baru                                   

6 rows selected.

SQL> SPOOL OFF
