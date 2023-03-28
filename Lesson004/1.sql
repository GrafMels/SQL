USE vk;

SELECT firstname, lastname
FROM users
JOIN other_users
ON other_users.first_name = users.firstname AND other_users.last_name = users.lastname;

CREATE TABLE new_clone_table 
SELECT *
FROM users
WHERE EXISTS (SELECT * 
			  FROM other_users 
              WHERE users.firstname = other_users.first_name);