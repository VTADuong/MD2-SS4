CREATE TABLE products (
	product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR (50),
    price DECIMAL (15, 0),
    quantity INT
);
INSERT INTO products
VALUE
('1', 'win', 'laptop', '15000000', '19'),
('2', 'mac', 'laptop', '21000000', '30'),
('3', '17pro', 'phone', '30000000', '5'),
('4', 'base', 'rowter', '1000000', '10'),
('5', 's50', 'phone', '25000000', '2');

SELECT * FROM products WHERE price BETWEEN 5000000 AND 15000000;
SELECT * FROM products WHERE category IN ('laptop', 'tablet');
SELECT * FROM products WHERE product_name LIKE 's%';
SELECT * FROM products WHERE category != 'phone';
UPDATE products SET price = price * 0.95 WHERE category = 'laptop';
DELETE FROM products WHERE quantity = 0;
SELECT * FROM products