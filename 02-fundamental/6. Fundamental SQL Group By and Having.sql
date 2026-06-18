--- Profile Pemateri: XERATIC

--- Chapter 1: Pendahuluan
/* Fungsi-fungsi tambahan 
dalam query SQL yang akan berguna untuk menganalisa data dari database.

Data yang akan digunakan merupakan contoh data yang mencerminkan data berlangganan
dari perusahaan penyedia jasa jaringan internet.

Dalam database terdapat beberapa table antara lain:

1. Customer
2. Product
3. Subscription
4. Invoice
5. Payment

--- Pengenalan Table - Customer
/* SELECT * FROM customer;

--- Pengenalan Table - Product
/* Selanjutnya, kita akan menampilkan data produk mengenai service yang diberikan oleh penyedia jasa jaringan internet.
Pada data product tersebut menentukan kecepatan internet yang diberikan dalam mbps dan harga yang ditawarkan.

SELECT * FROM product;

--- Pengenalan Table - Subscription
/* Kali ini kita akan menampilkan table customer berisikan data langganan dari pemilihan produk oleh konsumen.
SELECT * FROM subscription;

--- Pengenalan Table - Invoice
/* Setelah mengetahui informasi produk dan subscription yang dipilih customer, kali ini kita akan melihat table customer berisikan data tagihan yang harus dibayar oleh konsumen.
SELECT * FROM Invoice;

--- Pengenalan Table - Payment
/* Langkah terakhir, setelah mengetahui nilai invoice, yaitu kita melihat pada table customer berisikan data konsumen yang telah membayar tagihan berlangganan jaringan internet.
SELECT * FROM payment;

--- Chapter 2: Penggunaan Having
--- Untuk apa Having digunakan dalam query
/* HAVING digunakan untuk menggantikan WHERE ketika menggunakan Group BY 
yang datanya di aggregasi.

Secara umum HAVING digunakan setelah melakukan GROUP BY berikut sintaks yang digunakan:

SELECT nama_kolom
FROM nama_tabel
GROUP BY nama_kolom
HAVING kondisi;

--- Contoh penggunaan HAVING
/* Untuk penggunaan HAVING pada data yang ada pada bab sebelumnya, kita akan mencari customer_id yang melakukan perpindahan
subscription pada table subscription. 

SELECT customer_id FROM Subscription GROUP BY customer_id HAVING COUNT(customer_id) > 1;

--- Menampilkan Konsumen yang berubah berlangganan
/* tampilkan:
1. customer_id
2. product_id
3. subscription_date

SELECT 
	customer_id,
    product_id,
    subscription_date
FROM Subscription 
WHERE customer_id IN 
	(SELECT 
    	customer_id 
     FROM Subscription 
     GROUP BY customer_id 
     HAVING COUNT(customer_id) > 1
  	) 
ORDER BY customer_id ASC;

--- Menampilkan detail konsumen
Sekarang kita coba menggabungkan ilmu yang sudah ada sebelumnya.
Kita menggunakan JOIN untuk mendapatkan data dari table customer.

Tugas Praktek

Isikan bagian yang kosong dengan melakukan JOIN table subscription dan customer dengan menggabungkan
customer_id dari table subscription dan id dari table customer

SELECT b.name,
	   b.address,
       b.phone, 
       a.product_id, 
       a.subscription_date 
FROM subscription a -- Pastikan nama tabelnya benar, biasanya 'subscription'
JOIN customer b -- Nama tabel identitas biasanya 'customer' (bukan 'name')
ON a.customer_id=b.id -- INI KUNCINYA: Hubungkan ID dengan ID
WHERE b.id IN 
(
	SELECT 
    	customer_id 
        FROM Subscription 
    GROUP BY customer_id 
    HAVING COUNT(customer_id) > 1
) 
ORDER BY b.id ASC;

/* Analisis Kesalahan Lain (Biar Makin Paham):
Nama Tabel di JOIN: Kamu menulis JOIN name b. Biasanya name itu nama kolom, bukan nama tabel. Kalau di modul DQLab, tabelnya mungkin bernama customer atau ms_customer.
Nama Tabel di FROM: Kamu menulis FROM subscription_date a. Biasanya subscription_date itu nama kolom. Nama tabelnya kemungkinan besar hanya subscription.
Logika Subquery: Subquery kamu buat cari pelanggan yang langganan lebih dari satu kali (HAVING COUNT > 1) sudah Bagus banget! Logikanya sudah benar, cuma "jembatan" (JOIN) di atasnya aja yang miring.

Tips Mage Tasya:
Ingat prinsip PK (Primary Key) = FK (Foreign Key).
- Di tabel pelanggan, cari kolom yang unik (biasanya id atau customer_id).
- Di tabel transaksi, cari kolom yang mencatat siapa pelanggannya (biasanya customer_id).

Nah, dua kolom itulah yang harus dipasang di baris ON.

--- Chapter 3: Penggunaan MAX, MIN dan AVG dalam Having
--- Pendahuluan
/* penggunaan fungsi seperti MAX, MIN dan AVG dalam penggunaan kondisi filter yang dapat digunakan pada Having untuk melakukan filter data yang dibutuhkan.

--- Penggunaan Fungsi MAX pada Having
/* Dalam klausa kondisi Having dapat menggunakan fungsi MAX sebagai filter hasil dari aggregasi dari GROUP BY.
Penggunaannya sama dengan fungsi max dengan yang digunakan pada Select secara umum, tetapi ini digunakan untuk melakukan filter data.

SELECT product_id, MAX(total_price) AS total
FROM invoice
GROUP BY product_id;

/* Query diatas akan menampilkan daftar nilai maksimum  pada kolom tersebut yang disesuaikan sesuai dengan kolom yang digrouping. 
Sekarang kita dapat menambahkan di baris berikutnya tentunya dengan menggunakan fungsi Max untuk mendapatkan jumlah total_price yang berada di atas 1.000.000.

Tugas Praktek

Tambahkanlah baris berikutnya (baris ketiga) setelah kamu menuliskan kedua baris di atas. 
Perintah di baris ketiga ini ditujukan untuk menentukan nilai maksimal dari pinalty. 
Gunakanlah filter untuk nilai MAX pinalty di atas 30000

SELECT product_id, MAX(total_price) AS total FROM invoice GROUP BY product_id;
SELECT product_id, MAX(total_price) AS total FROM invoice GROUP BY product_id HAVING MAX(total_price) > 1000000;
SELECT product_id, MAX(pinalty) AS total FROM invoice GROUP BY product_id HAVING MAX(pinalty) > 30000;

--- Penggunaan Fungsi MIN pada Having
/* penggunaan fungsi MIN sama halnya dengan fungsi MAX. Fungsi MIN di having juga digunakan untuk memfilter nilai minimum yang ada pada kolom yang ditentukan.

SELECT product_id, MIN(total_price) AS total FROM invoice GROUP BY product_id;

Query diatas akan menampilkan daftar nilai minimum pada kolom tersebut yang disesuaikan sesuai dengan kolom yang di grouping. Sekarang kita tambahkan fungsi Min di Having untuk memfilter nilai minimum total_price yang dibawah 500.000.

Tugas Praktek

Seperti pada tugas praktek sebelumnya. Sekarang kamu tambahkan baris berikutnya agar nilai minimal dari pinalty dapat ditentukan. 
Gunakan filter nilai MIN pinalty di bawah 50000.

SELECT product_id, MIN(total_price) AS total FROM invoice GROUP BY product_id;
SELECT product_id, MIN(total_price) AS total FROM invoice GROUP BY product_id HAVING MIN(total_price) > 500000;
SELECT product_id, MIN(pinalty) AS total FROM invoice GROUP BY product_id HAVING MIN(pinalty) < 50000;

SELECT product_id, MIN(total_price) AS total FROM invoice GROUP BY product_id;
SELECT product_id, MIN(total_price) AS total FROM invoice GROUP BY product_id HAVING MIN(total_price) < 500000;
SELECT product_id, MIN(pinalty) AS total FROM invoice GROUP BY product_id HAVING MIN(pinalty) < 50000;

--- Penggunaan Fungsi AVG di Having
/* Penggunaan AVG juga sama dengan penggunaan MAX dan MIN seperti yang telah dibahas sebelumnya. 
Fungsi AVG di Having digunakan juga untuk memfilter nilai rata-rata dari kolom yang dicari. 
Sekarang kita mencari rata-rata total_price setiap product_id.

SELECT product_id, AVG(total_price) AS total FROM invoice GROUP BY product_id;

Dari query tersebut mendapatkan list nilai tagihan rata-rata setiap product_id. Sekarang menggunakan having untuk memfilter nilai rata-rata dari total_price.

SELECT product_id, AVG(total_price) AS total FROM invoice GROUP BY product_id HAVING AVG(total_price) > 100000;

Tugas Praktek
Dengan menambahkan baris berikutnya atau baris ketiga kamu dapat menentukan nilai rata-rata dari pinalty dengan menggunakan filter dapat ditentukan pinalty yang berada di atas 30000. 

SELECT product_id, AVG(total_price) AS total FROM invoice GROUP BY product_id;
SELECT product_id, AVG(total_price) AS total FROM invoice GROUP BY product_id HAVING AVG(total_price) > 100000;
SELECT product_id, AVG(pinalty) AS total FROM invoice GROUP BY product_id HAVING AVG(pinalty) > 30000;

--- Mini Quiz
/* Lakukan query untuk dapat mengeluarkan product_id, 
rata-rata nilai pinalty dan jumlah customer_id yang di group by 
berdasarkan product_id
yang memiliki jumlah customer_id diatas nilai 20.

SELECT product_id, AVG(pinalty), COUNT(customer_id) AS total FROM invoice GROUP BY product_id HAVING COUNT(customer_id) > 20;

Tips Mage:
Kalau soal bilang "Jumlah [Sesuatu] ID" -> Gunakan COUNT.
Kalau soal bilang "Total [Nilai/Uang]" -> Gunakan SUM.
Kalau ada kata "Diatas nilai [Angka]" setelah Group By 
    -> Pastikan itu ditaruh di HAVING dengan fungsi yang benar.

--- Penutup
/* Congratulation! 
Kali ini kamu sudah berhasil mendapatkan ilmu pengetahuan baru dan juga mempelajari materi yang baru lagi mengenai Having serta contoh penggunaannya. 

Kesimpulan yang bisa didapatkan adalah : 
1. Menggunakan fungsi SELECT untuk menampilkan data-data yang butuh diketahui informasinya. 
2. Menggunakan fungsi Group by dan Join untuk memahami penggunaan Having. 
3. Menghitung nilai Max, Min dan Avg pada penerapan fungsi Having. 

