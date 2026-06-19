-- Profile Pemateri: Sutikno Sofjan, CEO Kota Awan

-- Chapter 1: Perkenalan
--- Mengenal Fungsi Operasi yang Berhubungan dengan Teks
-- 1. Mengonversi Format Teks
-- a. LCASE(string)/LOWER(string)	
SELECT LCASE(‘ABC’); -- Hasilnya : abc
SELECT LOWER(‘ABC’); -- Hasilnya : abc

-- b. UCASE(string)/UPPER(string)	
SELECT UCASE(‘abc’); -- Hasilnya : ABC
SELECT UPPER(‘abc’); -- Hasilnya : ABC

-- 2. Mengambil Sebagian Teks
-- a. LEFT(string, int_jumlah)
SELECT LEFT(‘ABCDEFGHIJK’, 5); -- Hasil nya : ABCDE

-- b. RIGHT(string, int_jumlah)
SELECT RIGHT(‘ABCDEFGHIJK’, 5); -- Hasil nya : GHIJK

-- c. SUBSTR(string, int_mulai, [ int_jumlah ])
SELECT SUBSTR(‘ABCDEFGHIJK’, 3); -- Hasil nya : CDEFGHIJK
SELECT SUBSTR(‘ABCDEFGHIJK’, 5, 3); -- Hasil nya : EFG

-- 3. Menggabungkan teks dengan teks lainnya
SELECT CONCAT(‘ABC’, ‘DeF’,’123’) -- Hasilnya : ABCDeF123

-- 4. Menggabungkan teks dengan teks lainnya disertai separator
SELECT CONCAT_WS(‘-’, ‘ABC’, ‘DeF’,’123’) -- Hasilnya : ABC-DeF-123

-- 5. Mengonversi Tipe data
-- a. ASCII, ORD (karakter) 
SELECT ASCII(‘A’) -- Hasilnya : 65
SELECT ASCII(‘a’) -- Hasil nya : 97
SELECT ASCII(‘5’) -- Hasil nya : 53
SELECT ORD(‘A’) -- Hasil nya : 65

-- b. CHAR (angka)
SELECT CHAR(66) -- Hasilnya : B

-- c. HEX (Bilangan atau String)
SELECT HEX(157) -- Hasilnya : 9D
SELECT HEX(‘Q’) -- Hasilnya : 51

-- d. BIN(angka)
SELECT BIN(8) -- Hasil nya : 1000

-- Mengenal Fungsi Operasi Teks Lanjutan
-- 1. Menyisipkan atau mengganti karakter tertentu pada teks
INSERT(string, int_mulai , int_jumlah, string_baru)
SELECT INSERT(‘BungaHijau’, 5, 0, ‘Ku’) -- Hasil nya : BungaKuHijau
SELECT INSERT(‘BungaHijau’, 5, 2,’Ku’) -- Hasilnya : BungaKujau

-- 2. Menghitung panjang teks
SELECT LENGTH(‘BungaHijau’) -- Hasilnya : 10

-- 3. Mencari posisi suatu teks pada teks
SELECT LOCATE(‘ga’, ‘BungaHijau’) -- Hasil nya : 4

-- 4. Menghilangkan spasi kosong pada teks di kiri
SELECT LTRIM(‘ ABCD EFGH ’) -- Hasil nya : ‘ABCD EFGH’

-- 5. Menghilangkan spasi kosong pada teks di kanan
SELECT RTRIM(‘ ABCD EFGH ‘) -- Hasil nya : ‘ ABCD EFGH’

-- 6. Menghilangkan spasi kosong pada teks di kiri, kanan teks
SELECT TRIM(‘ ABCD EFGH ‘) -- Hasil nya : ‘ABCD EFGH’

-- 7. Mengubah teks dengan teks lain
SELECT REPLACE('SQL.Tutorial.com', '.', '_dot_') -- Hasil nya : SQL_dot_Tutorial_dot_com

-- 8. Mengulangi suatu teks sejumlah tertentu
SELECT REPEAT(‘ABC’, 3) -- Hasil nya : ABCABCABC

