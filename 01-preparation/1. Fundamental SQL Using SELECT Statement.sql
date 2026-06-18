-- Profil Pemateri: Trisna Yulia Junita, Data Scientist, PT. BUMA

--- Contoh query atau perintah untuk mengambil data:
SELECT nama_produk FROM ms_produk;

--- Mengambil Satu Kolom dari Tabel
SELECT nama_kolom FROM nama_tabel;

--- Mengambil Lebih dari Satu Kolom (x>1) dari Tabel
SELECT nama_kolom1, nama_kolom2 FROM nama_tabel;

--- Menampilkan kode dan nama produk: 
SELECT kode_produk, nama_produk FROM ms_produk;

--- Menampilkan nama dan harga produk: 
SELECT nama_produk, harga FROM ms_produk;

--- Membatasi Pengambilan Jumlah Row Data
SELECT nama_kolom FROM nama_tabel LIMIT n;

--- Batas 3 baris: 
SELECT nama_produk FROM ms_produk LIMIT 3;

--- 5 data teratas nama dan harga: 
SELECT nama_produk, harga FROM ms_produk LIMIT 5;

--- 4 baris data untuk seluruh kolom: 
SELECT * FROM ms_produk LIMIT 4;

--- Penggunaan SELECT DISTINCT statement (Menghilangkan Data Duplikasi)
--- mengambil data dari tabel ms_pelanggan: 
SELECT * FROM ms_pelanggan;
SELECT DISTINCT kolom1, kolom2, ... FROM nama_tabel;

--- Tugas
SELECT DISTINCT nama_customer, alamat FROM ms_pelanggan

--- Prefix dan Alias
SELECT t1.kode_produk AS product_code, t1.nama_produk AS product_name, t1.harga AS price FROM ms_produk AS t1;

--- Mengambil nama kolom nama_produk data dari tabel ms_produk dengan penulisan prefix nama tabel:
SELECT ms_produk.nama_produk FROM ms_produk;

--- Tugas
SELECT ms_produk.kode_produk FROM ms_produk;

--- Mengubah nama kolom dari kode_produk menjadi product_code dari table ms_produk:
SELECT kode_produk AS product_code FROM ms_produk;

--- Tugas
SELECT no_urut AS nomor, nama_produk AS nama FROM ms_produk;

--- Menghilangkan Keyword 'AS'
SELECT nama_kolom nama_kolom_baru FROM nama_tabel

--- Mengubah nama kolom dari kode_produk menjadi product_code dari tabel ms_produk tanpa menggunakan alias
SELECT kode_produk product_code FROM ms_produk;

--- Tugas
SELECT no_urut nomor, nama_produk nama FROM ms_produk;

--- Menggabungkan Prefix dan Alias
SELECT nama_tabel.nama_kolom AS nama_kolom_baru FROM nama_tabel;
SELECT ms_produk.nama_produk AS nama FROM ms_produk;

--- Tugas
SELECT ms_produk.harga AS harga_jual FROM ms_produk;

--- Menggunakan Alias pada Tabel
SELECT nama_kolom FROM nama_tabel AS nama_tabel_baru;
SELECT * FROM ms_produk AS t1;

--- Tugas
SELECT * FROM ms_produk t2;

--- Prefix dengan Alias Tabel
SELECT tbl.nama_kolom FROM nama_tabel AS tbl;
SELECT t1.kode_produk, t1.nama_produk FROM ms_produk AS t1;
SELECT t1.kode_produk AS product_code, t1.nama_produk AS product_name FROM ms_produk AS t1;

--- Tugas
SELECT t2.nama_produk, t2.harga FROM ms_produk t2;

--- Menggunakan WHERE
SELECT * FROM ms_produk WHERE nama_produk = 'Gantungan Kunci DQLab';

--- Tugas
SELECT * FROM ms_produk WHERE nama_produk = 'Tas Travel Organizer DQLab';

--- Menggunakan Operand OR
SELECT nama_kolom FROM nama_tabel WHERE kondisi1 OR kondisi2;
SELECT * FROM ms_produk WHERE nama_produk = 'Gantungan Kunci DQLab' OR nama_produk = 'Tas Travel Organizer DQLab';

--- Tugas
SELECT * FROM ms_produk WHERE nama_produk = 'Gantungan Kunci DQLab' OR nama_produk = 'Tas Travel Organizer DQLab' OR nama_produk = 'Flashdisk DQLab 64 GB';

--- Filter untuk Angka
SELECT * FROM ms_produk WHERE harga < 50000;

--- Tugas
SELECT * FROM ms_produk WHERE harga > 50000;

--- Menggunakan Operand AND
SELECT nama_kolom FROM nama_tabel WHERE kondisi1 AND kondisi2;
SELECT * FROM ms_produk WHERE nama_produk = 'Gantungan Kunci DQLab' AND harga > 50000;

--- Tugas
SELECT * FROM ms_produk  WHERE nama_produk = 'Gantungan Kunci DQLab' AND harga < 50000;

--- Mini Project (proyek baru dari cabang A)
--- Pengerjaan
SELECT kode_pelanggan, nama_produk, qty, harga, qty * harga AS total FROM tr_penjualan WHERE (qty * harga) >= 100000 ORDER BY total DESC;

--- Note: For my certificates of completion, check README.md
--- Thank you.
