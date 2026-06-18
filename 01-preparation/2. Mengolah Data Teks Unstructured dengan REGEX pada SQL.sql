--- Profile Pemateri
/* Bachtiyar M. Arief
Data Engineer PT. Astra Graphia TBK

--- Chapter 1: Pengantar
--- 1. Pengkodisian Tanpa Regex
SELECT id_pelanggan, provinsi,
CASE
    WHEN provinsi LIKE '%Jogja%'
        THEN 'Yogyakarta'
    WHEN provinsi LIKE '%Yogya%'
        THEN 'Yogyakarta'
    WHEN provinsi LIKE '%YogYa%'
        THEN 'Yogyakarta'
    ELSE provinsi
END AS provinsi_stdr
FROM master_pelanggan;

--- 2. Pengkondisian Dengan Regex
SELECT id_pelanggan, provinsi,
CASE
    WHEN provinsi
        REGEXP_LIKE('(.*)[Yy|Jj] og [Yy|Jj](.*)')
    THEN 'Yogyakarta'
    ELSE provinsi
END AS provinsi_stdr
FROM cust_city;

--- Notasi Regular Expression
REGEXP_REPLACE("1kroma", "([0-9])([a-z]+)", "$2-$1") 

--- Chapter 3: Operator REGEXP pada MySQL
--- Mengenal Penggunaan Operator REGEXP pada MySQL
/* Tugas:
menampilkan data pada tabel dqlabregex dengan kolom kota yang berakhiran 'ng'

SELECT * FROM dqlabregex WHERE kota REGEXP 'ng$';

--- Praktikum 1
/* menampilkan seluruh data dengan memfilter nama petugas pencatat pada kolom staf_pencatat di tabel dqlabregex dengan nama Senja atau Sendja. 
Namun pikirkan baik – baik notasi regex yang akan digunakan, sebisa mungkin notasi yang diketikkan sesuai juga dengan teks SenDja, Sen_ja, dan sebagainya yang memungkinkan.

SELECT * FROM dqlabregex WHERE staf_pencatat REGEXP '^Sen.?ja';

--- Praktikum 2
/* Pada kolom jumlah_member di tabel dqlabregex, jumlah menunjukkan kuantitas yang artinya hanya angka saja (numerik) yang boleh menjadi isi barisnya (record data). 
Namun pada tabel tersebut terdapat kesalahan pengetikan / penginputan data sehingga terdapat karakter non-numerik pada kolom jumlah_member.
memeriksa dan menampilkan kesalahan input data pada kolom tersebut?
buatlah sebuah query yang menampilkan semua data dengan kesalahan penulisan angka pada kolom jumlah_member.
*terlihat karakter bukan angka (huruf O) pada kolom jumlah_member.

SELECT * FROM dqlabregex WHERE jumlah_member REGEXP '[^0-9]';

--- Chapter 3: Penggunaan Operator REGEXP_LIKE pada MySQL
--- Tugas Praktek
/* mencari nama-nama staf_pencatat pada tabel yang diawali dengan 'an' dengan mengabaikan besar – kecilnya huruf.

SELECT * FROM dqlabregex WHERE REGEXP_LIKE(staf_pencatat, '^AN');

--- Praktikum 3
/* menampilkan semua data dengan memfilter nama petugas pencatat pada kolom staf_pencatat di tabel dqlabregex dengan nama SenDja atau Sen_ja. Namun kali ini abaikan besar-kecilnya huruf.

SELECT * FROM dqlabregex WHERE REGEXP_LIKE ( staf_pencatat, '^Sen.?ja', 'i');

--- Praktikum 4
/* memeriksa dan menampilkan kesalahan input data pada kolom jumlah_member lagi.
tips untuk membuat sebuah query yang menampilkan semua data dengan kesalahan penulisan angka pada kolom jumlah_member dan abaikan kecil-besarnya huruf

SELECT * FROM dqlabregex WHERE REGEXP_LIKE (jumlah_member, '[^0-9]', 'i');

--- Chapter 4: Penggunaan operator REGEXP_REPLACE pada MySQL
--- Tugas Praktek
/* mengganti teks 'Sendja' menjadi 'Senja' pada kolom staf_pencatat. 
Gunakan notasi regex agar jika dikemudian hari terdapat teks padanan teks 'Senja' semisal 'Sen_ja', 'Sen ja', dsb berubah menjadi satu teks saja yakni 'Senja'. 
Setelah itu ubah nama kolom menjadi pencatat menggunakan query ALIAS (AS).

SELECT REGEXP_REPLACE(staf_pencatat, 'Sen.?ja', 'Senja') AS pencatat
FROM dqlabregex;

--- Praktikum 5
/* pada tabel dqlabregex terdapat kolom jumlah_member yang memuat karakter non-numerik (bukan angka) pada record-nya. 
hapus karakter non-numerik pada kolom tersebut 
Tampilkan semua kolom pada tabel tersebut dengan tidak mengubah nama kolom dan urutan yang ada dengan syarat karakter non-numerik sudah terhapus pada kolom jumlah_member.

SELECT no_pencatatan, tanggal_catat, kota, REGEXP_REPLACE(jumlah_member, '[^0-9]', '') AS jumlah_member, staf_pencatat
FROM dqlabregex;

--- Praktikum 6
/* perhatikan tabel dqlabregex, pada kolom tanggal_catat ternyata format tanggal pada baris pertama dan kedua berbeda dengan lainnya. 
Untuk merapikannya, Aksara memutuskan untuk mengubah standarisasi penulisan tanggal DD-MM-YYYY (tanggal - bulan - tahun) menjadi MM/DD/YYYY (bulan / tanggal / tahun) agar seragam. 
Bantu Aksara untuk merapikan format tanggal pada kolom tersebut dan ubah nama kolom menjadi tanggal_pencatatan. Tampilkan kolom awal (tanggal_catat) dan kolom setelah diseragamkan (tanggal_pencatatan).

SELECT tanggal_catat, REGEXP_REPLACE(tanggal_catat, '([0-9]{2})-([0-9{2}])-([0-9]{4})', '$2/$1/$3') AS tanggal_pencatatan
FROM dqlabregex;

--- Clean All Columns
SELECT no_pencatatan,
CASE
	WHEN REGEXP_LIKE(tanggal_catat, '([0-9]{2})-([0-9]{2})-([0-9]{4})')
		THEN REGEXP_REPLACE(tanggal_catat, '([0-9]{2})-([0-9]{2})-([0-9]{4})', '$3-$2-$1')
	
		ELSE REGEXP_REPLACE(tanggal_catat, '([0-9]{2})/([0-9]{2})/([0-9]{4})', '$3-$1-$2')
END AS tanggal_catat,
kota,
REGEXP_REPLACE(jumlah_member, '[^0-9]', '') AS jumlah_member,
REGEXP_REPLACE(staf_pencatat, 'Sen.?ja','Senja') AS staf_pencatat
FROM dqlabregex;

--- Aggregasi
SELECT
	SUM(REGEXP_REPLACE(jumlah_member, '[^0-9]', '')) AS total_member,
	REGEXP_REPLACE(staf_pencatat, 'Sen.?ja', 'Senja') AS staf_pencatat
FROM dqlabregex
GROUP BY 2 ORDER BY 1;
