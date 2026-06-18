-- Profil Pemateri
/* 
Trisna Yulia Junita
Data Scientist
PT. BUMA 
*/

-- Chapter 1: Penggabungan Tabel dari Relasi Kolom
-- Tugas Praktik
-- Cobalah ketik query pada code editor untuk melihat keseluruhan isi dari kolom tabel ms_item_kategori dan ms_item_warna.
SELECT * FROM ms_item_kategori;
SELECT * FROM ms_item_warna;

-- Key Columns
-- Menggabungkan Tabel dengan Key Columns (INNER JOIN)
SELECT * FROM ms_item_kategori, ms_item_warna
WHERE nama_barang = nama_item;

-- Menggunakan Prefix Nama Tabel
SELECT ms_item_kategori.*, ms_item_warna.*
FROM ms_item_warna, ms_item_kategori
WHERE nama_barang = nama_item;

-- Penggabungan Tanpa Kondisi (Cross Join)
SELECT * FROM ms_item_kategori, ms_item_warna;

-- Chapter 2: INNER JOIN
-- Pendahuluan

-- Syntax INNER JOIN
SELECT *
FROM tabel_1
INNER JOIN tabel_2
ON tabel_1.nama_kolom = tabel_2.nama_kolom;

-- Tugas Praktek: Menggunakan INNER JOIN (1/3)
SELECT * FROM ms_item_warna
INNER JOIN ms_item_kategori
ON ms_item_warna.nama_barang = ms_item_kategori.nama_item;

-- tabel tr_penjualan dan tabel ms_produk
SELECT * FROM tr_penjualan;
SELECT * FROM ms_produk;

-- Tugas Praktek: Menggunakan INNER JOIN (2/3)
-- Memahami Proses dan Hasil Query dengan INNER JOIN
-- Syntax INNER JOIN – Memilih Beberapa Kolom Untuk Ditampilkan
SELECT tabel_1.nama_kolom1, tabel_1.nama_kolom2, ..., tabel_2.nama_kolom1, tabel_2.nama_kolom2
FROM tabel_1
INNER JOIN tabel_2
ON tabel_1.nama_kolom1, tabel_2.nama_kolom1;

-- Tugas Praktek: Menggunakan INNER JOIN (3/3)
SELECT tr_penjualan.kode_transaksi, tr_penjualan.kode_pelanggan, tr_penjualan.kode_produk, ms_produk.nama_produk, ms_produk.harga, tr_penjualan.qty, (ms_produk.harga * tr_penjualan.qty) as total
FROM tr_penjualan
INNER JOIN ms_produk
ON tr_penjualan.kode_produk = ms_produk.kode_produk;

-- Chapter 3: UNION
-- Penggabungan hasil SELECT secara “Vertikal”
SELECT nama_kolom1, nama_kolom2, ..., nama_kolomn FROM tabel_1
UNION 
SELECT nama_kolom1, nama_kolom2, ..., nama_kolomn FROM tabel_2

-- Tabel yang Akan Digabungkan
SELECT * FROM tabel_A;
SELECT * FROM tabel_B;

-- Menggunakan UNION
SELECT * FROM tabel_A
UNION
SELECT * FROM tabel_B;

-- Menggunakan UNION dengan Klausa WHERE
SELECT * FROM tabel_A
WHERE kode_produk = 'prod-04'
UNION
SELECT * FROM tabel_B
WHERE kode_produk = 'prod-04';

-- Tugas Praktek:
SELECT * FROM tabel_A
WHERE kode_pelanggan = 'dqlabcust03'
UNION
SELECT * FROM tabel_B
WHERE kode_pelanggan = 'dqlabcust03';

-- Menyelaraskan (Conforming) Kolom
SELECT CustomerName, ContactName, City, PostalCode
FROM Customers
UNION
SELECT SupplierName, ContactName, City, PostalCode
FROM Suppliers;

-- Menggunakan UNION dan Menyelaraskan Kolom-Kolomnya
SELECT CustomerName, ContactName, City, PostalCode
FROM Customers
UNION
SELECT SupplierName, ContactName, City, PostalCode
FROM Suppliers;

-- Perbedaan antara UNION dan JOIN
SELECT * FROM Tabel_A
JOIN
SELECT * FROM Tabel_B
ON Tabel_A.A = Tabel_B.E;

SELECT * FROM Tabel_A
UNION
SELECT * FROM Tabel_B;

-- Chapter 4: Mini Project
-- Project INNER JOIN
SELECT DISTINCT ms_pelanggan.kode_pelanggan, ms_pelanggan.nama_customer, ms_pelanggan.alamat 
FROM ms_pelanggan 
INNER JOIN tr_penjualan
ON ms_pelanggan.kode_pelanggan = tr_penjualan.kode_pelanggan
WHERE tr_penjualan.nama_produk = 'Kotak Pensil DQLab' OR tr_penjualan.nama_produk = 'Flashdisk DQLab 32 GB' OR tr_penjualan.nama_produk = 'Sticky Notes DQLab 500 sheets';

-- PROJECT UNION
SELECT kode_produk, nama_produk, harga
FROM ms_produk_1
WHERE harga<100000
UNION
SELECT kode_produk, nama_produk, harga
FROM ms_produk_2
WHERE harga<50000;

-- Note: For my certificates of completion, check README.md
-- Thank you.
