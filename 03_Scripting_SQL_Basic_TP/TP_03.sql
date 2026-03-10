SQL> SPOOL D:\record\TP_03
SQL> -- Nama: Marta Safitri
SQL> -- NIM: 103122400047
SQL> CREATE TABLE mahasiswa (
  2  id NUMBER PRIMARY KEY,
  3  nama VARCHAR2(50),
  4  tempat_lahir VARCHAR2(30),
  5  tanggal_lahir DATE,
  6  nomor_hp VARCHAR2(15),
  7  email VARCHAR2(50),
  8  tinggi_badan NUMBER,
  9  berat_badan NUMBER
 10  );
CREATE TABLE mahasiswa (
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object


SQL> desc mahasiswa;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL NUMBER
 NAMA                                               VARCHAR2(50)
 TEMPAT_LAHIR                                       VARCHAR2(50)
 TANGGAL_LAHIR                                      DATE
 NOMOR_HP                                           VARCHAR2(15)
 EMAIL                                              VARCHAR2(50)
 TINGGI_BADAN                                       NUMBER
 BERAT_BADAN                                        NUMBER

SQL> INSERT INTO mahasiswa VALUES (3,'Andi Saputra','Surabaya',TO_DATE('10-11-2001','DD-MM-YYYY'),'083456789123','andi@gmail.com',172,68);

1 row created.

SQL> INSERT INTO mahasiswa VALUES (4,'Rina Putri','Semarang',TO_DATE('05-01-2003','DD-MM-YYYY'),'084567891234','rina@gmail.com',158,50);

1 row created.

SQL> INSERT INTO mahasiswa VALUES (1,'Budi Santoso','Bandung',TO_DATE('21-08-2001','DD-MM-YYYY'),'081234567891','budi@gmail.com',170,65);

1 row created.

SQL> INSERT INTO mahasiswa VALUES (2,'Siti Aminah','Jakarta',TO_DATE('15-03-2002','DD-MM-YYYY'),'082345678912','siti@gmail.com',160,55);

1 row created.

SQL> INSERT INTO mahasiswa VALUES (5,'Dedi Kurniawan','Yogyakarta',TO_DATE('12-07-2002','DD-MM-YYYY'),'085678912345','dedi@gmail.com',175,70);

1 row created.

SQL> INSERT INTO mahasiswa VALUES (6,'Lina Marlina','Malang',TO_DATE('20-02-2001','DD-MM-YYYY'),'086789123456','lina@gmail.com',162,52);

1 row created.

SQL> INSERT INTO mahasiswa VALUES (7,'Agus Setiawan','Solo',TO_DATE('18-06-2002','DD-MM-YYYY'),'087891234567','agus@gmail.com',168,64);

1 row created.

SQL> INSERT INTO mahasiswa VALUES (8,'Dina Rahmawati','Bandung',TO_DATE('22-09-2003','DD-MM-YYYY'),'088912345678','dina@gmail.com',159,53);

1 row created.

SQL> INSERT INTO mahasiswa VALUES (9,'Rudi Hartono','Medan',TO_DATE('11-04-2002','DD-MM-YYYY'),'089123456789','rudi@gmail.com',174,72);

1 row created.

SQL> INSERT INTO mahasiswa VALUES (10,'Tina Kartika','Bogor',TO_DATE('07-12-2001','DD-MM-YYYY'),'081234567800','tina@gmail.com',161,54);

1 row created.

SQL> INSERT INTO mahasiswa VALUES (11,'Farhan Hakim','Depok',TO_DATE('14-10-2002','DD-MM-YYYY'),'081345678900','farhan@gmail.com',173,67);

1 row created.

SQL> INSERT INTO mahasiswa VALUES (12,'Salsa Nabila','Bekasi',TO_DATE('09-03-2003','DD-MM-YYYY'),'082456789011','salsa@gmail.com',157,49);

1 row created.

SQL> INSERT INTO mahasiswa VALUES (13,'Iqbal Ramadhan','Padang',TO_DATE('30-05-2001','DD-MM-YYYY'),'083567890122','iqbal@gmail.com',176,71);

1 row created.

SQL> INSERT INTO mahasiswa VALUES (14,'Maya Sari','Lampung',TO_DATE('02-02-2002','DD-MM-YYYY'),'084678901233','maya@gmail.com',160,56);

1 row created.

SQL> INSERT INTO mahasiswa VALUES (15,'Hendra Wijaya','Palembang',TO_DATE('17-08-2003','DD-MM-YYYY'),'085789012344','hendra@gmail.com',178,75);

1 row created.

SQL> SELECT * FROM mahasiswa;

        ID NAMA
---------- --------------------------------------------------
TEMPAT_LAHIR                                       TANGGAL_L NOMOR_HP
-------------------------------------------------- --------- ---------------
EMAIL                                              TINGGI_BADAN BERAT_BADAN
-------------------------------------------------- ------------ -----------
         3 Andi Saputra
Surabaya                                           10-NOV-01 083456789123
andi@gmail.com                                              172          68

         4 Rina Putri
Semarang                                           05-JAN-03 084567891234
rina@gmail.com                                              158          50

        ID NAMA
---------- --------------------------------------------------
TEMPAT_LAHIR                                       TANGGAL_L NOMOR_HP
-------------------------------------------------- --------- ---------------
EMAIL                                              TINGGI_BADAN BERAT_BADAN
-------------------------------------------------- ------------ -----------

         1 Budi Santoso
Bandung                                            21-AUG-01 081234567891
budi@gmail.com                                              170          65

         2 Siti Aminah
Jakarta                                            15-MAR-02 082345678912

        ID NAMA
---------- --------------------------------------------------
TEMPAT_LAHIR                                       TANGGAL_L NOMOR_HP
-------------------------------------------------- --------- ---------------
EMAIL                                              TINGGI_BADAN BERAT_BADAN
-------------------------------------------------- ------------ -----------
siti@gmail.com                                              160          55

         5 Dedi Kurniawan
Yogyakarta                                         12-JUL-02 085678912345
dedi@gmail.com                                              175          70

         6 Lina Marlina

        ID NAMA
---------- --------------------------------------------------
TEMPAT_LAHIR                                       TANGGAL_L NOMOR_HP
-------------------------------------------------- --------- ---------------
EMAIL                                              TINGGI_BADAN BERAT_BADAN
-------------------------------------------------- ------------ -----------
Malang                                             20-FEB-01 086789123456
lina@gmail.com                                              162          52

         7 Agus Setiawan
Solo                                               18-JUN-02 087891234567
agus@gmail.com                                              168          64


        ID NAMA
---------- --------------------------------------------------
TEMPAT_LAHIR                                       TANGGAL_L NOMOR_HP
-------------------------------------------------- --------- ---------------
EMAIL                                              TINGGI_BADAN BERAT_BADAN
-------------------------------------------------- ------------ -----------
         8 Dina Rahmawati
Bandung                                            22-SEP-03 088912345678
dina@gmail.com                                              159          53

         9 Rudi Hartono
Medan                                              11-APR-02 089123456789
rudi@gmail.com                                              174          72

        ID NAMA
---------- --------------------------------------------------
TEMPAT_LAHIR                                       TANGGAL_L NOMOR_HP
-------------------------------------------------- --------- ---------------
EMAIL                                              TINGGI_BADAN BERAT_BADAN
-------------------------------------------------- ------------ -----------

        10 Tina Kartika
Bogor                                              07-DEC-01 081234567800
tina@gmail.com                                              161          54

        11 Farhan Hakim
Depok                                              14-OCT-02 081345678900

        ID NAMA
---------- --------------------------------------------------
TEMPAT_LAHIR                                       TANGGAL_L NOMOR_HP
-------------------------------------------------- --------- ---------------
EMAIL                                              TINGGI_BADAN BERAT_BADAN
-------------------------------------------------- ------------ -----------
farhan@gmail.com                                            173          67

        12 Salsa Nabila
Bekasi                                             09-MAR-03 082456789011
salsa@gmail.com                                             157          49

        13 Iqbal Ramadhan

        ID NAMA
---------- --------------------------------------------------
TEMPAT_LAHIR                                       TANGGAL_L NOMOR_HP
-------------------------------------------------- --------- ---------------
EMAIL                                              TINGGI_BADAN BERAT_BADAN
-------------------------------------------------- ------------ -----------
Padang                                             30-MAY-01 083567890122
iqbal@gmail.com                                             176          71

        14 Maya Sari
Lampung                                            02-FEB-02 084678901233
maya@gmail.com                                              160          56


        ID NAMA
---------- --------------------------------------------------
TEMPAT_LAHIR                                       TANGGAL_L NOMOR_HP
-------------------------------------------------- --------- ---------------
EMAIL                                              TINGGI_BADAN BERAT_BADAN
-------------------------------------------------- ------------ -----------
        15 Hendra Wijaya
Palembang                                          17-AUG-03 085789012344
hendra@gmail.com                                            178          75


15 rows selected.

SQL> SELECT LOWER(nama) FROM mahasiswa;

LOWER(NAMA)
--------------------------------------------------
andi saputra
rina putri
budi santoso
siti aminah
dedi kurniawan
lina marlina
agus setiawan
dina rahmawati
rudi hartono
tina kartika
farhan hakim

LOWER(NAMA)
--------------------------------------------------
salsa nabila
iqbal ramadhan
maya sari
hendra wijaya

15 rows selected.

SQL> SELECT UPPER(nama) FROM mahasiswa;

UPPER(NAMA)
--------------------------------------------------
ANDI SAPUTRA
RINA PUTRI
BUDI SANTOSO
SITI AMINAH
DEDI KURNIAWAN
LINA MARLINA
AGUS SETIAWAN
DINA RAHMAWATI
RUDI HARTONO
TINA KARTIKA
FARHAN HAKIM

UPPER(NAMA)
--------------------------------------------------
SALSA NABILA
IQBAL RAMADHAN
MAYA SARI
HENDRA WIJAYA

15 rows selected.

SQL> SELECT INITCAP(nama) FROM mahasiswa;

INITCAP(NAMA)
--------------------------------------------------
Andi Saputra
Rina Putri
Budi Santoso
Siti Aminah
Dedi Kurniawan
Lina Marlina
Agus Setiawan
Dina Rahmawati
Rudi Hartono
Tina Kartika
Farhan Hakim

INITCAP(NAMA)
--------------------------------------------------
Salsa Nabila
Iqbal Ramadhan
Maya Sari
Hendra Wijaya

15 rows selected.

SQL> SELECT CONCAT(nama, tempat_lahir) FROM mahasiswa;

CONCAT(NAMA,TEMPAT_LAHIR)
--------------------------------------------------------------------------------
Andi SaputraSurabaya
Rina PutriSemarang
Budi SantosoBandung
Siti AminahJakarta
Dedi KurniawanYogyakarta
Lina MarlinaMalang
Agus SetiawanSolo
Dina RahmawatiBandung
Rudi HartonoMedan
Tina KartikaBogor
Farhan HakimDepok

CONCAT(NAMA,TEMPAT_LAHIR)
--------------------------------------------------------------------------------
Salsa NabilaBekasi
Iqbal RamadhanPadang
Maya SariLampung
Hendra WijayaPalembang

15 rows selected.

SQL> SELECT nama, LENGTH(nama) FROM mahasiswa;

NAMA                                               LENGTH(NAMA)
-------------------------------------------------- ------------
Andi Saputra                                                 12
Rina Putri                                                   10
Budi Santoso                                                 12
Siti Aminah                                                  11
Dedi Kurniawan                                               14
Lina Marlina                                                 12
Agus Setiawan                                                13
Dina Rahmawati                                               14
Rudi Hartono                                                 12
Tina Kartika                                                 12
Farhan Hakim                                                 12

NAMA                                               LENGTH(NAMA)
-------------------------------------------------- ------------
Salsa Nabila                                                 12
Iqbal Ramadhan                                               14
Maya Sari                                                     9
Hendra Wijaya                                                13

15 rows selected.

SQL> SELECT SUBSTR(nama,1,4) FROM mahasiswa;

SUBSTR(NAMA,1,4)
----------------
Andi
Rina
Budi
Siti
Dedi
Lina
Agus
Dina
Rudi
Tina
Farh

SUBSTR(NAMA,1,4)
----------------
Sals
Iqba
Maya
Hend

15 rows selected.

SQL> SELECT LPAD(nama,10,'*') FROM mahasiswa;

LPAD(NAMA,10,'*')
----------------------------------------
Andi Saput
Rina Putri
Budi Santo
Siti Amina
Dedi Kurni
Lina Marli
Agus Setia
Dina Rahma
Rudi Harto
Tina Karti
Farhan Hak

LPAD(NAMA,10,'*')
----------------------------------------
Salsa Nabi
Iqbal Rama
*Maya Sari
Hendra Wij

15 rows selected.

SQL> SELECT LTRIM('   Budi') FROM dual;

LTRI
----
Budi

SQL> SELECT RTRIM('Budi   ') FROM dual;

RTRI
----
Budi

SQL> SELECT nama, INSTR(nama,'a') FROM mahasiswa;

NAMA                                               INSTR(NAMA,'A')
-------------------------------------------------- ---------------
Andi Saputra                                                     7
Rina Putri                                                       4
Budi Santoso                                                     7
Siti Aminah                                                     10
Dedi Kurniawan                                                  11
Lina Marlina                                                     4
Agus Setiawan                                                   10
Dina Rahmawati                                                   4
Rudi Hartono                                                     7
Tina Kartika                                                     4
Farhan Hakim                                                     2

NAMA                                               INSTR(NAMA,'A')
-------------------------------------------------- ---------------
Salsa Nabila                                                     2
Iqbal Ramadhan                                                   4
Maya Sari                                                        2
Hendra Wijaya                                                    6

15 rows selected.

SQL> SELECT REPLACE(nama,'a','@') FROM mahasiswa;

REPLACE(NAMA,'A','@')
--------------------------------------------------
Andi S@putr@
Rin@ Putri
Budi S@ntoso
Siti Amin@h
Dedi Kurni@w@n
Lin@ M@rlin@
Agus Seti@w@n
Din@ R@hm@w@ti
Rudi H@rtono
Tin@ K@rtik@
F@rh@n H@kim

REPLACE(NAMA,'A','@')
--------------------------------------------------
S@ls@ N@bil@
Iqb@l R@m@dh@n
M@y@ S@ri
Hendr@ Wij@y@

15 rows selected.

SQL> SELECT tanggal_lahir,
  2  TO_CHAR(tanggal_lahir,'MM') AS bulan
  3  FROM mahasiswa;

TANGGAL_L BU
--------- --
10-NOV-01 11
05-JAN-03 01
21-AUG-01 08
15-MAR-02 03
12-JUL-02 07
20-FEB-01 02
18-JUN-02 06
22-SEP-03 09
11-APR-02 04
07-DEC-01 12
14-OCT-02 10

TANGGAL_L BU
--------- --
09-MAR-03 03
30-MAY-01 05
02-FEB-02 02
17-AUG-03 08

15 rows selected.

SQL> SELECT tanggal_lahir,
  2  TO_CHAR(tanggal_lahir,'DD') AS hari
  3  FROM mahasiswa;

TANGGAL_L HA
--------- --
10-NOV-01 10
05-JAN-03 05
21-AUG-01 21
15-MAR-02 15
12-JUL-02 12
20-FEB-01 20
18-JUN-02 18
22-SEP-03 22
11-APR-02 11
07-DEC-01 07
14-OCT-02 14

TANGGAL_L HA
--------- --
09-MAR-03 09
30-MAY-01 30
02-FEB-02 02
17-AUG-03 17

15 rows selected.

SQL> SELECT tanggal_lahir,
  2  TO_CHAR(tanggal_lahir,'YYYY') AS tahun
  3  FROM mahasiswa;

TANGGAL_L TAHU
--------- ----
10-NOV-01 2001
05-JAN-03 2003
21-AUG-01 2001
15-MAR-02 2002
12-JUL-02 2002
20-FEB-01 2001
18-JUN-02 2002
22-SEP-03 2003
11-APR-02 2002
07-DEC-01 2001
14-OCT-02 2002

TANGGAL_L TAHU
--------- ----
09-MAR-03 2003
30-MAY-01 2001
02-FEB-02 2002
17-AUG-03 2003

15 rows selected.

SQL> SELECT TO_CHAR(SYSDATE,'AM') FROM dual;

TO
--
AM

SQL> SELECT TO_CHAR(SYSDATE,'SS') FROM dual;

TO
--
20

SQL> SELECT ADD_MONTHS(tanggal_lahir,6) FROM mahasiswa;

ADD_MONTH
---------
10-MAY-02
05-JUL-03
21-FEB-02
15-SEP-02
12-JAN-03
20-AUG-01
18-DEC-02
22-MAR-04
11-OCT-02
07-JUN-02
14-APR-03

ADD_MONTH
---------
09-SEP-03
30-NOV-01
02-AUG-02
17-FEB-04

15 rows selected.

SQL> SELECT SYSDATE FROM dual;

SYSDATE
---------
10-MAR-26

SQL> SELECT LAST_DAY(tanggal_lahir) FROM mahasiswa;

LAST_DAY(
---------
30-NOV-01
31-JAN-03
31-AUG-01
31-MAR-02
31-JUL-02
28-FEB-01
30-JUN-02
30-SEP-03
30-APR-02
31-DEC-01
31-OCT-02

LAST_DAY(
---------
31-MAR-03
31-MAY-01
28-FEB-02
31-AUG-03

15 rows selected.

SQL> SELECT NEXT_DAY(tanggal_lahir,'MONDAY') FROM mahasiswa;

NEXT_DAY(
---------
12-NOV-01
06-JAN-03
27-AUG-01
18-MAR-02
15-JUL-02
26-FEB-01
24-JUN-02
29-SEP-03
15-APR-02
10-DEC-01
21-OCT-02

NEXT_DAY(
---------
10-MAR-03
04-JUN-01
04-FEB-02
18-AUG-03

15 rows selected.

SQL> SELECT MONTHS_BETWEEN(SYSDATE,tanggal_lahir) FROM mahasiswa;

MONTHS_BETWEEN(SYSDATE,TANGGAL_LAHIR)
-------------------------------------
                                  292
                            278.17275
                           294.656621
                           287.850169
                           283.946943
                           300.688879
                           284.753395
                           269.624363
                           286.979201
                           291.108234
                           280.882427

MONTHS_BETWEEN(SYSDATE,TANGGAL_LAHIR)
-------------------------------------
                           276.043718
                           297.366298
                           289.269524
                           270.785653

15 rows selected.

SQL> SELECT ROUND(tanggal_lahir,'MONTH') FROM mahasiswa;

ROUND(TAN
---------
01-NOV-01
01-JAN-03
01-SEP-01
01-MAR-02
01-JUL-02
01-MAR-01
01-JUL-02
01-OCT-03
01-APR-02
01-DEC-01
01-OCT-02

ROUND(TAN
---------
01-MAR-03
01-JUN-01
01-FEB-02
01-SEP-03

15 rows selected.

SQL> SELECT ROUND(tanggal_lahir,'YEAR') FROM mahasiswa;

ROUND(TAN
---------
01-JAN-02
01-JAN-03
01-JAN-02
01-JAN-02
01-JAN-03
01-JAN-01
01-JAN-02
01-JAN-04
01-JAN-02
01-JAN-02
01-JAN-03

ROUND(TAN
---------
01-JAN-03
01-JAN-01
01-JAN-02
01-JAN-04

15 rows selected.

SQL> SELECT ABS(-10) FROM dual;

  ABS(-10)
----------
        10

SQL> SELECT TO_NUMBER('12345') FROM dual;

TO_NUMBER('12345')
------------------
             12345

SQL> SELECT TO_CHAR(SYSDATE,'DD-MM-YYY') FROM dual;

TO_CHAR(S
---------
10-03-026

SQL> SELECT TO_CHAR(SYSDATE,'DD-MM-YYYY') FROM dual;

TO_CHAR(SY
----------
10-03-2026

SQL> SELECT TO_CHAR(tinggi_badan) FROM mahasiswa;

TO_CHAR(TINGGI_BADAN)
----------------------------------------
172
158
170
160
175
162
168
159
174
161
173

TO_CHAR(TINGGI_BADAN)
----------------------------------------
157
176
160
178

15 rows selected.

SQL> SELECT TO_DATE('21-08-2001','DD-MM-YYYY') FROM dual;

TO_DATE('
---------
21-AUG-01

SQL> SELECT MOD(10,3) FROM dual;

 MOD(10,3)
----------
         1

SQL> SELECT FLOOR(12.7) FROM dual;

FLOOR(12.7)
-----------
         12

SQL> SELECT POWER(2,3) FROM dual;

POWER(2,3)
----------
         8

SQL> SELECT ROUND(12.456,2) FROM dual;

ROUND(12.456,2)
---------------
          12.46

SQL> SELECT CEIL(12.2) FROM dual;

CEIL(12.2)
----------
        13

SQL> SPOOL OFF