-- Profile Pemateri: XERATIC

-- Chapter 1: Apa Itu Database? Apakah Sama dengan Excel?
-- 🎯 Tujuan Pembelajaran:
/* 
1. Memahami konsep dasar relational database management system (RDBMS) dan bagaimana perbedaannya dengan spreadsheet seperti Excel.
2. Instalasi serta akses MySQL dan phpMyAdmin di XAMPP
3. Mengetahui kegunaan MySQL dan phpMyAdmin.
4. Membuat dan menghapus database di phpMyAdmin
*/

-- Langkah - Langkah Pembuatan tabel (via tab SQL)
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

-- Mengenal Relasi dan Foreign Key
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    vendor_id INT,
    order_date DATE,
    shipment_date DATE,
    FOREIGN KEY (vendor_id) REFERENCES vendors(vendor_id)
);

-- Relasi Banyak ke Banyak (Many-to-Many)
CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    quantity INT,
    price VARCHAR(100),
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Menambahkan Validasi dan Aturan Data
ALTER TABLE vendors MODIFY name VARCHAR(100) NOT NULL;

ALTER TABLE order_items ADD CHECK (quantity > 0);

-- Uji Coba – Input & Query Data
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

-- Query JOIN untuk Menampilkan Informasi
SELECT v.name AS vendor_name, p.name AS product_name, oi.quantity
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
JOIN vendors v ON o.vendor_id = v.vendor_id
JOIN products p ON oi.product_id = p.product_id;

-- Note: For my certificates of completion, check README.md
-- Thank you.
