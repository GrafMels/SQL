USE vk;

SELECT firstname, lastname
FROM users
UNION SELECT firstname, lastname 
FROM other_users
UNION ALL SELECT firstname, lastname 
FROM other_users;

SELECT 'Не Люблю', 'Цифру 5', phone
FROM users
WHERE phone 
LIKE '%5%'
UNION SELECT firstname, lastname, phone 
FROM users;

