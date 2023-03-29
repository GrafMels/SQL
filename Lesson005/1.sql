USE vk;

DROP VIEW copy_user;
CREATE VIEW copy_user AS
SELECT id, firstname, lastname, email, phone
FROM users
WHERE id < 40;

SELECT *
FROM copy_user;


