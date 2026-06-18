--- Profile Pemateri: Bachtiyar M. Arief, Data Engineer, PT. Astra Graphia TBK

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

--- Chapter 3: Operator REGEXP pada MySQL
--- Mengenal Penggunaan Operator REGEXP pada MySQL
SELECT * FROM dqlabregex WHERE kota REGEXP 'ng$';

--- Praktikum 1
SELECT * FROM dqlabregex WHERE staf_pencatat REGEXP '^Sen.?ja';

--- Praktikum 2
SELECT * FROM dqlabregex WHERE jumlah_member REGEXP '[^0-9]';

--- Chapter 3: Penggunaan Operator REGEXP_LIKE pada MySQL
--- Tugas Praktek
SELECT * FROM dqlabregex WHERE REGEXP_LIKE(staf_pencatat, '^AN');

--- Praktikum 3
SELECT * FROM dqlabregex WHERE REGEXP_LIKE ( staf_pencatat, '^Sen.?ja', 'i');

--- Praktikum 4
SELECT * FROM dqlabregex WHERE REGEXP_LIKE (jumlah_member, '[^0-9]', 'i');

--- Chapter 4: Penggunaan operator REGEXP_REPLACE pada MySQL
--- Tugas Praktek
SELECT REGEXP_REPLACE(staf_pencatat, 'Sen.?ja', 'Senja') AS pencatat
FROM dqlabregex;

--- Praktikum 5
SELECT no_pencatatan, tanggal_catat, kota, REGEXP_REPLACE(jumlah_member, '[^0-9]', '') AS jumlah_member, staf_pencatat
FROM dqlabregex;

--- Praktikum 6
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

--- Note: For my certificates of completion, check README.md
--- Thank you.
