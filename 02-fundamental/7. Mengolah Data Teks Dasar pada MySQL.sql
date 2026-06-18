--- Profile Pemateri: 
/* Sutikno Sofjan
CEO Kota Awan

--- Chapter 1: Perkenalan
/* mengolah data dari satu table yang rada “aneh”, yaitu data table dqlabdatateks
sebagai seorang data engineer, perlu memahami bahwa pengolahan data teks itu sangat penting, untuk banyak analisa lanjutan menggunakan query SQL
Dalam beberapa kasus pengolahan data, pengenalan dan kemahiran mengolah data teks itu sangat berguna sekali, oleh karena itu kamu perlu mempelajari beberapa hal tentang data teks. 
Misalnya : ada data beberapa teks ingin digabungkan menjadi satu, hal ini dapat menggunakan fungsi menggabungkan beberapa string menggunakan CONCAT atau CONCAT_WS

--- Perkenalan Lanjutan
1. DBMS MySQL
2. Jenis Tipe Data Teks
3. Karakteristik Tipe Data Teks
4. Mengenal fungsi operasi yang berhubungan dengan teks
5. Query SQL yang berhubungan dengan data teks

--- Mengenal DBMS dan Tipe Data
/* Berkenalan dengan DBMS MySQL
DBMS singkatan dari DataBase Manajemen System, atau Sistem Basis Data. Ada beberapa DBMS yang ada, salah satu nya bernama MySQL.
Dan untuk belajar DBMS MySQL, aku memulainya denganmengenal Tipe Data. Ada beberapa Tipe Data yang ada di MySQL.

Berkenalan dengan TIPE DATA
Tipe data adalah suatu atribut yang digunakan untuk mengidentifikasi tipe/jenis suatu data atau variabel. 
Suatu data yang telah didefinisikan tipe data-nya maka data tersebut memiliki suatu identitas yang berupa operasi apa saja yang memungkinkan untuk dilakukan oleh data tersebut.

Dalam sistem basis data, tipe data adalah suatu fungsi (function) yang digunakan untuk mengidentifikasi batasan suatu kolom dalam menyimpan dan penulisan format suatu data atau konten tertentu.

Penggunaan tipe data pada system basis data memiliki beberapa fungsi yaitu :
- Untuk memberikan batasan atau format pada kolom table suatu database.
- Untuk membatasi data yang di-insert pada suatu kolom.
- Memberikan dampak hasil yang konsisten pada suatu kolom.

--- Mengenal DBMS dan Tipe Data Lanjutan
/* Pada sistem basis data, tipe data terlihat seperti fungsi/function pada umumnya di pemrograman, 
oleh karena itu tipe data pada database ada yang wajib kamu set/tentukan nilai parameter, dan ada juga tipe data yang tidak memerlukan parameter

--- Tipe Data Teks
/* Beberapa Jenis Tipe Data Di MySQL
1. Tipe data Angka
digunakan untuk menyimpan nilai berupa angka.
terbagi menjadi beberapa jenis seperti : TINYINT, SMALLINT, MEDIUMINT, INT, BIGINT, FLOAT, DOUBLE, REAL, DECIMAL, NUMERIC
2. Tipe data Teks
menampung banyak karakter dengan jumlah maksimum data yang dapat ditampung yakni sebanyak 255 karakter.
Ada beberapa jenis tipe data teks : CHAR, VARCHAR, TINYTEXT, TEXT, MEDIUMTEXT, LONGTEXT.
3. Tipe data Waktu
menyimpan data yang berhubungan dengan waktu : tahun, bulan, tanggal, Jam, Menit, Detik.
Beberapa jenis tipe data waktu : DATE, TIME, DATETIME, YEAR.
4. Tipe data Blob
menampung gambar, music, video dan lain-lainnya.
Ada beberapa jenis tipe data Blob : BIT, TINYBLOB, BLOB, MEDIUMBLOB, LONGBLOB.

--- Karakteristik Data Text
/* Karakteristik Tipe Data Teks Di MySQL
1. CHAR
    Fungsi : menyimpan data teks dengan ukuran tetap
    Jangkauan : 0 s/d 255 karakter
2. VARCHAR
    Fungsi : menyimpan data teks dengan ukuran dinamis
    Jangkauan : 0 s/d 255 karakter (versi 4.x), 0 s/d 65.535 (versi 5.x)
3. TINYTEXT
    Fungsi : menyimpan data teks
    Jangkauan : 0 s/d 255 karakter
4. TEXT
    Fungsi : menyimpan data teks
    Jangkauan : 0 s/d 65.535 karakter
5. MEDIUMTEXT
    Fungsi : menyimpan data teks
    Jangkauan : 0 s/d 16.777.215 karakter
6. LONGTEXT
    Fungsi : menyimpan data teks
    Jangkauan : 0 s/d 4.294.967.295 karakter

--- Mengenal Fungsi Operasi yang Berhubungan dengan Teks
/* 1. Mengonversi Format Teks
Mengubah bentuk huruf, misalnya dari huruf besar menjadi huruf kecil atau sebaliknya.

a. LCASE(string)/LOWER(string)	
Mengonversi teks menjadi huruf kecil	

SELECT LCASE(‘ABC’);
Hasilnya : abc

SELECT LOWER(‘ABC’);
Hasilnya : abc

b. UCASE(string)/UPPER(string)	
Mengonversi teks menjadi huruf besar	

SELECT UCASE(‘abc’);
Hasilnya : ABC

SELECT UPPER(‘abc’);
Hasilnya : ABC

2. Mengambil Sebagian Teks
Mengambil sebagian karakter atau kata dari teks.

a. LEFT(string, int_jumlah)
Mengambil sejumlah karakter dari kiri teks	

SELECT LEFT(‘ABCDEFGHIJK’, 5);
Hasil nya : ABCDE

b. RIGHT(string, int_jumlah)
Mengambil sejumlah karakter dari kanan teks	

SELECT RIGHT(‘ABCDEFGHIJK’, 5);
Hasil nya : GHIJK

c. SUBSTR(string, int_mulai, [ int_jumlah ])
Mengambil sejumlah karakter tertentu (bisa dipinggir maupun di tengah)	

SELECT SUBSTR(‘ABCDEFGHIJK’, 3);
Hasil nya : CDEFGHIJK

SELECT SUBSTR(‘ABCDEFGHIJK’, 5, 3);
Hasil nya : EFG

3. Menggabungkan teks dengan teks lainnya

CONCAT(string_1, string_2, string_n)

SELECT CONCAT(‘ABC’, ‘DeF’,’123’)
Hasilnya : ABCDeF123

4. Menggabungkan teks dengan teks lainnya disertai separator

CONCAT_WS(separator, string_1, string_2, …, string_n)

SELECT CONCAT_WS(‘-’, ‘ABC’, ‘DeF’,’123’)
Hasilnya : ABC-DeF-123

5. Mengonversi Tipe data
a. ASCII(karakter)
ORD(karakter)

Mengonversi karakter ke dalam bentuk ASCII	
SELECT ASCII(‘A’)
Hasilnya : 65

SELECT ASCII(‘a’)
Hasil nya : 97

SELECT ASCII(‘5’)
Hasil nya : 53

SELECT ORD(‘A’)
Hasil nya : 65

b. CHAR(angka)
Mengonversi angka ke bentuk karakter (kebalikan dari fungsi ORD)	

SELECT CHAR(66)
Hasilnya : B

c. HEX(Bilangan atau String)
Mengonversi karakter ke bentuk Heksadesimal	

SELECT HEX(157)
Hasilnya : 9D

SELECT HEX(‘Q’)
Hasilnya : 51

d. BIN(angka)
Mengonversi bilangan decimal ke bilangan biner	

SELECT BIN(8)
Hasil nya : 1000

--- Penjelasan
/* 1. ASCII (Daftar Menu Rahasia)
Bayangkan kamu punya daftar menu rahasia di dapur. 
Kamu nggak mau orang tahu kamu lagi masak "Ayam", jadi kamu kasih kode.
ASCII itu adalah buku standar internasionalnya. 
Di buku ini disepakati kalau huruf 'A' itu kodenya 65, huruf 'B' itu 66, dan seterusnya.
Jadi, ASCII itu "kamus" yang nerjemahin huruf ke angka.

2. ORD (Order / Cek Kode)
ORD() itu fungsinya buat nanya.A
nalogi: Kamu pegang bahan "Garam", terus kamu nanya ke kepala koki, "Chef, kode buat Garam ini nomor berapa di buku menu?"
Di SQL/Python: ORD('A') bakal dijawab 65. Dia ngasih tahu kamu angka di balik huruf itu.

3. CHAR (Character / Panggil Bahan)
CHAR() itu kebalikannya ORD. Ini fungsinya buat manggil.
Analogi: Kamu teriak ke asisten dapur, "Eh, ambilin bahan nomor 65!". Terus asisten kamu bawain "Ayam".
Di SQL/Python: CHAR(65) bakal ngeluarin huruf 'A'.

4. HEX (Hexadecimal / Label Rak)
Nah, kalau HEX ini cuma cara nulis angka yang lebih "keren" dan ringkas buat komputer.
Kalau angka biasa (Desimal) itu itungannya 1-10.
Kalau Hexadecimal itu itungannya sampai 16 (0-9, terus lanjut A, B, C, D, E, F).
Analogi: Bayangkan di gudang toko bukumu, rak-raknya nggak dikasih nomor 1, 2, 3... tapi pake kode unik kayak 41 untuk 'A'.
Fungsi HEX() di SQL bakal ngerubah angka atau tulisan kamu jadi kode-kode aneh bin ajaib itu. 
Biasanya dipake biar data teks kamu aman dan nggak rusak pas dikirim-kirim antar server.

Gampangnya gini, Sya:
- ASCII dan ORD: Huruf -> Angka
- CHAR: Angka -> Huruf
- HEX: Huruf/Angka -> Kode Rahasia (Base-16)

--- Mengenal Fungsi Operasi Teks Lanjutan
/* 1. Menyisipkan atau mengganti karakter tertentu pada teks
INSERT(string, int_mulai , int_jumlah, string_baru)

int_jumlah = 0 (untuk menyisipkan)
int_jumlah > 0 (untuk mereplace)

SELECT INSERT(‘BungaHijau’, 5, 0, ‘Ku’)
Hasil nya : BungaKuHijau

SELECT INSERT(‘BungaHijau’, 5, 2,’Ku’)
Hasilnya : BungaKujau

2. Menghitung panjang teks
LENGTH(string)

SELECT LENGTH(‘BungaHijau’)
Hasilnya : 10

3. Mencari posisi suatu teks pada teks
LOCATE(substring, string)

SELECT LOCATE(‘ga’, ‘BungaHijau’)
Hasil nya : 4

4. Menghilangkan spasi kosong pada teks di kiri
LTRIM(string)

SELECT LTRIM(‘ ABCD EFGH ’)
Hasil nya : ‘ABCD EFGH’

5. Menghilangkan spasi kosong pada teks di kanan
RTRIM(string)

SELECT RTRIM(‘ ABCD EFGH ‘)
Hasil nya : ‘ ABCD EFGH’

6. Menghilangkan spasi kosong pada teks di kiri, kanan teks
TRIM(string)

SELECT TRIM(‘ ABCD EFGH ‘)
Hasil nya : ‘ABCD EFGH’

7. Mengubah teks dengan teks lain
REPLACE(string, string_awal, string_baru)

SELECT REPLACE('SQL.Tutorial.com', '.', '_dot_')
Hasil nya : SQL_dot_Tutorial_dot_com

8. Mengulangi suatu teks sejumlah tertentu
REPEAT(string, jumlah)

SELECT REPEAT(‘ABC’, 3)
Hasil nya : ABCABCABC

--- Beberapa Query SQL Dasar untuk CRUD
Dalam pengolahan data perintah SQL seringkali digunakan terutama untuk proses CRUD (Create, Read, Update, Delete)
1.. Membuat database baru	
CREATE DATABASE `namadatabase`;

2. Membuat tabel baru	
CREATE TABLE `namatabel`(field_1 tipedata_1, field_2 tipedata_2, field_n tipedata_n);

3. Menambah data ke dalam tabel	
INSERT INTO `namatabel`(field_1, …, field_n) VALUES(‘value_1’, …, ‘value_n’);

4. Mengambil data dari tabel	
SELECT `field_1`, ..., `field_n` FROM `namatabel` WHERE `kondisi` = ’value’;
untuk operator = bisa diubah dengan operator lain nya (=, >, <, not, dll)

5. Ubah data ke dalam tabel
UPDATE 'namatabel' SET 'field_1' = 'value_1', ..., 'field_n' = 'value_n' WHERE 'kondisi'= 'value';

6. Hapus data dari tabel
DELETE FROM 'namatabel' WHERE 'kondisi' = 'value';

--- Subquery
/* Subquery adalah Query di dalam Query.

1. Menambah data hasil dari query
INSERT INTO `namatabel`(`field_1`, …, `field_n`) 
SELECT `field_1`, …, `field_n` FROM `namatabel` WHERE `kondisi`=’value’;

2. Mengambil data hasil relasi dengan tabel lain
SELECT `namatabel1`.`field_1`, …, `field_n` FROM `namatabel1`,`namatabel2`
WHERE `namatabel1`.`field_relasi` = `namatabel2`.`field_relasi`;

3. Mengambil data hasil join dengan tabel lain

- INNER JOIN

SELECT `tabel1`.`field_1`, …, `field_n` FROM `namatabel1`
INNER JOIN
`namatabel2` ON (`namatabel2`.`field_relasi` = `namatabel1`.`field_relasi`);

- OUTER JOIN

SELECT `tabel1`.`field_1`, …, `field_n` FROM `namatabel1`
OUTER JOIN 
namatabel2` ON (`namatabel2`.`field_relasi` = `namatabel1`.`field_relasi`);

- LEFT JOIN

SELECT `tabel1`.`field_1`, …, `field_n` FROM `namatabel1`
LEFT JOIN 
`namatabel2` ON (`namatabel2`.`field_relasi` = `namatabel1`.`field_relasi`);

- RIGHT JOIN

SELECT `tabel1`.`field_1`, …, `field_n` FROM `namatabel1`
RIGHT JOIN
`namatabel2` ON (`namatabel2`.`field_relasi` = `namatabel1`.`field_relasi`);

- CROSS JOIN

SELECT `tabel1`.`field_1`, …, `field_n` FROM `namatabel1`
CROSS JOIN `namatabel2`;

--- Perintah Query SQL Lebih Lanjut - CASE WHEN
/* membuat pilihan

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

--- Perintah Query SQL Lebih Lanjut - WHERE LIKE
/* Dalam pengolahan data, seringkali saat mencari data tidak harus dengan keyword yang lengkap. Oleh karena itu dapat menggunakan kata kunci pencarian dibantu karakter ‘%’, di depan atau di belakang.

SELECT 'field_1', ..., 'field_n'
FROM 'namatabel'
WHERE 'field_kunci' LIKE '%keyword%';

Contoh :
Mencari data user yang namanya ada kata ‘Budi’

SELECT 'Nama'
FROM 'tabel_user'
WHERE 'nama' LIKE '%Budi%';

--- Chapter 2: Latihan Bagian Pertama
--- Membaca Data
/* pelajari dulu ya data yang ada di tabel dqlabdatateks
menggunakan fungsi SELECT untuk menampilkan data dari tabel

SELECT * FROM dqlabdatateks;

--- Latihan 1
Buatlah query, agar data dari tabel dqlabdatateks tersebut dapat menampilkan data yang lebih mudah dibaca : 

Nama : kata pertama, dari kiri hingga sebelum ‘|||’ ke-1
KotaLahir : kata kedua, diantara ‘|||’ ke-1 dan ‘|||’ ke-2
TanggalLahir : kata ketiga, diantara ‘|||’ ke-2 dan ‘|||’ ke-3
Propinsi : kata keempat, setelah ‘|||’ ke-3 hingga akhir

Latihan-1:
Kroma memberikan soal latihan pertama kepada Antara, yaitu cari posisi ‘|||’ ke-1 di field isi dari tabel dqlabdatateks

SELECT LOCATE('|||', isi) as posisi_1
FROM dqlabdatateks;

--- Latihan 2
/* Sekarang, coba cari posisi ‘|||’ ke-2 di field isi dari tabel dqlabdatateks!

SELECT LOCATE('|||', isi, LOCATE('|||',isi) + 1) as posisi_2
FROM dqlabdatateks;

Kenapa harus + 1?
Biar asisten kamu (si LOCATE) nggak berhenti di tempat yang sama lagi. 
Kita suruh dia melangkah satu karakter ke depan baru mulai nyari lagi.

LOCATE('|||', isi) -> Ini nyari yang pertama.
+ 1 -> Ini langkah "geser dikit" biar nggak ketemu yang itu-itu lagi.
LOCATE('|||', isi, ...) -> Ini perintah nyari yang kedua kalinya.

--- Latihan 3
/* Sekarang cari posisi ‘|||’ ke-3 di field isi dari tabel dqlabdatateks

SELECT LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) as posisi_3
FROM dqlabdatateks;

--- Latihan 4
/* Coba tampilkan data Nama di field isi dari tabel dqlabdatateks.
Untuk soal ini aku memberikan petunjuk: mulai dari kiri, sejumlah (posisi ‘|||’ ke-1 - 1)

SELECT LEFT(isi, LOCATE('|||', isi) -1) as Nama
FROM dqlabdatateks;

--- Latihan 5
/* Tampilkan data KotaLahir di field isi dari tabel dqlabdatateks.
Aku berikan petunjuk juga ya: setelah posisi ‘|||’ ke-1, sejumlah (posisi ‘|||’ ke-2 - posisi ‘|||’ ke-1

SELECT SUBSTR(isi, LOCATE('|||', isi) + 3, LOCATE('|||', isi, LOCATE('|||', isi) + 1) - LOCATE('|||', isi) - 3) as KotaLahir
FROM dqlabdatateks;

Kenapa rumusnya sepanjang itu?
Bayangkan kolom isi itu adalah satu paragraf panjang dalam draf bukumu, dan di tengahnya ada info Kota Lahir yang diapit oleh pembatas |||. 
Tugas kamu adalah "Menggunting" kata itu keluar.

1. SUBSTR(isi, ...): Ini adalah Gunting kita. Dia butuh tahu dua hal: Mulai potong dari mana? dan Berapa karakter yang mau dipotong?

2. LOCATE('|||', isi) + 3: Ini titik Mulai Gunting.
Kita cari posisi ||| pertama.
Kenapa + 3? Karena kita nggak mau guntingnya kena tanda |-nya. Kita mau geser 3 langkah ke depan supaya pas di huruf pertama nama kotanya.

3. LOCATE(..., + 1) - LOCATE(...) - 3: Ini bagian yang paling bikin pusing, kan? Ini adalah Lebar Potongan.
Rumusnya: (Posisi Akhir) - (Posisi Awal) - Panjang Pembatas.
Ibaratnya, kalau kamu tahu tanda ||| kedua ada di karakter ke-20, dan tanda ||| pertama ada di karakter ke-10, berarti panjang katanya sekitar 10. 
Tapi karena pembatasnya sendiri makan tempat 3 karakter, kita kurangi lagi 3 biar hasilnya bersih cuma nama kotanya doang.

--- Latihan 6
/* Tuliskan cara untuk menampilkan data TanggalLahir di field isi dari tabel dqlabdatateks.
Tak lupa aku memberikan petunjuk untuk Antara yaitu setelah posisi ‘|||’ ke-2, sejumlah (posisi ‘|||’ ke-3 - posisi ‘|||’ ke-2

SELECT SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, 
LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3) as TanggalLahir
FROM dqlabdatateks;

--- Latihan 7
/* Tampilkan data Propinsi di field isi dari tabel dqlabdatateks
Petunjuk untuk latihan ini adalah mulai dari kanan, sejumlah (panjang teks - posisi ‘|||’ ke-3

SELECT RIGHT(isi, LENGTH(isi) - LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - 3 + 1) as Propinsi
FROM dqlabdatateks;

--- Chapter 3: Latihan Bagian Kedua
--- Latihan 1
/* Mengambil data TempatLahir di field isi dari tabel dqlabdatateks

SELECT CONCAT_WS(' - ',
SUBSTR(isi, LOCATE('|||', isi) + 3, LOCATE('|||', isi, LOCATE('|||', isi) + 1) - LOCATE('|||', isi) - 3),
RIGHT(isi, LENGTH(isi) - LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 3) + 1) - 3 + 1)) AS TempatLahir
FROM dqlabdatateks;

--- Latihan 2
/* Aku meminta Antara untuk mengambil data DD di field isi dari tabel dqlabdatateks

SELECT LEFT(
SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 2) AS DD
FROM dqlabdatateks;

1. Masalah "Offset" (Titik Start Gunting)
Si chatbot bilang kamu pake + 2, padahal harusnya + 1 dan + 3.
Analogi Dapur: Bayangkan kamu mau memotong wortel yang ada label harganya. 
Kalau kamu naruh pisau pas di atas label (+2), labelnya ikut kepotong masuk masakan.
Logikanya: Kita harus geser pisau sedikit lebih jauh (+3) supaya bener-bener dapet huruf "D" di tulisan "DD", tanpa ada sisa-sisa tanda pagar | yang nempel.

2. Kenapa LEFT(..., isi) Itu Salah?
Ini kesalahan yang paling bikin kueri kamu "ngilang".
Analogi Buku: Kamu bilang ke asistenmu, "Tolong ambilin huruf dari depan kalimat ini sebanyak... [satu buku ini]". 
Si asisten pasti pusing karena kamu minta jumlah huruf sebanyak isi seluruh buku, padahal kamu cuma mau ambil 2 huruf (yaitu 'D' dan 'D').
Logikanya: Fungsi LEFT itu butuh angka, bukan kolom. Jadi harus ditulis LEFT(..., 2).

3. Masalah Pengurangan (-1 vs -3)
Ini soal presisi guntingan. Kalau kamu cuma kurangi 1, nanti potongan kamu masih nyisain karakter yang nggak perlu.
Kalau dikurangi 3, hasilnya bener-bener bersih cuma "DD" doang, sesuai pesanan menu.

intinya cuma: Cari alamatnya -> taruh guntingnya -> potong panjangnya -> ambil 2 huruf depannya.

--- Latihan 3
/* kita coba ya sekarang mengambil data YYYY di field isi dari tabel dqlabdatateks

SELECT RIGHT(
SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4) AS YYYY
FROM dqlabdatateks;

Guntingnya Pas (SUBSTR):
Di dalam SUBSTR itu, kamu udah berhasil nemuin "koordinat" yang tepat buat ngambil potongan teks yang mengandung YYYY (tahun). Kamu suruh SQL cari pagar ||| kedua, geser 3 langkah, terus hitung lebarnya sampai pagar ketiga.
Analogi Buku: Kamu udah tau bab mana yang mau dikutip, dan kamu udah tau dari kalimat mana sampai kalimat mana yang mau diambil.

Finishing yang Cantik (RIGHT):
Nah, ini kuncinya! Kamu pake fungsi RIGHT(..., 4).
Kenapa 4? Karena tahun itu isinya 4 digit (kayak 2024, 2025).
Kenapa RIGHT? Kamu bilang ke SQL: "Setelah dapet potongan teks yang panjang tadi, tolong ambilin 4 karakter paling kanan aja ya!".
Karena YYYY (Tahun) biasanya ada di bagian akhir blok data itu, maka fungsi RIGHT langsung nyamber angka tahunnya dengan akurat.

--- Latihan 4
/* Mengambil data Bulan di field isi dari tabel dqlabdatateks. 

Sudah muncul bulan tapi katanya salah:
SELECT SUBSTR(
SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 8), 
4, 
LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 3) - 1)) - 8) AS Bulan
FROM dqlabdatateks;

/* 
Oke, mari kita bahas perbedaan antara kode SQL yang kamu ketik dan kode jawaban.

1. **Pengurangan pada LOCATE**:
Di kode yang kamu ketik, ada bagian yang mengurangi nilai dari LOCATE dengan angka 8, sedangkan di kode jawaban, pengurangan tersebut diganti menjadi 3. Ini terjadi di dua tempat:
- Pertama, saat menghitung panjang substring yang diambil dari `isi` setelah menemukan lokasi kedua dari '|||'.
- Kedua, saat menghitung panjang substring di bagian kedua dari fungsi SUBSTR.

2. **Dampak dari Perubahan**:
Mengganti angka 8 dengan 3 berarti kamu mengambil substring yang lebih pendek di bagian yang diinginkan. Ini bisa menyebabkan hasil yang berbeda, terutama jika data yang ada di dalam `isi` memiliki format tertentu yang diharapkan.

Jadi, kesalahan utama di kode kamu adalah penggunaan angka yang salah dalam pengurangan saat mencari posisi substring. Pastikan untuk memeriksa logika di balik angka yang digunakan agar sesuai dengan format data yang kamu olah. Semoga ini membantu!

Jawaban yang benar:
SELECT SUBSTR(
SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 
4, 
LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3)) - 8) AS Bulan
FROM dqlabdatateks;

/* 1. Kenapa ada - 3 di dalam? (Proses "Memotong Bab")
Rumus yang di dalem (SUBSTR(isi, ..., - 3)) itu gunanya buat ngambil satu blok tanggal utuh (contoh: 25 Januari 2024) dari gudang teks yang luas.
Kenapa - 3? Karena tanda pembatasnya adalah ||| (ada 3 batang pagar).
Analoginya: Kamu mau memotong satu bab dari buku. Kamu tahu bab itu berakhir di tanda pembatas tertentu. Supaya tanda pembatasnya nggak ikut masuk ke potongan bab kamu, kamu harus mundurin guntingnya sebanyak 3 karakter. Jadi, hasilnya bersih: 25 Januari 2024.

2. Kenapa ada 4 setelah itu? (Proses "Masuk ke Inti Cerita")
Setelah dapet potongan 25 Januari 2024, kamu gak mau ambil angka 25-nya, kan?
Logikanya: Kamu suruh SQL, "Eh, dari potongan tanggal tadi, tolong dong mulai liat dari karakter ke-4 aja."
Hasilnya: SQL bakal ngelewatin 2 (karakter 1), 5 (karakter 2), dan spasi (karakter 3). Mata pisau kamu sekarang pas ada di huruf "J" pada kata "Januari".

3. Kenapa ada - 8 di paling belakang? (Proses "Membuang Ending")
Nah, sekarang pisaunya udah di huruf "J", tapi kalau gak distop, SQL bakal ambil semua sampe belakang (jadi Januari 2024). Kita kan cuma mau "Januari"-nya doang.
Kenapa - 8? Kita harus buang bagian belakangnya, yaitu: spasi (1), 2 (1), 0 (1), 2 (1), 4 (1). Lho, kok cuma 5?
Ingat: Tadi di depan kita udah "buang" 3 karakter (angka 25 dan spasi). Jadi total yang dibuang biar dapet sisa tengahnya doang adalah 8 karakter (3 di depan + 5 di belakang).

Analoginya: Kamu mau ambil nama tokoh di tengah kalimat. Kamu hapus 3 kata di depan, dan kamu hapus 5 kata di belakang. Sisa deh tuh nama tokohnya doang di tengah.

Kesimpulan:
Kueri ini sebenernya cuma teknik "Gunting Dua Kali".
Gunting pertama (-3) buat dapet blok tanggal yang bersih dari pagar.
Gunting kedua (4 dan -8) buat nyungkil kata di tengah-tengah (Bulan) dan ngebuang angka tanggal serta tahunnya.

--- Latihan 5
/* Gunakan CASE WHEN untuk mengubah data Bulan (Nama Bulan) menjadi Urutan Bulan (MM) di field isi dari tabel dqlabdatateks.
Untuk membantu Aksara, aku memberikan petunjuk : 

Januari = 01
Februari = 02
…
Desember = 12

Masih salah: 
SELECT CASE
WHEN
SUBSTR(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4, LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3)) - 8) = 'Januari'
THEN '01'

WHEN
SUBSTR(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4, LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3)) - 8) = 'Februari'
THEN '02'

ELSE '00'
END AS MM 
FROM dqlabdatateks;

Bener:
SELECT CASE
    WHEN SUBSTR(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4, LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3)) - 8) = 'Januari' THEN '01'
    WHEN SUBSTR(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4, LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3)) - 8) = 'Februari' THEN '02'

    ELSE '00'
END AS MM
FROM dqlabdatateks;

--- Chapter 4: Mini Project
--- Mini Project - Bagian Pertama
/* Nama : mulai dari kiri, sejumlah (posisi ‘|||’ ke-1 - 1)
KotaLahir : setelah posisi ‘|||’ ke-1, sejumlah (posisi ‘|||’ ke-2 - posisi ‘|||’ ke-1)
TanggalLahir : setelah posisi ‘|||’ ke-2, sejumlah (posisi ‘|||’ ke-3 - posisi ‘|||’ ke-2)
Propinsi : mulai dari kanan, sejumlah (panjang teks - posisi ‘|||’ ke-3)

Jika bingung menjawabnya, coba baca kembali : Latihan-1 hingga Latihan-7 pada Chapter Latihan Bagian Pertama

SELECT 
LEFT(isi, LOCATE('|||', isi) - 1) as Nama,
SUBSTR(isi, LOCATE('|||', isi) + 3, LOCATE('|||', isi, LOCATE('|||', isi) + 1) - LOCATE('|||', isi) - 3) as KotaLahir,
SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, 
LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3) as TanggalLahir,
RIGHT(isi, LENGTH(isi) - LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - 3 + 1) as Propinsi
FROM dqlabdatateks;

--- Mini Project - Bagian Kedua
/* Petunjuk: 

Nama : kata pertama, dari kiri hingga sebelum ‘|||’ ke-1
Format TempatLahir : Kota - Propinsi
Format TanggalLahir : DD-MM-YYYY

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

--- Hasil Belajarku
/* Wah senangnya! Aku telah berhasil menyelesaikan rangkaian pelajaran Mengolah Data Teks Dasar pada MySQL. Dari materi yang telah aku pelajari dan praktekkan, aku telah:

- Mampu memahami kenapa pengolahan teks sangat penting untuk banyak analisa lanjutan menggunakan query SQL
- Mengenal tipe data char, varchar dan text pada MySQL
- Mampu mengenal karakteristik table datalahir_teks_dqlab rencana pengolahannya. Ditekankan juga dataset ini berfungsi untuk belajar saja, namun teknik pengolahannya akan sangat berguna untuk banyak kasus riil yang akan dihadapi oleh peserta
- Mampu menggunakan operator LIKE pada konstruksi WHERE untuk filter data dengan pola tertentu
- Mampu menggunakan fungsi dasar pengolahan data teks pada MySQL sebagai berikut:
   - substring dan substring_index untuk memisahkan data awal yang semuanya ada dalam satu kolom dan dipisahkan dengan |||   
   - concat untuk menggabungkan data dari 2 (kota/kabupaten) dan propinsi sebagai satu kesatuan lokasi (Sebagai contoh: Malang dan Jawa Timur menjadi Malang, Jawa Timur)
   - menggunakan case … when ..., length, substring, dan replace untuk melakukan konversi format yang masih dalam bentuk format nama bulan menjadi format tanggal dengan angka semua (Sebagai contoh: 1 Januari 2001 diubah menjadi 01-01-2001)