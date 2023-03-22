USE my_first_database;

INSERT INTO Customer(FirstName, LastName, Age)
VALUES 
( 'Миша', 'Скоробогатов', 11),
( 'Егор', 'Дед', 23),
( 'Илья', 'Николаев', 44),
( 'Лиза', 'Синвиза', 15);
/*
Многострочные комментарии
*/

SELECT * FROM Customer;