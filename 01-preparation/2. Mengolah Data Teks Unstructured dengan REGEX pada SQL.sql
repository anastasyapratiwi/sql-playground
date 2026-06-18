--- Profile Pemateri

/* Bachtiyar M. Arief
Data Engineer PT. Astra Graphia TBK

--- Chapter 1: Pengantar
--- Pengantar Studi Kasus
/* “Effective business intelligence efforts start with high quality data and high quality data start from clean data“
si bos memberikanku sampel data pencatatan pada suatu basis data, karena memang formatnya free text sehingga banyak data yang tidak terstandarisasi dan formatnya berantakan. Banyak typing of error (typo) lah pokoknya
Merapikan format data teks atau string pada data bisa dilakukan, gunakan saja notasi regular expression (regex) sehingga kita tidak perlu merapikan satu-satu data teks dengan begitu kita bisa mengefisiensi waktu pengerjaan

--- Pendahuluan
/* data pencatatan yang diberi nama dqlabregex
Sampel data ini begitu banyak variasi kesalahannya ya. Bisa kubayangkan bagaimana jika kita dihadapkan dengan kesalahan penulisan atau ketidakseragaman seperti ini pada raw data yang lebih banyak datanya, pasti sering lembur nih buat perbaiki data satu-satu jika tidak mengenal regex
perlu kecermatan juga dalam memilah - milih notasi mana yang tepat agar notasi tersebut sesuai dengan karakter atau teks yang ingin kita cari, cocokan atau ganti

--- Pengantar Regular Expression
/* pada tabel master_pelanggan, aku hanya mengambil kolom id_pelanggan dan provinsi dari pelanggan yang berasal dari provinsi Yogyakarta
Pada kasus ini, provinsi yang dimaksud sebenarnya sama yakni ‘Yogyakarta’, namun karena mempunyai format free text sehingga pelanggan bebas menginputkan provinsi asalnya
Namun untuk kebutuhan proses analisa data misalnya agregasi tentunya akan menghasilkan nilai analisa yang berbeda jadi harus diseragamkan atau distandarisasi
kalau dipikir-pikir misal kita lakukan pengkondisian query dengan case – when (query pengkondisian), bakal ribet dan banyak juga ya? Case-nya kan banyak tuh!

--- Mengenal Regular Expression
Regular Expression atau disingkat regex merupakan string teks yang memungkinkan kamu untuk membuat pola yang membantu mencocokkan (matching), menemukan (searching), dan mengelola tipe data teks
Saat pertama kali mencoba memahami regex, sepertinya itu bahasa yang berbeda. 
Banyak notasi atau karakter yang unik. Namun, menguasai regex dapat mengefisiensi waktu jika kita bekerja dengan teks atau perlu mengurai data dalam jumlah besar, sehingga kita tidak perlu menuliskan banyak query atau sintaks pengkondisian

1. Pengkodisian Tanpa Regex
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

2. Pengkondisian Dengan Regex
SELECT id_pelanggan, provinsi,
CASE
    WHEN provinsi
        REGEXP_LIKE('(.*)[Yy|Jj] og [Yy|Jj](.*)')
    THEN 'Yogyakarta'
    ELSE provinsi
END AS provinsi_stdr
FROM cust_city;

Jika kita eksekusi kedua query diatas akan menghasilkan kolom baru bernama provinsi_stdr yang merupakan kolom hasil penyeragaman nama provinsi 
Terlihat bukan perbedaan antara pengkondisian dengan regex dan tidak? 
Akan lebih efisien menggunakan regex dan string yang match juga lebih bervariasi. Bayangkan jika dikemudian hari terdapat penulisan kolom provinsi “Yogjakarta” atau yang lain tentu kita harus menambah kondisi lagi jika tanpa regex

--- Notasi Regular Expression
/* regex menyediakan beberapa karakter spesial yang dapat kamu gunakan untuk mencocokan karakter dengan pola – pola tertentu. 
regex bersifat case sensitive (huruf kecil dan huruf besar diartikan berbeda)

1. . (Wildcard)
Mencocokkan satu karakter apapun kecuali newline (enter)
Regex (pa.i) akan sesuai dengan padi , paTi, pa9i, dsb.

2. ? (Optionality)
Karakter sebelum tanda (?) bersifat opsional (boleh terdapat pada teks, boleh juga tidak ada)
Regex (Bid?jak) akan sesuai dengan Bidjak atau Bijak (karakter d bersifat opsional)

3. + (Repeatability)
Pengulangan karakter dengan syarat karakter sebelum notasi + wajib ada
Regex (go+L) akan sesuai dengan goL, goooL, dsb

4. * (Repeatability)
Pengulangan karakter dengan syarat karakter sebelum notasi * bersifat opsional
Regex (go*L) akan sesuai dengan goL, gooooL, gLadi, gLamour, dsb

5. [ ] Choice / set of characters
Menemukan pola kata yang cocok akan terbatas pada regex yang akan diberi kan didalam simbol tersebut
Regex (mak[Ai]n) hanya akan sesuai dengan teks makAn atau makin saja (pilihannya hanya A atau i)

6. - (Range)
Menunjukkan suatu rentang tertentu semisal [a-z], [A-Z], [a-zA-Z], [0-9], [0-9a-zA-Z],   [b-e], dsb
Regex ([b-d]uka) akan sesuai dengan teks buka, cuka dan duka

7. ^ (Complement)
Menunjukkan negasi atau makna sebaliknya. Notasi biasa diikuti choice ([^…])
Regex (^[aiueo]) akan sesuai dengan karakter konsonan atau non vocal

8. ^ (Prefix)
Mencocokan awalan karakter dan harus diletakkan sebelum karakter pencocokan
Regex (^ayam) akan sesuai dengan teks ayam goreng, ayam bakar, dsb

9. $ (Sufix)
Mencocokan akhiran karakter dan harus diletakkan sebelum karakter pencocokan
Regex (ayam$) akan sesuai dengan kari ayam, rendang ayam, dsb

10. { } Quantifier
Menentukan berapa banyak karakter, grup, atau kelas karakter yang harus ada dalam input agar kecocokan dapat ditemukan
Regex (he.{2}o) akan sesuai dengan hello, herro, heLio, dsb (karakter yang diapit oleh he dan o harus tepat 2 karakter)

--- Sets dan Group
/* Sets [] adalah himpunan karakter di dalam sepasang tanda kurung siku [ ] dengan arti khusus 
sedangkan group () atau biasa disebut juga capture and group adalah pengumpulan notasi regex untuk dikelompokkan dengan notasi kurung buka dan tutup ( )

1. [abc]
Teks akan sesuai (match) jika terdapat salah satu karakter a , b atau c didalamnya

2. [a-z]
Teks akan sesuai (match) jika memuat huruf kecil

3. [A-Z]
Teks akan sesuai (match) jika memuat huruf besar

4. [a-zA-Z]
Teks akan sesuai (match) jika memuat huruf kecil maupun besar

5. [^a-z]
Teks akan sesuai (match) dengan karakter selain huruf kecil (ditambahkan notasi negasi ^ diawal sets)

6. [0-9]
Teks akan sesuai (match) dengan karakter angka

Pada group bisa mengelompokkan beberapa notasi regex dengan simbol ( ), sedangkan untuk me-return nilai dari group bisa menggunakan simbol $
1kroma
1 -> ([0-9]) -> $1 -> Grup 1
kroma -> ([a-z]+) -> $2 -> Grup 2

Misalnya ingin mengubah dari 1kroma menjadi kroma-1 maka bisa gunakan 
REGEXP_REPLACE("1kroma", "([0-9])([a-z]+)", "$2-$1") 
sehingga akan diperoleh teks baru yakni "kroma-1" karena telah mengubah posisi group 2 ($2) diawal, lalu karakter strip ( - ) kemudian group 1 ($1) diakhir.

--- Quiz #1
/* Kegunaan notasi regex << ? >> adalah untuk …
JAWABAN: Mencocokkan karakter secara opsional (boleh ada boleh tidak)

--- Quiz #2
/* Teks yang tidak sesuai dengan notasi regex ([rR]u? p. a) adalah …
JAWABAN: rupaNya
Yang sesuai: RupiaH, RpSa, rup1a

--- Quiz #3
/* Notasi regex berikut yang tidak sesuai (un-matching) dengan teks 'google' adalah …
JAWABAN: ( g+ogl.. )
Yang sesuai: ( g..gle? ), ( [gG]o + gle ), ( go*gle )

--- Chapter 3: Operator REGEXP pada MySQL
--- Mengenal Penggunaan Operator REGEXP pada MySQL
/* pencocokan teks / string pada record data
menggunakan query REGEXP pada SQL untuk memfilter teks pada record data yang sesuai dengan argumen atau notasi regex yang kita inginkan. 
REGEXP adalah bagian perintah SQL yang digunakan untuk melakukan pencocokan pola dari ekspresi string dengan notasi regex terhadap suatu pola. 
Pola diberikan sebagai argumen. REGEXP biasa dikombinasikan dengan query pengkondisian (WHERE) dan bersifat case sensitive

Syntax:
SELECT * FROM nama_tabel WHERE nama_kolom REGEXP 'argumen';
dengan argumen = kombinasi notasi regex yang diinginkan

Tugas:
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

--- Kesimpulan
REGEXP adalah bagian perintah SQL yang digunakan untuk melakukan pencocokan pola dari ekspresi string dengan notasi regex terhadap suatu pola. Pola diberikan sebagai argument dengan sintaks umumnya adalah:
SELECT * FROM nama_tabel WHERE nama_kolom REGEXP 'argumen';
Dengan argumen merupakan kombinasi notasi regex yang diinginkan
REGEXP bersifat case sensitive artinya huruf besar dan huruf kecil diartikan karakter yang berbeda atau dengan kata lain peka terhadap besar-kecilnya huruf

--- Chapter 3: Penggunaan Operator REGEXP_LIKE pada MySQL
--- Mengenal REGEXP_LIKE
/* jika query REGEXP bersifat case sensitive, bagaimana jika aku ingin mengabaikan besar – kecil huruf 

--- Sintaks REGEXP_LIKE
/* REGEXP_LIKE merupakan query pada SQL yang fungsinya mirip dengan query LIKE (query yang digunakan dalam klausa WHERE (pengkondisian) untuk mencari pola tertentu dalam kolom).
Namun pada REGEXP_LIKE mendukung notasi regex dan juga terdapat pilihan (option) untuk mengubah perilaku pencocokan default dari fungsi tersebut. 
Maksudnya jika regex bersifat case sensitive secara default dengan REGEXP_LIKE kita bisa menginisialisasi sebuah parameter untuk mengubah menjadi ignore case sensitive (abaikan besar-kecilnya huruf) atau keep case sensitive (tidak mengabaikan besar-kecilnya huruf).

Sintaks pada REGEXP_LIKE:
SELECT * FROM nama_tabel WHERE REGEXP_LIKE (nama_kolom, 'argumen', match_parameter);

Keterangan:

'argumen' ->	kombinasi notasi regex yang diinginkan
match_parameter	-> literal teks yang memungkinkan untuk pengubahan perilaku pencocokan default dari fungsi tersebut.

Jenis parameter yang bisa digunakan pada match_parameter adalah sebagai berikut:

i -> Mengabaikan case sensitive pada teks

c -> Memperhatikan case sensitive pada teks

n -> Mengabaikan pengecualian notasi tertentu pada regex. Misal : wildcard ( . ) akan bisa mendeteksi newline

m -> Memperlakukan teks sebagai multiple line

x -> Mengabaikan whitespace (karakter spasi)

Ingat! match_parameter bersifat opsional artinya bisa digunakan bisa juga tidak. Jika tidak digunakan maka pengaturan dasar (default) akan diterapkan.

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

--- Kesimpulan
/* REGEXP_LIKE adalah bagian perintah SQL yang digunakan untuk melakukan pencocokan pola dari ekspresi string dengan notasi regex terhadap suatu pola. Pola diberikan sebagai argument dengan sintaks umumnya adalah

SELECT * FROM nama_tabel WHERE REGEXP_LIKE (nama_kolom, 'argumen', match_parameter)
Dengan argumen merupakan kombinasi notasi regex yang diinginkan


REGEXP_LIKE berbeda dengan REGEXP. 
Perbedaannya pada REGEXP_LIKE mendukung fitur tambahan yakni match_parameter. Dimana match_parameter memungkinkan untuk pengubahan perilaku pencocokan default dari regex seperti mengabaikan atau tidak mengabaikan case sensitive, mengabaikan whitespace, dsb.

--- Chapter 4: Penggunaan operator REGEXP_REPLACE pada MySQL
--- Mengenal REGEX_REPLACE
/* melakukan proses pembersihan data di SQL semisal mengganti teks non-numerik menjadi numerik menggunakan regex

--- Sintaks REGEXP_REPLACE
/* REGEXP_REPLACE merupakan query pada SQL yang fungsinya mirip dengan query REPLACE (query yang digunakan untuk mengganti string/karakter tertentu dalam kolom dengan string/karakter yang lain), namun pada REGEXP_REPLACE mendukung notasi regex.
SELECT REGEXP_REPLACE (nama_kolom, 'string yang ingin diganti', 'string pengganti') FROM nama_tabel;
String yang ingin diganti pada kolom yang dipilih, mendukung notasi regex jika menggunakan query REGEXP_REPLACE.

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

--- Quiz - 1
/* Perbedaan query REGEXP dan REGEXP_LIKE terletak pada match_parameter (parameter yang memungkinkan untuk pengubahan perilaku pencocokan default dari regex seperti mengabaikan atau tidak mengabaikan case sensitive, mengabaikan whitespace, dsb). 
Query yang mendukung parameter tersebut adalah REGEXP.
JAWABAN: Salah

--- Quiz - 2
/* Query pada SQL yang digunakan untuk mengganti suatu teks dengan teks yang lain dan men-support penggunaan regex adalah …
JAWABAN: REGEXP_REPLACE

--- Quiz - 3
/* Query SELECT REGEXP_REPLACE(“00082139630858”, “^0+”, “”) ketika dieksekusi akan menghasilkan …
JAWABAN: 82139630858

--- Clean All Columns
/* melakukan penggantian record pada masing-masing kolom pada tabel dqlabregex
- Pada kolom tanggal_catat ubah semua format tanggalnya menjadi format tanggal yang di-support oleh SQL salah satunya adalah format YYYY-MM-DD.
- Hapus setiap karakter non-numerik pada kolom jumlah_member.
- Ubah record yang memuat Sendja maupun padanannya menjadi Senja.
- Penamaan kolom dan urutannya tidak ada yang diubah.

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

1. **Penggunaan Fungsi**: Di kode yang kamu ketik, kamu menggunakan `WHEN (tanggal_catat, '([0-9]{2})-([0-9]{2})-([0-9]{4})')`. Ini salah karena seharusnya menggunakan fungsi `REGEXP_LIKE` untuk memeriksa apakah `tanggal_catat` cocok dengan pola yang diberikan. Di kode jawaban, mereka menggunakan `WHEN REGEXP_LIKE(tanggal_catat, '([0-9]{2})-([0-9]{2})-([0-9]{4})')`, yang benar.

2. **Format ELSE**: Di kode kamu, di bagian `ELSE`, kamu menulis `ELSE(tanggal_catat, '([0-9]{2})/([0-9]{2})/([0-9]{4})', '$3-$1-$2')`. Ini juga salah karena tidak ada fungsi yang digunakan di sini. Seharusnya, kamu langsung menggunakan `REGEXP_REPLACE` seperti di kode jawaban, yaitu `ELSE REGEXP_REPLACE(tanggal_catat, '([0-9]{2})/([0-9]{2})/([0-9]{4})', '$3-$1-$2')`.

3. **Penempatan Spasi**: Meskipun ini bukan kesalahan yang mempengaruhi eksekusi, di kode jawaban, ada spasi yang lebih rapi dan teratur, seperti setelah `ELSE`. Ini membuat kode lebih mudah dibaca.

Jadi, intinya, kesalahan utama ada di penggunaan fungsi yang tepat untuk memeriksa pola dan cara penulisan di bagian `ELSE`. 

--- Aggregasi
/* mengetahui total member yang telah dicatat oleh masing-masing staf_pencatat yakni total dari kolom jumlah_member yang dikelompokkan berdasarkan staf_pencatat, lalu ingin mengurutkannya dari yang terkecil hingga yang terbesar. 
Perlu diingat bahwa lakukan pembersihan data terlebih dahulu yakni dengan menghapus karakter non-numerik pada kolom jumlah_member dan mengganti teks 'Sendja' menjadi 'Senja' dengan notasi regex. 

SELECT
	SUM(REGEXP_REPLACE(jumlah_member, '[^0-9]', '')) AS total_member,
	REGEXP_REPLACE(staf_pencatat, 'Sen.?ja', 'Senja') AS staf_pencatat
FROM dqlabregex
GROUP BY 2 ORDER BY 1;

REGEXP_REPLACE: Sudah pakai P.
Kurung: Sudah seimbang (2 buka, 2 tutup).
GROUP BY 2: Mengelompokkan berdasarkan staf.
ORDER BY 1: Mengurutkan berdasarkan total dari yang terkecil (ascending)

--- Hasil Belajarku
/* Wah senangnya! Aku telah berhasil menyelesaikan rangkaian pelajaran Mengolah Data Teks Unstructured dengan REGEX pada SQL. Dari materi yang telah aku pelajari dan praktekkan, aku telah:

Mampu memahami dan mengenal secara singkat apa itu REGEX dan kegunaannya.
Mampu mengenal karakteristik table dqlabregex yang merupakan tabel pencatatan jumlah member di kota-kota tertentu, dimana table ini kebanyakan memiliki kolom bertipe varchar memiliki penulisan yang berbeda pada kolom tanggal_catat dan juga ada kesalahan penulisan pada kolom jumlah_member (angka 0 ditulis sebagai huruf O), dan juga pada kolom staf_pencatat (Senja dan Sendja).
Mengenal penggunaan operator REGEXP pada MySQL.
Mampu menggunakan operator REGEXP dan character class untuk filter data dengan staf_pencatat bernama Senja dan Sendja menggunakan pola regex sen.?ja.
Mampu menggunakan operator REGEXP dan negasi character set untuk memfilter data salah penulisan angka pada kolom jumlah_member dengan regex [^0-9] (karakter bukan angka).
Mampu menggunakan fungsi REGEXP_LIKE dan character class untuk filter data dengan staf_pencatat bernama Senja dan Sendja menggunakan pola regex sen.?ja.
Mampu menggunakan fungsi REGEXP_LIKE dan negasi character set untuk memfilter data salah penulisan angka pada kolom jumlah_member dengan regex [^0-9] (karakter bukan angka).
Mampu menggunakan fungsi REGEXP_REPLACE dan negasi character set untuk menghapus karakter bukan angka pada jumlah_member dengan regex [^0-9].
Mampu menggunakan fungsi REGEXP_REPLACE untuk merapikan format tanggal yang berbeda dengan capturing group $1, $2, dan $3

