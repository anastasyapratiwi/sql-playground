-- Profil Pemateri
*/ Trisna Yulia Junita
Data Scientist
PT. BUMA 

--- Chapter 1: Penggabungan Tabel dari Relasi Kolom
/*  Untuk mendapatkan kolom nama produk, kamu hanya perlu menggabungkan tabel data penjualan dengan tabel lain di database yang berisi detail produk termasuk nama_produk, 
mekanisme penggabungan ini disebut JOIN
Dengan JOIN, beberapa tabel pada suatu database bisa digabungkan satu sama lain. Kemampuan inilah sebenarnya ciri khas dan kekuatan yang membedakan RDMS dengan sistem database lain

--- Tabel pertama: ms_item_warna
/* Tabel ini terdiri dari dua kolom yang berisi informasi nama buah atau sayuran dengan warnanya, dan memiliki delapan baris data
jika permasalahan kita adalah ingin mengetahui informasi tidak hanya mengenai warna tetapi juga jenis/kategori dari setiap nama barang apakah tergolong sayuran atau buah, maka kita tidak dapat memperoleh informasi tersebut jika hanya berdasarkan tabel ms_item_warna. 
Oleh karena itu, kita perlu menghubungkan tabel tersebut dengan tabel lain yang berisi informasi tersebut, yaitu tabel ms_item_kategori

--- Tabel kedua: ms_item_kategori
/* Tabel ini terdiri dari dua kolom yang berisi informasi nama tumbuhan dengan kategorinya, dan memiliki delapan baris data.
“Nah, sekarang kita telah memiliki tabel kedua yaitu tabel ms_item_kategori yang memiliki delapan baris data dan berisi informasi mengenai nama tumbuhan dengan kategorinya. 
Sama seperti permasalahan di tabel sebelumnya, jika kita hanya memiliki tabel ms_item_kategori maka kita tidak dapat memperoleh informasi mengenai nama dan warna tumbuhan. 
Oleh karena itu, kita bisa menggabungkan kedua tabel tersebut menjadi satu tabel baru yang berisi informasi lengkap mengenai nama, warna dan kategori setiap barang/item

--- Tugas Praktik
/* Cobalah ketik query pada code editor untuk melihat keseluruhan isi dari kolom tabel ms_item_kategori dan ms_item_warna.
SELECT * FROM ms_item_kategori;
SELECT * FROM ms_item_warna;

--- Quiz: Mana kolom dari kedua tabel yang memiliki kecocokan data?
/* Hal pertama yang perlu dilakukan sebelum menggabungkan kedua tabel adalah mengidentifikasi kolom mana dari kedua tabel yang memiliki kecocokan atau memiliki informasi yang sama.
Coba  kita perhatikan data dari kedua tabel ms_item _warna dan ms_item_kategori
Dari kedua tabel yang tersebut, manakah kolom – kolom yang sebenarnya memiliki kecocokan/kesamaan data sehingga bisa digunakan untuk menghubungkan/menggabungkan kedua tabel?
Jawaban: nama_barang dan nama_item

--- Quiz: Mana data dari pasangan key column yang cocok?
/* Nah, sekarang coba dilihat, mana saja isi data di atas yang terdapat pada kedua table?
Jawaban: bayam

--- Key Columns
/* Dari rangkaian pembahasan sebelumnya, dapat disimpulkan bahwa kedua tabel tersebut memiliki hubungan/relasi yaitu pada kolom nama_barang (tabel ms_item_warna) dan kolom nama_item (tabel ms_item_kategori) karena banyak kecocokan dari isi data.
Kedua kolom ini untuk selanjutnya disebut sebagai kolom kunci atau key columns.

--- Menggabungkan Tabel dengan Key Columns (INNER JOIN)
/* SELECT * FROM ms_item_kategori, ms_item_warna
WHERE nama_barang = nama_item;

--- Penjelasan Query Penggabungan Tabel
/* Penggabungan dua tabel menjadi satu tabel baru menggunakan query SELECT pada subbab sebelumnya dilakukan dengan cara berikut:
menuliskan dua nama tabel yang akan digunakan dengan dipisahkan operator koma (,).
menuliskan pasangan key columns dengan penghubung operator sama dengan (=) di bagian filter atau kondisi.

--- Penjelasan Hasil Penggabungan Tabel
/* penggabungan tabel menghasilkan enam baris data. Sedangkan di kedua tabel asal masing-masing memiliki delapan baris data. Lalu, kenapa bisa berkurang dua baris data?
Dua tabel di bagian atas yaitu tabel ms_item_kategori dan tabel ms_item_warna merupakan tabel sumber data, dan bagian bawah adalah tabel hasil penggabungan dari kedua tabel tersebut.

Dari tabel hasil penggabungan terlihat bahwa baris data yang muncul hanyalah baris data yang isi datanya terdapat di kedua key columns, dan data yang isinya cocok untuk kedua tabel jumlahnya hanya enam dari total delapan baris data yang ada. 
Sedangkan baris data yang berisi belimbing, jamur, apel dan daun bawang, tidak terdapat di kedua tabel, sehingga baris data ini akan di-exclude dan tidak akan muncul di tabel hasil penggabungan.
Cara pencocokan dan penggabungan disebut dengan INNER JOIN - dimana isi dari key column kedua tabel harus cocok satu sama lain baru dapat digabungkan.

--- Penjelasan Proses Penggabungan Tabel
/* Panah berwarna magenta menunjukkan proses pencocokan dan penggabungan data. Sebagai contoh: Baris data pertama dengan isi “bayam” pada key column nama_item (tabel ms_item_kategori),
akan mencari isi yang sama di key column nama_barang (tabel ms_item_warna), dan ditemukan pada baris kedua kemudian dihubungkan menjadi satu baris di tabel baru hasil penggabungan.

Pencocokan dengan pencarian ini berdasarkan bagian kondisi (conditional clause) pada query WHERE
Setelah seluruh data ditemukan dengan kondisi ini, dan jika tidak menentukan spesifik kolom maka seluruh kolom data dari kedua tabel akan dimunculkan dengan isi/baris data yang sama dan terdapat di kedua key column digabungkan menjadi satu baris pada tabel baru. 
Isi data yang ditandai dengan warna merah adalah data yang tidak memiliki pasangan sehingga tidak bisa digabungkan, dan dengan demikian tidak memiliki data gabungan pada hasil akhir.
Cara pencocokan dan penggabungan disebut dengan INNER JOIN - dimana isi dari key column kedua tabel harus cocok satu sama lain baru dapat digabungkan.

Jika kamu biasa bekerja dengan Excel, proses ini hampir menyerupai penggunaan fungsi vlookup. Jadi harusnya sudah terbiasa

--- Quiz: Mana Query Penggabungan Tabel Yang Benar?
/* Mana dari syntax query berikut yang menggabungkan tabel dengan operator koma?
Jawaban: SELECT * FROM A, B where kolom1 = kolom2

--- Quiz: Mana Penjelasan Hasil Penggabungan Yang Benar?
/* Mana dari penjelasan berikut ini yang benar untuk query di bawah ini?
SELECT * FROM ms_item_kategori, ms_item_warna
WHERE nama_barang = nama_item;
Jawaban: tabel ms_item_kategori dan ms_item_warna dapat digabungkan jika kondisi isi pada kolom nama_barang sesuai dengan isi pada kolom nama_item.

--- Bagaimana jika urutan Tabel diubah?
/* Jika akan mengubah urutan tabel di bagian FROM pada query inner join, maka hanya urutan kolom saja yang berubah tetapi isi data dan jumlah data tidak berubah.
SELECT * FROM ms_item_warna, ms_item_kategori
WHERE nama_barang = nama_item;

Terlihat jumlah data yang dihasilkan tetap 6 baris data, namun dengan urutan kolom yang berbeda.
Dimana dua kolom pertama adalah dari tabel ms_item_warna, dan dua kolom berikutnya dari tabel ms_item_kategori. Hal ini sesuai dengan urutan nama tabel yang diketikkan setelah FROM.

--- Menggunakan Prefix Nama Tabel
/* Seperti yang dijelaskan sebelumnya, jika akan menggunakan wildcard (*), dan tidak menentukan spesifik nama kolom yang akan dimunculkan di bagian SELECT, maka secara default urutan kolom dimulai dengan kolom dari tabel yang dinyatakan pertama di bagian FROM.
Akan tetapi, bisa juga memanfaatkan wildcard dengan menambahkan prefix nama tabel, dimana dengan merinci prefix nama tabel ini, dimungkinkan untuk menentukan urutan kolom dari tabel mana yang muncul duluan.
Jika lupa dapat mengacu kembali ke Modul: Fundamental SQL Using SELECT Statement, Chapter: Prefix dan Alias.
Sebagai contoh, jika akan menggabungkan kedua tabel, dengan menyatakan tabel ms_item_warna terlebih dahulu di bagian FROM, tetapi yang ingin dimunculkan kolomnya di awal hasil adalah dari yang ms_item_kategori, maka querynya akan menjadi sebagai berikut.

SELECT ms_item_kategori.*, ms_item_warna.*
FROM ms_item_warna, ms_item_kategori
WHERE nama_barang = nama_item;

Terlihat urutan kolom yang muncul adalah dari tabel ms_item_kategori terlebih dahulu.

--- Penggabungan Tanpa Kondisi (Cross Join)
/* dalam beberapa case di real problem, sering kali terdapat permasalahan tertentu dimana kita ingin menggabungkan tabel tanpa ada kondisi. Proses penggabungan ini juga dapat dilakukan dengan metode koma dan tanpa menggunakan kondisi relasi antar kolom

SELECT * FROM ms_item_kategori, ms_item_warna;

Terlihat pada query kita hanya menyertakan nama dua tabel yang akan diambil datanya, tapi tidak ada informasi kondisi bagaimana kedua tabel tersebut berelasi satu dengan yang lainnya melalui key column. Lalu apa hasilnya?
Terlihat banyak sekali hasil yang keluar, ini dikarenakan setiap baris data pada kedua tabel akan dihubungkan satu sama lain - tanpa ada hubungan.
Jumlah enam puluh empat baris data ini adalah hasil perkalian dari jumlah data dari kedua tabel, dimana masing-masing memiliki delapan baris data. Cara menggabungkan kedua tabelseperti ini disebut dengan mekanisme cross join.

--- Quiz: Berapa Jumlah Baris Hasil “Join Tanpa Kondisi” Berikut?
/* Jika kedua table tersebut digabungkan tanpa kondisi dengan query berikut
SELECT * FROM ms_item_kategori, ms_item_warna;
berapa jumlah baris data gabungan yang dihasilkan?
Jawaban: 80

--- Kesimpulan
/* Bahasa SQL diciptakan untuk sistem database relasional atau RDBMS. Dan aspek relasional inilah yang menjadi fitur paling penting dan unggul, dimana beberapa tabel dapat digabungkan menjadi satu sumber data baru.
Cara menggabungkan antar tabel disebut sebagai mekanisme join. Pada bab ini telah dicontohkan bagaimana dua tipe join, yaitu inner join dan cross join diterapkan dengan dua contoh tabel sederhana.

Inner join terjadi jika kedua tabel digabungkan melalui kolom kunci atau key column. Syarat penggabungan adalah dimana Isi data dari key column tabel yang satu harus dapat dicocokkan dengan isi data dari key column tabel yang lain.
Sedangkan cross join terjadi dari penggabungan tabel tanpa kondisi, dan menghasilkan seluruh penggabungan data seperti proses perkalian.

Untuk bab ini, inner join maupun cross join dilakukan dengan cara menggunakan operator koma dan pengkondisian where. Pada bab selanjutnya, akan terlihat penggunaan inner join dengan menggunakan keyword INNER JOIN … ON.

--- Chapter 2: INNER JOIN
--- Pendahuluan
/* menggabungkan dua tabel dengan metode INNER JOIN lain, yaitu dengan keyword INNER JOIN, yang memberikan hasil yang sama, tetapi dengan konstruksi atau syntax yang sedikit berbeda. 
Konstruksi baru ini akan memberi manfaat lebih ketika pada suatu query melibatkan beberapa join sehingga penggunaan operator koma menjadi sangat terbatas. 

--- Syntax INNER JOIN
/* JOIN ini hanya bisa dilakukan apabila tabel - tabel tersebut memiliki key kolom yang sama. 
Di SQL, terdapat beberapa tipe JOIN yaitu : INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN, dan SELF JOIN. 
Setiap tipe join memiliki tujuan dan hasil query yang berbeda. 
Pada metode INNER JOIN, baris dari kedua atau lebih tabel akan dibandingkan untuk mengecek baris - baris mana saja yang cocok satu sama lain berdasarkan kondisi JOIN yang ditentukan

SELECT *
FROM tabel_1
INNER JOIN tabel_2
ON tabel_1.nama_kolom = tabel_2.nama_kolom;

Penggunaan prefix pada tabel_1.nama_kolom dan tabel_2.nama_kolom ditujukan agar terdapat kejelasan (clarity) kolom pada tabel mana yang dijadikan acuan dalam proses INNER JOIN. 
Tentunya, penggunaan prefix ini ini sangat bermanfaat jika ingin menggabungkan beberapa tabel. 
Untuk penjelasan lebih detail, coba ingat kembali penggunaan prefix dan alias, yang telah dipelajari pada modul "Fundamental SQL with SELECT statement chapter Prefix dan Alias".
Jika masing-masing tabel tersebut dianalogikan sebagai dua himpunan maka proses INNER JOIN ekivalen dengan INTERSECTION (IRISAN) antara dua himpunan.
Proses INNER JOIN memiliki konsep penggabungan untuk records pada kedua tabel yang bernilai sama.

--- Tugas Praktek: Menggunakan INNER JOIN (1/3)
/* menggunakan klausa INNER JOIN … ON …; untuk menggabungkan kedua ms_item_warna dan ms_item_kategori berdasarkan sintaks INNER JOIN yang telah dijelaskan sebelumnya

SELECT * FROM ms_item_warna
INNER JOIN ms_item_kategori
ON ms_item_warna.nama_barang = ms_item_kategori.nama_item;

Hasil yang diperoleh dengan penggunaan SELECT … FROM … INNER JOIN … ON …; adalah sama dengan penerapan SELECT … FROM … WHERE …;.

--- tabel tr_penjualan dan tabel ms_produk
/* sekarang mari kita gunakan tabel tr_penjualan dan tabel ms_produk yang ada di-database, sehingga kita bisa lebih paham mengenai penerapan konsep JOIN di real case

SELECT * FROM tr_penjualan;
SELECT * FROM ms_produk;

--- Quiz: Mengidentifikasi Key Column tabel tr_penjualan dan ms_produk
/* sebelum kita menggunakan INNER JOIN dalam menggabungkan 2 tabel, seperti yang sudah dijelaskan sebelumnya, kita perlu terlebih dahulu mengetahui kolom mana yang merupakan key kolom yang akan digunakan dalam JOIN. 
Jadi, manakah yang merupakan key kolom dari kedua tabel tr_penjualan dan ms_produk tersebut untuk digunakan dalam INNER JOIN?
Jawaban: Kode_produk dari tabel tr_penjualan dengan kode_produk dari tabel ms_produk

--- Tugas Praktek: Menggunakan INNER JOIN (2/3)
/* menggabungkan tabel tr_penjualan dan ms_produk dan menampilkan seluruh kolom dari kedua tabel.

--- Memahami Proses dan Hasil Query dengan INNER JOIN
/* perbedaan antara tabel sebelum penggabungan dengan INNER JOIN dan setelah penggabungan
Sekarang seluruh kolom dari kedua tabel berada di satu tabel dan berisi seluruh kolom - kolom dari kedua tabel. Jadi, Aku juga dapat dengan mudah mengidentifikasi nama produk dari setiap kode produk yang dibeli oleh customer
antara kolom kode_produk pada hasil query dengan INNER JOIN di atas, dengan kolom kode_produk pada tabel ms_produk aku tidak menemukan prod-06 di tabel hasil query, padahal di tabel ms_produk terdapat data prod-06 yaitu pulpen multifunction + laser DQLAB

Tidak ada transaksi dengan kode_produksi prod-06 di tabel tr_penjualan. 
INNER JOIN akan mencocokkan key kolom tabel tr_penjualan dengan key kolom ms_produk, jika value dari key kolom sama - sama ada di kedua tabel , maka baris itu akan dikembalikan sebagai hasil query dan membentuk satu tabel yang berisi seluruh kolom dari kedua tabel, 
sedangkan jika value key kolom hanya terdapat di satu kolom, maka baris ini tidak akan ditampilkan. prod-06 ada di tabel di ms_produk tetapi tidak ada di data penjualan sehingga saat penggabungan tabel dengan INNER JOIN, data prod-06 dari tabel ms_produk tidak akan muncul di hasil query

--- Syntax INNER JOIN – Memilih Beberapa Kolom Untuk Ditampilkan
/* SELECT tabel_1.nama_kolom1, tabel_1.nama_kolom2, ..., tabel_2.nama_kolom1, tabel_2.nama_kolom2
FROM tabel_1
INNER JOIN tabel_2
ON tabel_1.nama_kolom1, tabel_2.nama_kolom1;

Catatan:
Perlu diperhatikan jika menampilkan kolom dengan nama yang sama di kedua tabel, maka pada bagian Select, tidak bisa hanya mengetikkan nama kolom saja, tetapi juga harus didahului oleh prefix nama tabel dimana kolom itu berasal untuk menghindari error karena ambiguitas

--- Tugas Praktek: Menggunakan INNER JOIN (3/3)
/* menggabungkan tabel tr_penjualan dan ms_produk dengan kolom yang ditampilkan dari tabel tr_penjualan adalah kode_transaksi, kode_pelanggan, kode_produk, qty. 
Untuk tabel ms_produk tampilkan kolom nama_produk dan harga
membentuk kolom total yang merupakan hasil perkalian setiap baris pada kolom harga di tabel ms_produk dengan kolom qty di tabel tr_penjualan
Tabel hasil penggabungan haruslah membentuk kolom-kolom dengan urutannya adalah kode_transaksi, kode_pelanggan, kode_produk, nama_produk, harga, qty, dan total

SELECT tr_penjualan.kode_transaksi, tr_penjualan.kode_pelanggan, tr_penjualan.kode_produk, ms_produk.nama_produk, ms_produk.harga, tr_penjualan.qty, (ms_produk.harga * tr_penjualan.qty) as total
FROM tr_penjualan
INNER JOIN ms_produk
ON tr_penjualan.kode_produk = ms_produk.kode_produk;

--- Kesimpulan
/* Pada chapter INNER JOIN ini kita telah mempelajari bagaimana menggabungkan dua tabel berdasarkan key column-nya.
Pada tahap awal kita menggunakan INNER JOIN untuk menggabungkan keseluruhan kolom yang dimiliki oleh kedua tabel tersebut. 
Selanjutnya, kita menerapkan INNER JOIN dengan menggunakan prefix nama tabel untuk memilih kolom-kolom mana saja yang akan ditampilkan pada tabel hasil penggabungan.
Untuk chapter selanjutnya kita akan menggabungkan tabel dengan menggunakan UNION.

--- Chapter 3: UNION
/*  kita sudah bisa lanjut ke bagian yang lebih kompleks, yaitu mengakses data dalam database dengan SQL (Structure Query Language)
Pembelajaran kita hari ini akan dimulai dengan studi kasus praktik jadi learning by doing. Ini ada data berupa analisis hasil penjualan suatu store. Akan tetapi ketika kita coba cek di database, terdapat 2 tabel penjualan, yaitu :
Tabel A berisi data transaksi untuk kode transaksi ‘tr-001’ sampai ‘tr-003’, dan
Tabel B berisi data data transaksi untuk kode transaksi ‘tr-004’ sampai ‘tr-006

--- Penggabungan hasil SELECT secara “Vertikal”
/* menggabungkan hasil dari 2 atau lebih SELECT - statement secara “Vertikal”, dengan catatan
Setiap hasil dari SELECT statement yang akan digabungkan (UNION) memiliki jumlah kolom yang sama
Kolom tersebut juga harus memiliki tipe data yang sama, dan
Kolom tersebut memiliki urutan posisi yang sama.

Syntax:
SELECT nama_kolom1, nama_kolom2, ..., nama_kolomn FROM tabel_1
UNION 
SELECT nama_kolom1, nama_kolom2, ..., nama_kolomn FROM tabel_2

--- Tabel yang Akan Digabungkan
/* 1. SELECT seluruh kolom dari tabel_A.
2. SELECT seluruh kolom dari tabel_B

SELECT * FROM tabel_A;
SELECT * FROM tabel_B;

Sesuai dengan syarat untuk penggabungan dengan UNION yang telah dijelaskan tadi bahwa:
jumlah kolom tabel_A dan tabel_B adalah sama
kolom-kolom pada tabel_A dan tabel_B memiliki tipe data yang sama, dan
kolom-kolom pada tabel_A dan tabel_B memiliki urutan posisi yang sama.

Melalui pengecekan pada tabel_A dan tabel_B pastikan bahwa ketiga syarat penggabungan dengan UNION yang dinyatakan di atas terpenuhi. 
Langkah ini kita lakukan sebelum melanjutkan pada praktek berikutnya menggunakan UNION. 

--- Menggunakan UNION
/* Kedua tabel_A dan tabel_B sudah memiliki jumlah kolom yang sama, dan juga urutan posisi kolom juga sama, jadi bisa langsung menggabungkan kedua kolom tersebut dengan menambahkan UNION. 

SELECT * FROM tabel_A
UNION
SELECT * FROM tabel_B;

--- Menggunakan UNION dengan Klausa WHERE
/* Misalnya aku hanya ingin menggabungkan tabel yang isinya data penjualan untuk kode produk prod-04 saja
tinggal tambahkan WHERE di kedua SELECT-statement

SELECT * FROM tabel_A
WHERE kode_produk = 'prod-04'
UNION
SELECT * FROM tabel_B
WHERE kode_produk = 'prod-04';

--- Tugas Praktek:
Lakukanlah hal yang sama dengan yang dicontohkan, akan dipilih kode_pelanggan = 'dqlabcust03' sebagai kondisinya. 

SELECT * FROM tabel_A
WHERE kode_pelanggan = 'dqlabcust03'
UNION
SELECT * FROM tabel_B
WHERE kode_pelanggan = 'dqlabcust03';

--- Menyelaraskan (Conforming) Kolom
/* Bagaimana kalau posisi kolom dari kedua tabelnya tidak sama? Apa tidak bisa di-UNION-kan?
Tentu saja bisa, kamu bisa menyelaraskan kolom dari kedua tabel di SELECT-statement

Jumlah kolom dari kedua tabel tersebut sama - sama 7 kolom, tetapi kolom posisi kolom ContactName dari kedua tabel tidak sama. Di tabel Customer, posisi kolom ContactName berada di Kolom ke - 3 sedangkan di tabel supplier berada di kolom ke-2.

SELECT CustomerName, ContactName, City, PostalCode
FROM Customers
UNION
SELECT SupplierName, ContactName, City, PostalCode
FROM Suppliers;

Jika terdapat perbedaan nama kolom antara SELECT-statement pertama dan SELECT-statement kedua, maka secara default akan digunakan nama kolom dari SELECT-statement yang pertama.

--- Menggunakan UNION dan Menyelaraskan Kolom-Kolomnya
/* SELECT CustomerName, ContactName, City, PostalCode
FROM Customers
UNION
SELECT SupplierName, ContactName, City, PostalCode
FROM Suppliers;

--- Perbedaan antara UNION dan JOIN
/* yang membedakan adalah bagaimana tabel - tabel itu digabungkan. 
Kita menggunakan JOIN ketika akan menggabungkan tabel secara horizontal, sehingga hasil join akan memuat kolom - kolom dari kedua atau lebih tabel yang digabungkan

SELECT * FROM Tabel_A
JOIN
SELECT * FROM Tabel_B
ON Tabel_A.A = Tabel_B.E;

Pada metode JOIN, penggabungan dilakukan berdasarkan key/kolom tertentu yang terdapat di tabel-tabel yang akan digabungkan dan key/kolom ini memiliki nilai yang saling terkait. 
Seperti yang terlihat pada gambar, Kolom A dan Kolom E merupakan key/kolom yang saling terkait sehingga kedua tabel dapat digabungkan dengan mencocokan nilai dari kedua kolom ini. 
Proses JOIN tidak dapat dilakukan jika tidak terdapat key/kolom yang saling terkait di kedua atau lebih tabel yang akan digabungkan.

Untuk UNION seperti yang sudah dijelaskan, digunakan ketika ingin menggabungkan tabel secara secara vertikal yaitu menggabungkan baris/row dari dua atau lebih tabel. 
Tidak seperti JOIN, untuk penggabungan dengan UNION, tidak diperlukan key/kolom yang saling terkait tetapi UNION mensyaratkan bahwa jumlah kolom dari tabel - tabel yang akan digabungkankan adalah sama dan berada diposisi yang sama pula.

SELECT * FROM Tabel_A
UNION
SELECT * FROM Tabel_B;

Pada proses penggabungan UNION, tidak terdapat penambahan kolom tetapi jumlah baris/rows yang akan bertambah. 

--- Quiz
/* Kira - kira dari pernyataan berikut, manakah yang tidak menunjukkan perbedaan antara UNION dan JOIN?
Jawaban: JOIN secara horizontal tanpa relasi, dan UNION secara vertikal.

Yang berbeda:
1. JOIN menggabungkan 2 tabel atau lebih berdasarkan baris yang saling berelasi/terkait sedangkan UNION menggabungkan 2 tabel secara vertikal.
2. JOIN menggabungkan kolom - kolom dari dua tabel atau lebih menjadi satu tabel sedangkan UNION menggabungkan baris dari dua tabel atau lebih menjadi satu tabel.
3. Untuk melakukan JOIN, jumlah kolom dari kedua tabel tidak harus sama tetapi paling tidak satu kolom dari kedua tabel memiliki relation/atribut yang sama; sedangkan untuk melakukan UNION, jumlah, posisi kolom, tipe data dan domain dari kedua tabel harus sama.

--- Kesimpulan
/* Pada chapter UNION ini telah dipelajari bagaimana menggabungkan dua tabel secara vertikal (bertambah barisnya). Tentunya ada syarat yang harus dipenuhi oleh kedua tabel yang digabungkan dengan UNION, yaitu:

Setiap hasil dari SELECT statement yang akan digabungkan (UNION) memiliki jumlah kolom yang sama
Kolom tersebut juga harus memiliki tipe data yang sama, dan
Kolom tersebut memiliki urutan posisi yang sama.
Selain itu, mempelajari bagaimana penyelerasan kolom sehingga record/baris yang ditampilkan pada tabel hasil penggabungan memiliki arti.

Perbedaan mendasar dari JOIN dan UNION adalah JOIN menggabungkan 2 tabel atau lebih berdasarkan baris yang saling berelasi/terkait sedangkan UNION menggabungkan 2 tabel secara vertikal. 

--- Chapter 4: Mini Project
--- Pendahuluan
/* 1. Project INNER JOIN, dan
2. Project UNION.

--- Project INNER JOIN
/* Dalam database, terdapat tabel ms_pelanggan yang berisi data - data pelanggan yang membeli produk dan tabel tr_penjualan yang berisi data transaksi pembelian di suatu store.
Suatu hari, departemen marketing & promotion meminta bantuan untuk meng-query data-data pelanggan yang membeli produk Kotak Pensil DQLab, Flashdisk DQLab 32 GB, dan Sticky Notes DQLab 500 sheets.
Buatlah query menggunakan tabel ms_pelanggan dan tr_penjualan untuk mendapatkan data - data yang diminta oleh marketing yaitu kode_pelanggan, nama_customer, alamat.

NB: Gunakan SELECT DISTINCT untuk menghilangkan duplikasi, jika diperlukan.

SELECT DISTINCT ms_pelanggan.kode_pelanggan, ms_pelanggan.nama_customer, ms_pelanggan.alamat 
FROM ms_pelanggan 
INNER JOIN tr_penjualan
ON ms_pelanggan.kode_pelanggan = tr_penjualan.kode_pelanggan
WHERE tr_penjualan.nama_produk = 'Kotak Pensil DQLab' OR tr_penjualan.nama_produk = 'Flashdisk DQLab 32 GB' OR tr_penjualan.nama_produk = 'Sticky Notes DQLab 500 sheets';

--- PROJECT UNION
/* Persiapkanlah data katalog mengenai mengenai nama - nama produk yang akan dijual di suatu store. 
Data tersebut akan digunakan dalam meeting untuk mereview produk mana saja yang akan dilanjutkan penjualannya dan mana yang tidak akan dilanjutkan.

Siapkan hanya data produk dengan harga di bawah 100K untuk kode produk prod-1 sampai prod-5; 
dan dibawah 50K untuk kode produk prod-6 sampai prod-10, tanpa mencantumkan kolom no_urut.

Saat mengecek data produk di database, terdapat 2 tabel yang sama - sama berisi data katalog, yaitu:
Tabel ms_produk_1 (no_urut 1-5)
Tabel ms_produk_2 (no_urut 6-10)

SELECT kode_produk, nama_produk, harga
FROM ms_produk_1
WHERE harga<100000
UNION
SELECT kode_produk, nama_produk, harga
FROM ms_produk_2
WHERE harga<50000;

--- Hasil Belajarku
Wah, tidak terasa aku telah menyelesaikan modul Fundamental SQL Using INNER JOIN and UNION. Selama belajar dengan modul ini, aku sudah dapat memahami dan mampu mempraktikkan:

Penggabungan dua tabel dengan menggunakan WHERE clause dan teknik cross join.
Penggabungan dua tabel relasi dengan menggunakan INNER JOIN.
Penggabungan dua tabel secara vertikal dengan menggunakan UNION.
Mengerjakan mini project yang merupakan integrasi keseluruhan materi dan tentunya materi-materi pada modul-modul sebelumnya untuk menyelesaikan persoalan bisnis.

Dengan kemampuan ini, aku lebih pede untuk mengolah data dengan SQL. Keterampilan ini sendiri adalah 60% aktivitas awal yang akan dilakukan seorang analis. Keep Fighting!