-- Beberapa Query SQL Dasar untuk CRUD (Create, Read, Update, Delete)
-- 1. Membuat database baru	
CREATE DATABASE `namadatabase`;

-- 2. Membuat tabel baru	
CREATE TABLE `namatabel`(field_1 tipedata_1, field_2 tipedata_2, field_n tipedata_n);

-- 3. Menambah data ke dalam tabel	
INSERT INTO `namatabel`(field_1, …, field_n) VALUES(‘value_1’, …, ‘value_n’);

-- 4. Mengambil data dari tabel	
SELECT `field_1`, ..., `field_n` FROM `namatabel` WHERE `kondisi` = ’value’;
untuk operator = bisa diubah dengan operator lain nya (=, >, <, not, dll)

-- 5. Ubah data ke dalam tabel
UPDATE 'namatabel' SET 'field_1' = 'value_1', ..., 'field_n' = 'value_n' WHERE 'kondisi'= 'value';

-- 6. Hapus data dari tabel
DELETE FROM 'namatabel' WHERE 'kondisi' = 'value';

-- Subquery
-- 1. Menambah data hasil dari query
INSERT INTO `namatabel`(`field_1`, …, `field_n`) 
SELECT `field_1`, …, `field_n` FROM `namatabel` WHERE `kondisi`=’value’;

-- 2. Mengambil data hasil relasi dengan tabel lain
SELECT `namatabel1`.`field_1`, …, `field_n` FROM `namatabel1`,`namatabel2`
WHERE `namatabel1`.`field_relasi` = `namatabel2`.`field_relasi`;

-- 3. Mengambil data hasil join dengan tabel lain
-- INNER JOIN
SELECT `tabel1`.`field_1`, …, `field_n` FROM `namatabel1`
INNER JOIN
`namatabel2` ON (`namatabel2`.`field_relasi` = `namatabel1`.`field_relasi`);

-- OUTER JOIN
SELECT `tabel1`.`field_1`, …, `field_n` FROM `namatabel1`
OUTER JOIN 
`namatabel2` ON (`namatabel2`.`field_relasi` = `namatabel1`.`field_relasi`);

-- LEFT JOIN
SELECT `tabel1`.`field_1`, …, `field_n` FROM `namatabel1`
LEFT JOIN 
`namatabel2` ON (`namatabel2`.`field_relasi` = `namatabel1`.`field_relasi`);

-- RIGHT JOIN
SELECT `tabel1`.`field_1`, …, `field_n` FROM `namatabel1`
RIGHT JOIN
`namatabel2` ON (`namatabel2`.`field_relasi` = `namatabel1`.`field_relasi`);

-- CROSS JOIN
SELECT `tabel1`.`field_1`, …, `field_n` FROM `namatabel1`
CROSS JOIN `namatabel2`;

-- Perintah Query SQL Lebih Lanjut - CASE WHEN
SELECT 'field_1', ..., 'field_n',
CASE
    WHEN option_1 THEN result_1
    ...
    WHEN option_n THEN result_n
END
FROM 'namatabel' ...;

SELECT 'kode', 'nama',
CASE
    WHEN  'jenis_kelamin' = 'L' THEN 'Lelaki'
    WHEN 'jenis_kelamin' = 'P' THEN 'Perempuan'
END
FROM 'tabel_user';

-- Perintah Query SQL Lebih Lanjut - WHERE LIKE
SELECT 'field_1', ..., 'field_n'
FROM 'namatabel'
WHERE 'field_kunci' LIKE '%keyword%';

-- Contoh :
SELECT 'Nama'
FROM 'tabel_user'
WHERE 'nama' LIKE '%Budi%';

-- Chapter 2: Latihan Bagian Pertama
-- Membaca Data
SELECT * FROM dqlabdatateks;

-- Latihan 1
SELECT LOCATE('|||', isi) as posisi_1
FROM dqlabdatateks;

-- Latihan 2
SELECT LOCATE('|||', isi, LOCATE('|||',isi) + 1) as posisi_2
FROM dqlabdatateks;

-- Latihan 3
SELECT LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) as posisi_3
FROM dqlabdatateks;

