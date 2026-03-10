SQL> --Nama: Marta Safitri
SQL> --NIM: 103122400047
SQL> CREATE TABLE film (
  2  id_film CHAR(5) PRIMARY KEY,
  3  judul VARCHAR2(50),
  4  sinopsis VARCHAR2(200),
  5  tahun NUMBER(4),
  6  durasi NUMBER(3)
  7  );

Table created.

SQL> CREATE TABLE theater (
  2  id_theater CHAR(5) PRIMARY KEY,
  3  harga NUMBER,
  4  kapasitas NUMBER,
  5  kelas VARCHAR2(20)
  6  );

Table created.

SQL> CREATE TABLE member (
  2  id_member CHAR(5) PRIMARY KEY,
  3  nama VARCHAR2(50),
  4  no_hp VARCHAR2(15),
  5  tgl_lahir DATE,
  6  email VARCHAR2(50)
  7  );

Table created.

SQL> CREATE TABLE jadwal (
  2  id_jadwal CHAR(5) PRIMARY KEY,
  3  id_film CHAR(5),
  4  id_theater CHAR(5),
  5  periode_start DATE,
  6  periode_end DATE,
  7  FOREIGN KEY (id_film) REFERENCES film(id_film),
  8  FOREIGN KEY (id_theater) REFERENCES theater(id_theater)
  9  );

Table created.

SQL> CREATE TABLE inventaris (
  2  id_inventaris CHAR(5) PRIMARY KEY,
  3  id_theater CHAR(5),
  4  nomor_kursi VARCHAR2(5),
  5  FOREIGN KEY (id_theater) REFERENCES theater(id_theater)
  6  );

Table created.

SQL> CREATE TABLE transaksi (
  2  kode_pemesanan CHAR(5) PRIMARY KEY,
  3
  4  id_member CHAR(5),
  5  status VARCHAR2(20),
  6  tanggal DATE,
  7  total_harga NUMBER,
  8  FOREIGN KEY (id_jadwal) REFERENCES jadwal(id_jadwal),
  9  FOREIGN KEY (id_jadwal) REFERENCES jadwal(id_member),
 10  );
)
*
ERROR at line 10:
ORA-00904: : invalid identifier 


SQL> CREATE TABLE transaksi (
  2  kode_pemesanan CHAR(5) PRIMARY KEY,
  3  id_jadwal CHAR(5),
  4  id_member CHAR(5),
  5  status VARCHAR2(20),
  6  tanggal DATE,
  7  total_harga NUMBER,
  8  FOREIGN KEY (id_jadwal) REFERENCES jadwal(id_jadwal),
  9  FOREIGN KEY (id_jadwal) REFERENCES member(id_member),
 10  );
)
*
ERROR at line 10:
ORA-00904: : invalid identifier 


SQL> CREATE TABLE transaksi (
  2  kode_pemesanan CHAR(  id_jadwal CHAR(5),5) PRIMARY KEY,
  3  id_jadwal CHAR(5),
  4  id_member CHAR(5),
  5  status VARCHAR2(20),
  6  tanggal DATE,
  7  total_harga NUMBER,
  8  FOREIGN KEY (id_jadwal) REFERENCES jadwal(id_jadwal),
  9  FOREIGN KEY (id_member) REFERENCES member(id_member),
 10  );
)
*
ERROR at line 10:
ORA-00904: : invalid identifier 


SQL> CREATE TABLE transaksi (
  2  kode_pemesanan CHAR(5) PRIMARY KEY,
  3  id_jadwal CHAR(5),
  4  id_member CHAR(5),
  5  status VARCHAR2(20),
  6  tanggal DATE,
  7  total_harga NUMBER,
  8  FOREIGN KEY (id_jadwal) REFERENCES jadwal(id_jadwal),
  9  FOREIGN KEY (id_member) REFERENCES member(id_member)
 10  );

Table created.

SQL> desc film;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_FILM                                   NOT NULL CHAR(5)
 JUDUL                                              VARCHAR2(50)
 SINOPSIS                                           VARCHAR2(200)
 TAHUN                                              NUMBER(4)
 DURASI                                             NUMBER(3)

SQL> desc theater;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_THEATER                                NOT NULL CHAR(5)
 HARGA                                              NUMBER
 KAPASITAS                                          NUMBER
 KELAS                                              VARCHAR2(20)

SQL> desc member;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_MEMBER                                 NOT NULL CHAR(5)
 NAMA                                               VARCHAR2(50)
 NO_HP                                              VARCHAR2(15)
 TGL_LAHIR                                          DATE
 EMAIL                                              VARCHAR2(50)

SQL> desc jadwal;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_JADWAL                                 NOT NULL CHAR(5)
 ID_FILM                                            CHAR(5)
 ID_THEATER                                         CHAR(5)
 PERIODE_START                                      DATE
 PERIODE_END                                        DATE

SQL> desc inventaris;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_INVENTARIS                             NOT NULL CHAR(5)
 ID_THEATER                                         CHAR(5)
 NOMOR_KURSI                                        VARCHAR2(5)

SQL> desc transaksi;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 KODE_PEMESANAN                            NOT NULL CHAR(5)
 ID_JADWAL                                          CHAR(5)
 ID_MEMBER                                          CHAR(5)
 STATUS                                             VARCHAR2(20)
 TANGGAL                                            DATE
 TOTAL_HARGA                                        NUMBER

