--- Profile Pemateri: XERATIC

--- Chapter 1: Apa Itu Database? Apakah Sama dengan Excel?
--- Background Cerita
/* Kroma adalah staf logistik dari perusahaan DQLab Distribution yang ditarik menjadi orang pertama di divisi IT yang baru saja dibentuk di perusahaan logistik manufaktur.
Selama ini, semua data—vendor, produk, pengiriman—disimpan di file Excel data_pengiriman.xlsx.

Masalah mulai bermunculan:
Nama vendor berbeda-beda meski sebenarnya sama
Kolom terus ditambah tanpa struktur
Data sulit dicari, apalagi dilaporkan secara akurat

Misi Kroma dari CEO:
“Kita bangun sistem dari dasar. Kamu mulai dengan hal paling sederhana tapi paling berdampak: membuat database pertama perusahaan ini.”

--- Misi Kroma Dimulai
/* 	
Kroma memulai proyeknya dengan membandingkan Excel dengan database. Excel selama ini seperti gudang—bisa menyimpan segalanya, tapi sulit diatur. Sedangkan database adalah sistem penyimpanan yang terstruktur, relasional, dan bisa dikembangkan.

🎯 Tujuan Pembelajaran:

Memahami konsep dasar relational database management system (RDBMS) dan bagaimana perbedaannya dengan spreadsheet seperti Excel.
Instalasi serta akses MySQL dan phpMyAdmin di XAMPP
Mengetahui kegunaan MySQL dan phpMyAdmin.
Membuat dan menghapus database di phpMyAdmin

📂 Referensi Awal: data_pengiriman.xlsx Berisi kolom: vendor, barang, qty, tanggal, catatan, dll.

--- Database, Excel, dan RDBMS
/* Database & Excel jelas memiliki perbedaan.

Database adalah kumpulan data yang terorganisir secara sistematis dan dapat diakses, dikelola, dan diperbarui dengan mudah. Biasanya, Database digunakan untuk menyimpan informasi dalam jumlah besar dan dikelola menggunakan sistem manajemen basis data (DBMS) seperti MySQL, PostgreSQL, Oracle, atau Microsoft SQL Server.
Sementara Excel adalah aplikasi spreadsheet dari Microsoft yang digunakan untuk pengolahan data secara manual atau semi-otomatis.

RDBMS (Relational Database Management System) adalah sistem manajemen basis data yang menyimpan data dalam bentuk tabel-tabel yang saling terkait satu sama lain melalui relasi (hubungan antar tabel). Contoh RDBMS populer: MySQL, PostgreSQL, Oracle, SQL Server.

--- Pemahaman Localhost
/* Localhost adalah komputer kita sendiri yang berperan sebagai server lokal yang kemudian dapat melakukan koneksi ke Database Lokal (XAMPP) 
http://localhost/phpmyadmin -> untuk mengelola database MySQL di komputer sendiri

XAMPP adalah paket perangkat lunak gratis dan open-source yang digunakan untuk membuat server lokal di komputer. Adapun fungsi dan kegunaan XAMPP sebagai berikut:
Membuat Server Lokal (Localhost)
Testing & Development 
Mendukung CMS seperti WordPress, Joomla, dll
Latihan Belajar Web Programming

CMS (Content Management System) adalah perangkat lunak yang memungkinkan pengguna membuat, mengelola, dan memodifikasi konten website secara mudah tanpa perlu keahlian coding. 
CMS menyediakan antarmuka grafis untuk menambahkan teks, gambar, dan video, serta mengatur tata letak melalui template, menjadikan pengelolaan web lebih cepat dan efisien

Apache -> Menjalankan web server lokal
MySQL/MariaDB -> Menyimpan dan mengelola database
PHP -> Menjalankan skrip dan aplikasi PHP
phpMyAdmin -> Antarmuka berbasis web untuk mengelola database MySQL dengan mudah
FileZilla / Mercury / Tomcat -> (Opsional) Komponen tambahan untuk FTP, email server, atau aplikasi Java

FTP (File Transfer Protocol) adalah protokol jaringan standar yang digunakan untuk mentransfer file secara efisien antara komputer lokal (client) dan server melalui jaringan TCP/IP atau internet. 
Protokol ini berfungsi untuk mengunggah (upload), mengunduh (download), dan mengelola file dalam jumlah besar antar perangkat

--- Instalasi XAMPP
/* XAMPP dapat diinstal melalui website berikut : https://www.apachefriends.org/download.html
Dan XAMPP tersedia untuk Windows, Linux dan OS X.
Berikut adalah panduan instalasi untuk Windows:

1. Klik tombol dowload,file xampp akan di download otomatis
2. Ketika setup, klik tombol next hingga proses instalasi selesai
3. JIka sudah selesai dan ada pop up, klik allow
4. Terakhir klik Finish

--- Menjalankan MySQL dan Apache
/* Langkah selanjutnya adalah menjalanlan MySQL dan Apache:
1. Untuk menjalankan silahkan klik tombol start untuk apache dan MySQL
2. Kemudian gunakan link ini http://localhost/phpmyadmin untuk mengakses phpMyAdmin
3. Setelah masuk ke website phpMyAdmin, klik tab "Databases"
4. Kemudian buat database baru dengan nama logistik

--- Pembuatan Database (CREATE) & Menghapus Database (DROP)
/* Untuk pembuatan database dapat dilakukan dengan 2 cara yaitu:
1. Menggunakan fungsi create yang ada di menu database
2. Menggunakan query, silahkan gunakan query di menu SQL. Untuk format querynya adalah CREATE TABEL “nama database” contohnya seperti query di bawah :
CREATE DATABASE logistik;
lalu klik tombol go,
3. Untuk menghapus, klik nama database → pilih tab "Operations" → klik Drop the database (DROP) → klik OK
4. Opsi lain dapat menggunakan query SQL, dengan format DROP DATABASE “nama database” seperti query di bawah:
DROP DATABASE logistik;

--- Chapter 2: Membuat Struktur Tabel Pertama
--- Misi Kroma
/* Setelah kroma mempelajari perbandingan Excel dengan RDBMS, kroma diminta untuk membuat struktur tabel dari data excel ke dalam bentuk database. 
Pertama - tama kroma harus menentukan dahulu master tabel apa saja yang dapat diperoleh dari data excel. 
Master tabel itu seperti sebuah rak dalam sebuah gudang, dimana setiap rak sudah di mapping berdasarkan kategorinya di dalam kategori tersebut ada benda - benda yang berhubungan dengan rak tersebut. 

🎯 Tujuan Pembelajaran:
- Mengidentifikasi entitas dari data Excel mentah (vendors, products, orders, shipments).
- Membuat struktur awal database dalam bentuk tabel
- Mengenal konsep relasi antar tabel.
- Membuat foreign key agar relasi antar data terjaga..
- Memahami konsep hubungan banyak-ke-banyak antara orders dan products.
- Membuat tabel penghubung (junction table): order_items.
- Menentukan kolom yang tidak boleh kosong.
- Menambahkan batasan (constraint) agar data valid (misalnya kuantitas tidak boleh negatif).
- Menyisipkan data ke dalam tabel.
- Menjalankan JOIN query untuk menggabungkan informasi dari beberapa tabel.

--- Langkah - Langkah Pembuatan tabel (via tab SQL)
/* Pada umumnya sebuah tabel memiliki key utama yang akan menjadi nilai yang berbeda dengan nilai pada kolom lain pada sebuah tabel istilah kerennya unique value nah di database hal ini dinamakan dengan PRIMARY KEY. 
Selain itu PRIMARY KEY juga tidak boleh NULL/Kosong.

Sebelum membuat tabel di tab SQL, silahkan klik database logistik terlebih dahulu, supaya table yang dibuat nanti tersimpan di database logistik. Untuk query nya sebagai berikut : 
CREATE TABLE vendors(
    vendor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    address TEXT
);

CREATE TABLE products(
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50)
);

📝 Keterangan Query:
- CREATE TABLE = Command untuk membuat table di database,
- vendors = nama table yang ingin dibuat,
- AUTO_INCREMENT = memastikan input nya nanti akan selalu huruf besar meskipun diinput dengan huruf kecil,
- PRIMARY KEY = kolom utama dari sebuah tabel,
- (INT, VARCHAR(100), TEXT) = tipe data.

--- Mengenal Relasi dan Foreign Key
/* Kroma menemukan bahwa dalam file Excel logistik, setiap baris pemesanan memiliki nama vendor, tapi sering tidak konsisten, 
contohnya ada yang ditulis lengkap, disingkat, atau salah ketik. 
Ini membuat pelacakan dan laporan vendor jadi kacau.

Pemahaman Kunci:
Setiap pemesanan berasal dari satu vendor, artinya relasinya adalah one-to-many:

Satu vendor → banyak pesanan
Satu pesanan → hanya dari satu vendor
Dan Kroma bersyukur ternyata MySQL bisa menangani berbagai relasional di atas, ditambah mengatur relation seperti one to one.

Selain PRIMARY KEY ada juga key yang digunakan untuk mengambil data dari tabel lain yaitu FOREIGN KEY.
FOREIGN KEY (Kunci Tamu) adalah kolom yang ada di sebuah tabel yang digunakan untuk menghubungkan data dengan tabel lain. 
Untuk menggunakan foreign key diperlukan primary key serta referensi tabel mana yang ingin diambil datanya. 
Untuk contohnya seperti query di bawah.

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    vendor_id INT,
    order_date DATE,
    shipment_date DATE,
    FOREIGN KEY (vendor_id) REFERENCES vendors(vendor_id)
);

--- Relasi Banyak ke Banyak (Many-to-Many)
	
Setelah berhasil membuat tabel vendors, products, dan orders, Kroma melanjutkan analisis terhadap catatan transaksi.
Dia menemukan bahwa:
- Satu pesanan bisa mencakup beberapa jenis produk.
- Dan satu produk bisa muncul di berbagai pesanan yang berbeda.

Kroma menyadari bahwa ini adalah contoh relasi many-to-many. Masalahnya, jika kita langsung menaruh product_id di tabel orders, maka:
- Hanya bisa menampung satu produk per order (tidak realistis)
- Menjadi tidak fleksibel jika jumlah produk dalam satu order berbeda-beda

Untuk ini, Kroma memiliki ide untuk membuat junction table bernama order_items untuk memetakan hubungan antara pesanan dan produk. 
Setiap baris mewakili satu produk dalam satu order, lengkap dengan jumlahnya.

Jika pada bab sebelumnya hanya menggunakan 1 relasi saja untuk table, pada bab ini akan menggunakan relasi many to many. 
Untuk contoh querynya seperti di bawah:
CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    quantity INT,
    price VARCHAR(100),
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

--- Menambahkan Validasi dan Aturan Data
/* Setelah membuat tabel vendors, products orders dan order_item, kroma menyadari bahwa ada beberapa kolom dalam tabel yang belum memiliki aturan, 
maka dari itu kroma mencoba membuat aturan tersebut dengan menggunakan fungsi query  ALTER TABLE. 
ALTER TABLE sendiri berfungsi untuk mengedit value atau aturan dari sebuah kolom pada sebuah tabel. Untuk penggunaan querynya seperti di bawah:

ALTER TABLE vendors MODIFY name VARCHAR(100) NOT NULL;

ALTER TABLE order_items ADD CHECK (quantity > 0);

📝 Catatan: phpMyAdmin akan menampilkan error jika MySQL belum mendukung CHECK. Pastikan menggunakan InnoDB dan versi MySQL 8 ke atas.

--- Uji Coba – Input & Query Data
/* Setelah semua tabel berhasil dibuat beserta dengan aturannya. 
Selanjutnya Kroma menginput data dalam tiap tabel, inputan data ini menggunakan fungsi INSERT INTO untuk contoh penggunaannya seperti query di bawah:

INSERT INTO vendors (name, address)
VALUES ('PT Furniture Sejah Tera', 'Jl. Jakarta');
INSERT INTO vendors (name, address)
VALUES ('PT Perabotan Jaya Abadi', 'Jl. Merdeka');
INSERT INTO vendors (name, address)
VALUES ('Mega Elektronik Store', 'Jl. Medan');
INSERT INTO vendors (name, address)
VALUES ('Fresh Mart', 'Jl. Surabaya');

INSERT INTO products (name, category)
VALUES ('Kursi Kayu', 'Furniture');
INSERT INTO products (name, category)
VALUES ('Meja', 'Furniture');
INSERT INTO products (name, category)
VALUES ('Kompor', 'Perabotan');
INSERT INTO products (name, category)
VALUES ('Wajan', 'Perabotan');
INSERT INTO products (name, category)
VALUES ('Charger HP', 'Elektronik');
INSERT INTO products (name, category)
VALUES ('Headset', 'Elektronik');
INSERT INTO products (name, category)
VALUES ('Kubis', 'Food and Ingrediens');
INSERT INTO products (name, category)
VALUES ('Brokoli', 'Food and Ingrediens');

INSERT INTO orders (vendor_id, order_date, shipment_date) VALUES ('1', '2025-03-25', '2025-04-27');
INSERT INTO orders (vendor_id, order_date, shipment_date) VALUES ('1', '2025-03-25', '2025-04-27');
INSERT INTO orders (vendor_id, order_date, shipment_date) VALUES ('2', '2025-03-25', '2025-04-27');
INSERT INTO orders (vendor_id, order_date, shipment_date) VALUES ('2', '2025-03-25', '2025-04-27');
INSERT INTO orders (vendor_id, order_date, shipment_date) VALUES ('3', '2025-03-17', '2025-04-05');
INSERT INTO orders (vendor_id, order_date, shipment_date) VALUES ('3', '2025-03-17', '2025-04-05');
INSERT INTO orders (vendor_id, order_date, shipment_date) VALUES ('4', '2025-04-17', '2025-05-05');
INSERT INTO orders (vendor_id, order_date, shipment_date) VALUES ('4', '2025-04-17', '2025-05-05');
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES ('1', '1', '2', '150000');
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES ('2', '2', '2', '30000');
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES ('3', '3', '3', '20000');
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES ('4', '4', '1', '20000');
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES ('5', '5', '4', '50000');

--- Query JOIN untuk Menampilkan Informasi
/* SELECT v.name AS vendor_name, p.name AS product_name, oi.quantity
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
JOIN vendors v ON o.vendor_id = v.vendor_id
JOIN products p ON oi.product_id = p.product_id;

--- Kesimpulan
/* Setelah mempelajari semua ini, apa yang bisa kamu simpulkan Kroma?
	
Hal yang bisa aku simpulkan adalah penggunaan database sangat berguna jika sebuah perusahaan ingin memiliki basis data yang terstruktur dan dapat dapat terus dikembangkan. 
Hal ini tidak dapat dilakukan dengan menggunakan excel karena excel tidak memiliki struktur seperti database sehingga jika kolom ditambahkan terus di excel maka akan susah untuk membuat laporan. 


Menghubungkan antar tabel di database juga sangat mudah karena database memiliki konsep relasi antar tabel seperti one to many dan many to many. 
Jika ingin membuat aturan khusus untuk sebuah kolom dalam table juga sangat mudah karena dapat menggunakan fungsi ALTER TABLE.

--- Quiz 1
/* Manakah pernyataan yang paling tepat mengenai perbedaan antara Excel dan RDBMS seperti MySQL?
JAWABAN: RDBMS mendukung integritas data, relasi antar tabel, dan skala besar secara efisien.

--- Quiz 2
/* Apa tujuan dari penggunaan FOREIGN KEY dalam tabel database?
JAWABAN: Untuk menghubungkan data antar tabel dan menjaga konsistensi relasi

--- Quiz 3
/* Perhatikan query berikut:
 
CREATE TABLE order_items (
  order_id INT,
  product_id INT,
  quantity INT,
  PRIMARY KEY (order_id, product_id),
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);

Apa fungsi utama dari kombinasi PRIMARY KEY (order_id, product_id)?
JAWABAN: Menjamin bahwa satu produk hanya muncul satu kali dalam satu order

--- Quiz 4
/* Apa fungsi utama dari phpMyAdmin dalam XAMPP?
JAWABAN: Mengelola database MySQL melalui antarmuka web

--- Quiz 5
/* Apa yang merupakan hasil dari query berikut ini?

SELECT v.name AS vendor_name, p.name AS product_name, oi.quantity
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
JOIN vendors v ON o.vendor_id = v.vendor_id
JOIN products p ON oi.product_id = p.product_id;

JAWABAN: Menampilkan nama vendor, nama produk, dan kuantitas



