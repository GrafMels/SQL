USE vk;
# 1 задание - Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке. [ORDER BY]
SELECT DISTINCT firstname
FROM users
ORDER BY firstname;

# 2 задание - Выведите количество мужчин старше 35 лет [COUNT].
SELECT COUNT(*) 
FROM profiles
WHERE DATEDIFF(NOW(), birthday) > 12784; # 3 года

# 3 задание - Сколько заявок в друзья в каждом статусе? (таблица friend_requests) [GROUP BY]
SELECT status, COUNT(*)  
FROM friend_requests
GROUP BY status;

# 4 задание - Выведите номер пользователя, который отправил больше всех заявок в друзья (таблица friend_requests) [LIMIT].
SELECT MAX(max_count.count) AS max_count
FROM (SELECT initiator_user_id, COUNT(initiator_user_id) AS count
	FROM friend_requests
	GROUP BY initiator_user_id) 
max_count;

# 5 задание - Выведите названия и номера групп, имена которых состоят из 5 символов [LIKE].
SELECT name, admin_user_id
FROM communities
WHERE name
LIKE '_____';