SQL> INSERT INTO film VALUES ('F01','Avengers','Film superhero Marvel',2019,180);

1 row created.

SQL> INSERT INTO film VALUES ('F02','Frozen','Film animasi Disney',2018,120);

1 row created.

SQL> 
SQL> INSERT INTO theater VALUES ('T01',50000,100,'Regular');

1 row created.

SQL> INSERT INTO theater VALUES ('T02',75000,80,'VIP');

1 row created.

SQL> 
SQL> INSERT INTO member VALUES ('M01','Andi','081234567890','10-MAY-2000','andi@email.com');

1 row created.

SQL> INSERT INTO member VALUES ('M02','Sinta','082345678901','15-AUG-2001','sinta@email.com');

1 row created.

SQL> 
SQL> INSERT INTO jadwal VALUES ('J01','F01','T01','01-JUN-2025','07-JUN-2025');

1 row created.

SQL> INSERT INTO jadwal VALUES ('J02','F02','T02','02-JUN-2025','08-JUN-2025');

1 row created.

SQL> 
SQL> INSERT INTO inventaris VALUES ('I01','T01','A1');

1 row created.

SQL> INSERT INTO inventaris VALUES ('I02','T01','A2');

1 row created.

SQL> 
SQL> INSERT INTO transaksi VALUES ('TR01','J01','M01','Lunas','01-JUN-2025',50000);

1 row created.

SQL> INSERT INTO transaksi VALUES ('TR02','J02','M02','Pending','02-JUN-2025',75000);SELECT * FROM film;
INSERT INTO transaksi VALUES ('TR02','J02','M02','Pending','02-JUN-2025',75000);SELECT * FROM film
                                                                               *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> SELECT * FROM film;

ID_FI JUDUL                                                                     
----- --------------------------------------------------                        
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
F01   Avengers                                                                  
Film superhero Marvel                                                           
      2019        180                                                           
                                                                                
F02   Frozen                                                                    
Film animasi Disney                                                             
      2018        120                                                           

ID_FI JUDUL                                                                     
----- --------------------------------------------------                        
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
                                                                                

SQL> UPDATE film
  2  SET durasi = 185
  3  WHERE id_film = 'F01';

1 row updated.

SQL> UPDATE theater
  2  SET harga = 60000
  3  WHERE id_theater = 'T01';

1 row updated.

SQL> UPDATE member
  2  SET no_hp = '081111111111'
  3  WHERE id_member = 'M01';

1 row updated.

SQL> UPDATE transaksi
  2  SET status = 'Lunas'
  3  WHERE kode_pemesanan = 'TR02';

0 rows updated.

SQL> SELECT * FROM transaksi;

KODE_ ID_JA ID_ME STATUS               TANGGAL   TOTAL_HARGA                    
----- ----- ----- -------------------- --------- -----------                    
TR01  J01   M01   Lunas                01-JUN-25       50000                    

SQL> UPDATE transaksi
  2  SET status = 'Pending'
  3  WHERE kode_pemesanan = 'TR01';

1 row updated.

SQL> UPDATE inventaris
  2  SET nomor_kursi = 'B1'
  3  WHERE id_inventaris = 'I01';

1 row updated.

SQL> SELECT * FROM transaksi;

KODE_ ID_JA ID_ME STATUS               TANGGAL   TOTAL_HARGA                    
----- ----- ----- -------------------- --------- -----------                    
TR01  J01   M01   Pending              01-JUN-25       50000                    

SQL> SELECT * FROM inventaris;

ID_IN ID_TH NOMOR                                                               
----- ----- -----                                                               
I01   T01   B1                                                                  
I02   T01   A2                                                                  

SQL> SELECT * FROM member;

ID_ME NAMA                                               NO_HP                  
----- -------------------------------------------------- ---------------        
TGL_LAHIR EMAIL                                                                 
--------- --------------------------------------------------                    
M01   Andi                                               081111111111           
10-MAY-00 andi@email.com                                                        
                                                                                
M02   Sinta                                              082345678901           
15-AUG-01 sinta@email.com                                                       
                                                                                

SQL> SELECT * FROM theater;

ID_TH      HARGA  KAPASITAS KELAS                                               
----- ---------- ---------- --------------------                                
T01        60000        100 Regular                                             
T02        75000         80 VIP                                                 

SQL> SELECT * FROM film;

ID_FI JUDUL                                                                     
----- --------------------------------------------------                        
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
F01   Avengers                                                                  
Film superhero Marvel                                                           
      2019        185                                                           
                                                                                
F02   Frozen                                                                    
Film animasi Disney                                                             
      2018        120                                                           

ID_FI JUDUL                                                                     
----- --------------------------------------------------                        
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
                                                                                

SQL> DELETE FROM inventaris
  2  WHERE id_inventaris = 'I02';

1 row deleted.

SQL> DELETE FROM transaksi
  2  WHERE kode_pemesanan = 'TR02';

0 rows deleted.

SQL> DELETE FROM transaksi
  2  WHERE kode_pemesanan = 'TR01';

1 row deleted.

SQL> SELECT * FROM inventaris;

ID_IN ID_TH NOMOR                                                               
----- ----- -----                                                               
I01   T01   B1                                                                  

SQL> SELECT * FROM transaksi;

no rows selected

SQL> SPOOL OFF


