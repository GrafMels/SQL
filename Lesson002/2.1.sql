USE my_first_database;

-- создаём табличку с автоматически увеличивающимся id
CREATE TABLE Customer
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(20),
    LastName VARCHAR(20),
    Age INT
);

/*
Многострочные комментарии
*/

SELECT * FROM Customer;