USE my_first_database;

SELECT SUM(age) AS total_sum FROM customer;

SELECT MIN(age) FROM customer;

SELECT MIN(age) AS min_age, 
	   MAX(age) AS max_age, 
       AVG(age) AS avg_sum 
FROM customer;