-- Latihan 4
SELECT LEFT(isi, LOCATE('|||', isi) -1) as Nama
FROM dqlabdatateks;

-- Latihan 5
SELECT SUBSTR(isi, LOCATE('|||', isi) + 3, LOCATE('|||', isi, LOCATE('|||', isi) + 1) - LOCATE('|||', isi) - 3) as KotaLahir
FROM dqlabdatateks;

-- Latihan 6
SELECT SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, 
LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3) as TanggalLahir
FROM dqlabdatateks;

-- Latihan 7
SELECT RIGHT(isi, LENGTH(isi) - LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - 3 + 1) as Propinsi
FROM dqlabdatateks;

-- Chapter 3: Latihan Bagian Kedua
-- Latihan 1
SELECT CONCAT_WS(' - ',
SUBSTR(isi, LOCATE('|||', isi) + 3, LOCATE('|||', isi, LOCATE('|||', isi) + 1) - LOCATE('|||', isi) - 3),
RIGHT(isi, LENGTH(isi) - LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 3) + 1) - 3 + 1)) AS TempatLahir
FROM dqlabdatateks;

-- Latihan 2
SELECT LEFT(
SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 2) AS DD
FROM dqlabdatateks;

-- Latihan 3
SELECT RIGHT(
SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4) AS YYYY
FROM dqlabdatateks;

-- Latihan 4
SELECT SUBSTR(
SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 
4, 
LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3)) - 8) AS Bulan
FROM dqlabdatateks;

-- Latihan 5
SELECT CASE
    WHEN SUBSTR(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4, LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3)) - 8) = 'Januari' THEN '01'
    WHEN SUBSTR(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4, LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3)) - 8) = 'Februari' THEN '02'

    ELSE '00'
END AS MM
FROM dqlabdatateks;

-- Chapter 4: Mini Project
-- Mini Project - Bagian Pertama
SELECT 
LEFT(isi, LOCATE('|||', isi) - 1) as Nama,
SUBSTR(isi, LOCATE('|||', isi) + 3, LOCATE('|||', isi, LOCATE('|||', isi) + 1) - LOCATE('|||', isi) - 3) as KotaLahir,
SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, 
LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3) as TanggalLahir,
RIGHT(isi, LENGTH(isi) - LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - 3 + 1) as Propinsi
FROM dqlabdatateks;

-- Mini Project - Bagian Kedua
SELECT 
LEFT(isi, LOCATE('|||', isi) - 1) as Nama, 
CONCAT_WS(' - ', SUBSTR(isi, LOCATE('|||', isi) + 3, LOCATE('|||', isi, LOCATE('|||', isi) + 1) - LOCATE('|||', isi) - 3),
RIGHT(isi, LENGTH(isi) - LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - 3 + 1)) AS TempatLahir,
CONCAT_WS('-', LEFT(
SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 2),
CASE
WHEN SUBSTR(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4, LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3)) - 8) = 'Januari' THEN '01'
WHEN SUBSTR(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4, LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3)) - 8) = 'Februari' THEN '02'
WHEN SUBSTR(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4, LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3)) - 8) = 'Maret' THEN '03'
WHEN SUBSTR(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4, LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3)) - 8) = 'April' THEN '04'

WHEN SUBSTR(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4, LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3)) - 8) = 'Mei' THEN '05'
WHEN SUBSTR(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4, LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3)) - 8) = 'Juni' THEN '06'
WHEN SUBSTR(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4, LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3)) - 8) = 'Juli' THEN '07'
WHEN SUBSTR(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4, LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3)) - 8) = 'Agustus' THEN '08'
WHEN SUBSTR(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4, LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3)) - 8) = 'September' THEN '09'
WHEN SUBSTR(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4, LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3)) - 8) = 'Oktober' THEN '10'
WHEN SUBSTR(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4, LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3)) - 8) = 'November' THEN '11'
WHEN SUBSTR(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4, LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3)) - 8) = 'Desember' THEN '12'
ELSE '00'
END, 
RIGHT(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4)) as TanggalLahir
FROM dqlabdatateks;

-- Note: For my certificates of completion, check README.md
-- Thank you.
