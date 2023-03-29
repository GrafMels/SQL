USE vk;

# 1 Создайте представление с произвольным SELECT-запросом из прошлых уроков [CREATE VIEW]
CREATE VIEW new_table AS
SELECT id, firstname, lastname, email, phone
FROM users
WHERE email LIKE '___________________';

# 2 Выведите данные, используя написанное представление [SELECT]
SELECT * 
FROM new_table;

# 3 Удалите представление [DROP VIEW]
DROP VIEW new_table;

# 4 * Сколько новостей (записей в таблице media) у каждого пользователя? Вывести поля: news_count (количество новостей), user_id (номер пользователя), user_email (email пользователя). Попробовать решить с помощью CTE или с помощью обычного JOIN.
SELECT COUNT(media.id) AS news_count, media.user_id, users.email
FROM media
JOIN users
ON users.id = media.user_id
GROUP BY user_id;