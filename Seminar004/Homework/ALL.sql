USE vk;

# 1 Подсчитать количество групп, в которые вступил каждый пользователь.
SELECT user_id, COUNT(community_id) AS count_communities
FROM users_communities
GROUP BY user_id;

# 2 Подсчитать количество пользователей в каждом сообществе.
SELECT community_id, COUNT(user_id) AS count_users
FROM users_communities
GROUP BY community_id;

# 3 Пусть задан некоторый пользователь. Из всех пользователей соц. сети найдите человека, который больше всех общался с выбранным пользователем (написал ему сообщений).

SELECT * 
FROM users 
JOIN (SELECT MAX(from_user_id) AS count_users
	  FROM messages
      WHERE to_user_id = 1/*ВЫБРАННЫЙ ПОЛЬЗОВАТЕЛЬ*/) user_number
ON users.id = user_number.count_users;
# Вывожу информацию о пользователе который больше всего писал выбранному пользователю

# 4 * Подсчитать общее количество лайков, которые получили пользователи младше 18 лет..

SELECT COUNT(likes_users.count_likes)
FROM profiles
JOIN 
(
	  SELECT user_id AS user_likes_id, count_likes.count_likes_int_media AS count_likes
	  FROM media
      JOIN (
			SELECT media_id, COUNT(id) AS count_likes_int_media
			FROM likes
			GROUP BY media_id
	  ) count_likes /*Самая внутреняя скобочка показывает, колиичество лайков к каждому media и передаёт id media и колличество лайков*/
	  ON media.id = count_likes.media_id
)likes_users /*Следующая скобочка соединяет media с её владельльцем и передаёт id пользователя и колличество лайков к пользователю*/
ON profiles.user_id = likes_users.user_likes_id AND (profiles.birthday + INTERVAL 18 YEAR) > NOW(); # Здесь происходит проверка условий

# 5 Определить кто больше поставил лайков (всего): мужчины или женщины.

SELECT IF(SUM(gender = "F") < COUNT(gender)/2, 'Больше мужчин', 'Больше женщин') AS Кого_Больше
FROM profiles
JOIN 
(
	SELECT user_id, COUNT(id) AS count_likes_int_media
	FROM likes
	GROUP BY user_id
)likes_users /*Соединяет user id в лайках и передаёт колличество лайков от каждого пользователя*/
ON profiles.user_id = likes_users.user_id; 

