-- Profil Pemateri
*/Trisna Yulia Junita
Data Scientist
PT. BUMA

-- Ini komentar satu baris: Fundamental SQL Using SELECT Statement

/* Komentar ini bisa banyak baris.
SQL adalah bahasa pemograman untuk pengolahan database. 
Fungsinya untuk memperbarui, membuat tabel, prosedur

-- Pendahuluan
-- “Buat jadi Data Analyst, enggak cukup mahir mengoperasikan Python aja. Semangat!”

-- Apa itu SQL? 
/* Structured Query Language, 
berinteraksi dengan sistem database
(sistem manajemen database relasional) 
Pelafalan: S Q L (es kiu el) atau sikuel.
Database languages SQL - ISO/IEC 9075-1:2023

/* User dapat:
menambahkan, mengubah, mengupdate, mencari dan menghapus data 

-- Contoh komunikasi SQL
/* 1. Data Definition Language (DDL) 
Perintah yang berfungsi lebih kepada memanipulasi struktur database, seperti: 
a. Membuat (CREATE);
b. mengubah (ALTER); dan
c. menghapus (DROP) struktur penyimpanan data yaitu database, table, kolom dan tipe data.
2. Data Manipulation Language (DML)
Perintah yang digunakan untuk:
a. Menyisipkan data (INSERT);
b. Mengambil data atau query (SELECT); 
c. Mengubah data (UPDATE); dan
d. Menghapus data (DELETE).

-- contoh query atau perintah untuk mengambil data:
SELECT nama_produk FROM ms_produk;

/* sistem database akan mengerti bahwa ‘dia’ harus 
menampilkan data ‘nama_produk’
dari suatu tabel yang namanya ‘ms_produk

-- Mengapa Perlu Belajar SQL?
/* 1. Setiap perusahaan memiliki sistem penyimpanan data, khususnya untuk perusahaan yang memiliki sistem IT.
Sistem penyimpanan ini bukan di komputer atau laptop dalam bentuk file atau folder, tetapi di suatu sistem database. 
Nah, sistem database ini biasanya diakses menggunakan SQL. 
2. Sebagai analyst, tugas kita tidak hanya menganalisa data yang sudah tersedia tetapi juga mampu
untuk mengambil, memodifikasi dan mengakses sendiri data tersebut dari sumber datanya, yaitu dari database
3. Manajemen memerlukan laporan dengan informasi yang semakin beragam, seperti: tren penjualan bulan ke bulan,
pertumbuhan pelanggan, apakah perusahaan mencapai target, dan lain-lain. Dan ini membutuhkan keahlian SQL yang mumpuni.
4. Programmer yang membangun sistem aplikasi hampir dipastikan selalu bergantung kepada sistem database SQL
agar aplikasinya berjalan dengan baik. Dengan demikian, penguasaan SQL adalah hal mutlak.
5. Bisa meningkatkan kinerja perusahaan karena informasi yang kaya dapat dihasilkan melalui SQL.

-- Dimana saja SQL Digunakan?
/* 1. Penyimpanan Data Terpusat: Perusahaan IT (seperti e-commerce) menyimpan seluruh data 
profil user, transaksi, produk, hingga traffic kunjungan dalam sebuah DBMS (Database Management System).
2. Sumber Analisa Manajemen: Semua informasi dan analisa keputusan manajemen bersumber dari pengolahan data di DBMS.
3. Kompleksitas Data: Perusahaan besar umumnya mengelola puluhan sistem database sekaligus.
4. Fungsi Vital: alat utama untuk mengambil, mengolah, dan menghasilkan informasi dari database guna memenuhi kebutuhan manajemen.
5. Batasan Penggunaan: hanya digunakan pada sistem database berbasis RDBMS (Relational Database Management System).
Tidak semua sistem database mendukung bahasa SQL.
💡 Catatan Tambahan:
RDBMS, bayangkan saja itu adalah kumpulan tabel yang saling "berjodoh" (berelasi).
Contoh RDBMS yang paling populer di perusahaan itu ada MySQL, PostgreSQL, dan Microsoft SQL Server

-- Kesimpulan
/* 1. SQL singkatan dari Structured Query Language, adalah sebuah bahasa komputer sederhana yang menjadi standar
untuk memungkinkan seseorang berkomunikasi dengan suatu sistem database manajemen relasional (RDBMS).
2. Karena RDBMS bisa dikatakan digunakan oleh sistem IT oleh seluruh perusahaan di dunia dan di Indonesia,
maka pengetahuan SQL menjadi aset yang penting di perusahaan. Walaupun sederhana, aspek SQL sangat luas.
3. Aku semangat sekali, karena pada module Fundamental SQL using SELECT statement,
aku akan mempelajari proses pengambilan data dengan pendekatan best practice yang dibutuhkan oleh mayoritas perusahaan di dunia dan Indonesia.

-- Apa itu RDBMS?
/* Relational Database Management System yang biasa disingkat dengan RDMBS adalah suatu program yang memungkinkan untuk Membuat, Memperbarui, dan Mengelola suatu basis data relasional (Relational Database). Nah, Umumnya RDMBS ini menggunakan SQL untuk mengakses database.
Basis data relasional sendiri merupakan suatu jenis database dimana data – data umumnya disimpan dalam bentuk yang terstruktur berupa tabel (baris dan kolom) dan setiap tabel/ data yang terdapat dalam database memiliki relasi (relational) satu sama lain.

--- Basis data relasional sangat popular dan banyak digunakan oleh perusahaan – perusahaan karena jenis database ini mudah dikelola terlebih jika memiliki banyak data atau informasi yang perlu disimpan, scalable dan flexibel.
/* Basis data rasional cukup mudah dikelola. Setiap tabel/data dapat diupdate atau dimodifikasi tanpa mengganggu tabel/data yang lain.
Flexible : jika perlu memperbarui data, hanya perlu melakukannya sekali saja - jadi tidak perlu lagi mengubah banyak file satu per satu. Selain itu, basis data rasional juga cukup mudah untuk di-extend.
Misalnya saat data sudah semakin banyak, dapat dengan mudah memperbesar kapasitas dari database yang dimiliki.

--- Produk-produk RDBMS di Pasaran
/* 1. MySQL
Open-source SQL database yang cukup populer. Umumnya digunakan untuk pengembangan aplikasi web.
2. PostgreSQL
Open-source RDBMS product, dan juga umumnya digunakan untuk pengembangan aplikasi web. Akan tetapi secara kinerja, postgreSQL lebih lambat dibandingkan MySQL.
3. Oracle DB
Produk RDBMS yang dimiliki oleh Oracle Corporation dan produk ini bersifat proprietary atau tidak open source. Oracle DB umumnya digunakan di industri perbankan.
4. Microsoft SQL Server 
SQL Server adalah produk RDBMS yang dimiliki oleh Microsoft dan sama seperti Oracle DB, SQL Server bersifat proprietary atau tidak open source, SQL Server umumnya digunakan di perusahaan skala besar yang juga menggunakan produk keluaran Microsoft lainnya.
5.SQLite
Open source RDBMS, umumnya digunakan sebagai database di handphone, MP3 player, and perangkat lainnya.
Selain itu, juga ada MariaDB yang juga gratis atau open source, IBM DB2, Microsoft Access, dan masih banyak lainnya.

--- Perbandingan SQL syntax untuk menampilkan beberapa baris data
/* 1. MySQL
select field(s) from table_name LIMIT N;
2. Oracle
select field(s) from table_name where ROWNUM <=  N
3. SQLSERVER
select TOP(N)
field(s)
from table_name

--- Struktur Penyimpanan RDBMS
/* Struktur hirarki objek penyimpanan sebagai berikut:
1. Database
2. Tabel (table)
3. Kolom (column) atau Field
Setiap database bisa berisi beberapa tabel, dan setiap tabel bisa terdiri dari beberapa kolom. 
Di setiap database, tabel dan kolom memiliki nama sendiri sebagai identitas mereka. 
Tabel dan kolom inilah yang akan diisi data yang kemudian membentuk row (baris data).

--- Tabel dan Kolom
/* struktur tabel ms_produk terdiri dari empat kolom (column):
1. no_urut
2. kode_produk
3. nama_produk
4. harga
Terdapat 10 baris data (row) dengan isi data yang bervariasi,
contoh isi data untuk kolom "nama_produk" pada baris kelima adalah "Gift Voucher DQLab 250rb".

--- Kesimpulan
/* 1. Sistem relasional database atau relational database management system (RDBMS) adalah
sistem database paling populer di dunia saat ini dan menggunakan bahasa SQL untuk pengolahannya.
2. Beberapa produk RDBMS yang terkenal antara lain adalah Microsoft SQL Server, Oracle, MySQL,
PostgreSQL, IBM DB2, dan masih banyak lainnya.
3. Struktur penyimpanan data di RDBMS menggunakan hirarki:
    a. Database
    b. Tabel (Table)
    c. Kolom (Column)
4. Data akan diisi ke dalam table dalam bentuk Baris (Row) data

--- Mengambil Seluruh Kolom dalam suatu Tabel (SELECT COLUMN)
/* SELECT… FROM… adalah statement paling sederhana di SQL, dan merupakan bagian utama dari query.
Kita tidak bisa meng-query data tanpa menggunakan statement ini
SELECT * FROM ms_produk;
Breakdown:
    a. SELECT digunakan untuk menginformasikan kepada sistem bahwa kita ingin mengambil data. 
    b. Tanda * (bintang) artinya seluruh kolom perlu diambil dari tabel yang dirujuk. Tanda ini sering juga disebut sebagai wildcard.
    c. FROM [NAMA_TABLE], artinya table yang akan diambil datanya.
    d. Tanda ; (titik koma) adalah tanda yang menyatakan akhir dari perintah SELECT atau SQL lain.

--- Mengambil Satu Kolom dari Tabel
/* SELECT nama_kolom FROM nama_tabel;

--- Mengambil Lebih dari Satu Kolom (x>1) dari Tabel
/* SELECT nama_kolom1, nama_kolom2 FROM nama_tabel;
Menampilkan kode dan nama produk: SELECT kode_produk, nama_produk FROM ms_produk;
Menampilkan nama dan harga produk: SELECT nama_produk, harga FROM ms_produk;

--- Membatasi Pengambilan Jumlah Row Data
SELECT nama_kolom FROM nama_tabel LIMIT n;
Batas 3 baris: SELECT nama_produk FROM ms_produk LIMIT 3;
5 data teratas nama dan harga: SELECT nama_produk, harga FROM ms_produk LIMIT 5;
4 baris data untuk seluruh kolom: SELECT * FROM ms_produk LIMIT 4;

--- Penggunaan SELECT DISTINCT statement (Menghilangkan Data Duplikasi)
/* mengambil data dari tabel ms_pelanggan: SELECT * FROM ms_pelanggan;
SELECT DISTINCT kolom1, kolom2, ... FROM nama_tabel;

--- Tugas
/* Tampilkan nama_customer dan alamat dari tabel ms_pelanggan
dan hilangkan data duplikat.
SELECT DISTINCT nama_customer, alamat FROM ms_pelanggan

--- Kesimpulan
1. Perintah SELECT dapat digunakan untuk menentukan apa saja kolom yang akan diambil
dengan menuliskan nama-nama kolom yang diinginkan menggunakan pemisah tanda koma.
2. Perintah SELECT juga dapat digunakan untuk membatasi jumlah data yang dikeluarkan.
Namun untuk berbagai produk bisa berbeda penulisannya. MySQL menggunakan LIMIT untuk tujuan tersebut.
3. Perintah SELECT DISTINCT dapat digunakan untuk menghilangkan duplikasi baris dalam tabel
dan hanya menampilkan baris data yang unik tanpa duplikasi.

--- Prefix dan Alias
/* Prefix = menambahkan nama tabel di depan nama kolom.
Alias = alias atau nama lain untuk tabel maupun kolom.
SELECT t1.kode_produk AS product_code, t1.nama_produk AS product_name, t1.harga AS price FROM ms_produk AS t1;

--- Menggunakan Prefix pada Nama Kolom
/* SELECT nama_tabel.nama_kolom FROM nama_tabel;
Mengambil nama kolom nama_produk data dari tabel ms_produk dengan penulisan prefix nama tabel:
SELECT ms_produk.nama_produk FROM ms_produk;

--- Tugas
/* Menampilkan kolom kode_produk dari tabel ms_produk dengan penulisan menggunakan prefix nama tabel
SELECT ms_produk.kode_produk FROM ms_produk;

--- Menggunakan Alias pada Kolom
/* SELECT nama_kolom AS nama_kolom_baru FROM nama_tabel;
Perubahan nama tabel bersifat temporary, artinya hanya berubah ketika mengambil/meng-query data,
sedangkan nama kolom di tabel dalam database tidak akan berubah
Mengubah nama kolom dari kode_produk menjadi product_code dari table ms_produk:
SELECT kode_produk AS product_code FROM ms_produk;
Catatan: alias tidak bisa digunakan untuk wildcard (*)

--- Tugas
/* ubah perintah SELECT di atas untuk mengubah nama kolom dengan details berikut:
no_urut menjadi nomor.
nama_produk menjadi nama
SELECT no_urut AS nomor, nama_produk AS nama FROM ms_produk;

--- Menghilangkan Keyword 'AS'
/* SELECT nama_kolom nama_kolom_baru FROM nama_tabel
Mengubah nama kolom dari kode_produk menjadi product_code dari tabel ms_produk tanpa menggunakan alias
SELECT kode_produk product_code FROM ms_produk;

--- Tugas
Ubah nama kolom dari tabel ms_produk tanpa menggunakan Alias:
no_urut menjadi nomor.
nama_produk menjadi nama
SELECT no_urut nomor, nama_produk nama FROM ms_produk;

--- Menggabungkan Prefix dan Alias
/* SELECT nama_tabel.nama_kolom AS nama_kolom_baru FROM nama_tabel;
engan tabel ms_produk, menggunakan prefix nama tabel dan alias untuk mengubah nama_produk menjadi nama:
SELECT ms_produk.nama_produk AS nama FROM ms_produk;

--- Tugas
/* Tampilkan kolom harga dari tabel ms_produk dengan nama alias harga_jual lengkap dengan prefi
SELECT ms_produk.harga AS harga_jual FROM ms_produk;

--- Menggunakan Alias pada Tabel
/* dengan menggunakan alias pada tabel, dapat menghemat waktu dalam menuliskan query,
khususnya untuk query yang cukup rumit, panjang dan melibatkan banyak tabel
SELECT nama_kolom FROM nama_tabel AS nama_tabel_baru;
Menggunakan alias pada tabel ms_produk menjadi t1:
SELECT * FROM ms_produk AS t1;

--- Tugas
/* Ganti nama tabel ms_produk menjadi t2 dan tampilkan seluruh isinya tanpa menggunakan keyword AS
SELECT * FROM ms_produk t2;

--- Prefix dengan Alias Tabel
/* SELECT tbl.nama_kolom FROM nama_tabel AS tbl;
Penggunaan nama original tabel sebagai prefix akan menimbulkan error saat query dijalankan karena dengan penggunaan alias, 
nama tabel secara temporary sudah di-gantikan oleh alias
SELECT t1.kode_produk, t1.nama_produk FROM ms_produk AS t1;
Jika kolom dan tabel memiliki alias:
SELECT t1.kode_produk AS product_code, t1.nama_produk AS product_name FROM ms_produk AS t1;

--- Tugas
/* Gantilah perintah pada code editor dengan nama alias t2 - tanpa menggunakan keyword AS - untuk tabel ms_produk
dan menampilkan kolom nama_produk dan harga, lengkap dengan prefix alias.
SELECT t2.nama_produk, t2.harga FROM ms_produk t2;

--- Kesimpulan
1. Perintah SELECT dapat ditulis dengan variasi identitas kolom dan tabel berupa prefix dan alias.
    Penulisan lengkap untuk nama kolom adalah prefix berupa nama tabel disertai tanda titik sebelum nama kolom itu sendiri.
    Alias adalah nama lain yang diberikan untuk kolom maupun tabel.
    Alias dapat digunakan dengan keyword AS atau tanpa keyword AS setelah nama kolom dan tabel.
    Prefix nama tabel bisa menggunakan alias.
Pemahaman mengenai prefix dan alias akan mendorong kemampuan identifikasi tabel maupun kolom yang terlibat untuk perintah SELECT yang lebih kompleks.

--- Menggunakan Filter (WHERE)
/* Klausul WHERE untuk:
1. Filter data dengan kondisi teks tertentu.
2. Filter data dengan nilai angka tertentu.
3. Filter data dengan dua kondisi menggunakan operator AND dan OR.

--- Menggunakan WHERE
/* WHERE dari SELECT digunakan untuk memfilter data berdasarkan kondisi tertentu
SELECT nama_kolom FROM nama_tabel WHERE kondisi;
Kondisi paling sederhana memiliki format:
[nama_kolom] = 'nilai_untuk_filter'
SELECT * FROM ms_produk WHERE nama_produk = 'Gantungan Kunci DQLab';

--- Tugas
/* ubah perintah SELECT pada code editor untuk mengeluarkan data dengan nama_produk bernilai 'Tas Travel Organizer DQLab'
SELECT * FROM ms_produk WHERE nama_produk = 'Tas Travel Organizer DQLab';

--- Menggunakan Operand OR
/* menggabungkan dua atau lebih kondisi untuk memfilter data
SELECT nama_kolom FROM nama_tabel WHERE kondisi1 OR kondisi2;
SELECT * FROM ms_produk WHERE nama_produk = 'Gantungan Kunci DQLab' OR nama_produk = 'Tas Travel Organizer DQLab';

--- Tugas
/* Tambahkan nama_produk 'Flashdisk DQLab 64 GB' ke dalam tabel
SELECT * FROM ms_produk WHERE nama_produk = 'Gantungan Kunci DQLab' OR nama_produk = 'Tas Travel Organizer DQLab' OR nama_produk = 'Flashdisk DQLab 64 GB';

--- Filter untuk Angka
/* Contoh filter dimana kolom harga harus memiliki nilai di bawah 50000:
SELECT * FROM ms_produk WHERE harga < 50000;

--- Tugas
/* Tampilkan informasi dengan harga diatas 50000
SELECT * FROM ms_produk WHERE harga > 50000;

--- Menggunakan Operand AND
/* agar dua atau lebih kondisi terpenuhi semuanya. Jika salah satu kondisi tidak terpenuhi, data tidak akan diambil.
SELECT nama_kolom FROM nama_tabel WHERE kondisi1 AND kondisi2;
SELECT * FROM ms_produk WHERE nama_produk = 'Gantungan Kunci DQLab' AND harga > 50000;

--- Tugas
/* SELECT * FROM ms_produk  WHERE nama_produk = 'Gantungan Kunci DQLab' AND harga < 50000;

--- Kesimpulan
/* 1. Filter di SQL diimplementasikan dengan menggunakan WHERE diikuti dengan satu atau lebih kondisi logis.
2. Kondisi logis ini memiliki format nama kolom diikuti dengan nilai yang akan difilter. Untuk teks sederhana
bisa menggunakan tanda sama dengan, sedangkan untuk nilai angka bisa menggunakan operator perbandingan matematika.
3. Aku juga bisa menggunakan operand OR dan AND untuk menggabungkan beberapa kondisi menjadi satu kondisi baru
yang harus terpenuhi untuk pengambilan data.

--- Mini Project (proyek baru dari cabang A)
/* menyiapkan data transaksi penjualan dengan total revenue >= IDR 100.000? 
Format datanya yang akan kamu tampilkan adalah: kode_pelanggan, nama_produk, qty, harga, dan total, serta diurutkan mulai dari total revenue terbesar
Kalau kasusnya seperti ini, berarti aku perlu meng-query data tersebut dari tabel tr_penjualan yang terdapat di database perusahaan.
Aku dapat melakukan
perkalian antara kolom qty dan harga untuk memperoleh total revenue setiap kode pelanggan yang dinyatakan ke dalam kolom total, dan
menggunakan “ORDER BY total DESC” pada akhir query untuk mengurutkan data.

--- Pengerjaan
/* SELECT kode_pelanggan, nama_produk, qty, harga, qty * harga AS total FROM tr_penjualan WHERE (qty * harga) >= 100000 ORDER BY total DESC;
Penjelasan Biar Mbak Tasya Paham Luar Dalam:
1. Perkalian (qty * harga AS total):
Di SQL, Mbak bisa langsung mengalikan kolom pakai tanda bintang (*). Kata kunci AS total itu namanya Alias. Gunanya supaya kolom baru hasil perkalian itu punya judul "total" di tabelnya nanti. Kalau nggak pakai AS, nanti judul kolomnya jadi jelek (cuma qty*harga).
2. Filter (WHERE (qty * harga) >= 100000):
Karena Senja minta yang pendapatannya di atas atau sama dengan 100 ribu, kita pakai WHERE.
Catatan: Di beberapa sistem database, kita harus tulis ulang perkaliannya di bagian WHERE karena komputer belum "kenal" sama nama alias total pas dia lagi nyaring data.
3. Pengurutan (ORDER BY total DESC):
    ORDER BY: Perintah buat mengurutkan.
    DESC: Singkatan dari Descending (dari besar ke kecil/Z ke A). Kalau Mbak mau dari kecil ke besar, pakainya ASC (Ascending).

--- Versi PRO
SELECT
    kode_pelanggan, 
    nama_produk, 
    qty, 
    harga, 
    qty * harga AS total
FROM 
    tr_penjualan
WHERE
    (qty * harga) >= 100000
ORDER BY
    total DESC;

--- Hasil Belajarku
1. Konsep SQL, yaitu:
    Konsep Sistem Database Relasional atau Relational Database Management System (RDBMS).
    Struktur penyimpanan RDBMS yang terdiri dari database, tabel, kolom (column) dan baris (row).
    Pengenalan perintah SELECT untuk mengambil data dari tabel.
2. Teknik SELECT, dimana aku dapat:
    Mengambil kolom tertentu.
    Mengambil jumlah data tertentu.
    Menggunakan prefix dan alias.
    Menggunakan filter.

Dengan kemampuan ini, aku telah siap untuk mengambil dan mengolah data secara sederhana.
Keterampilan ini sendiri adalah 60% aktivitas awal yang akan dilakukan seorang analis.

Semangat belajar!
