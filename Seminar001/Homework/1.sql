# 1 Задание
CREATE DATABASE Homework_1;
use Homework_1;

CREATE TABLE phone
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(20),
    manufacturer VARCHAR(20),
    product_count INT,
    price INT
);

INSERT INTO Customer(product_name, manufacturer, product_count, price)
VALUES 
( 'Z Fold4', 'Samsung', 11, 40000),
( 'Galaxy S22 Ultra', 'Samsung', 2, 86400),
( 'Galaxy Tab S8', 'Samsung', 4, 50000),
( 'Galaxy Z Flip4', 'Samsung', 1, 60000),
( 'iPad Air', 'Apple', 4, 61900),
( 'iPhone 14 Pro', 'Apple', 1, 160000),
( 'iPhone 14 Pro MAX', 'Apple', 2, 176000),
( 'iPhone 13', 'Apple', 3, 100300),
( 'iPhone 12', 'Apple', 4, 81900),
( '70', 'Honor', 5, 45990),
( '50', 'Honor', 6, 27990),
( '50 Lite', 'Honor', 7, 19990),
( '10X Lite', 'Honor', 8, 13995),
( 'Redmi 9A', 'Xiaomi', 9, 5490),
( 'Redmi 9C', 'Xiaomi', 10, 6990),
( 'Redmi 10C', 'Xiaomi', 11, 9990);
