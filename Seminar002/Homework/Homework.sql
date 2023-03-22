# 2 Задание Написать скрипт, добавляющий в созданную БД vk 2-3 новые таблицы (с перечнем полей, указанием индексов и внешних ключей) (CREATE TABLE)

DROP TABLE IF EXISTS post_comment;
CREATE TABLE post_comment(
	id SERIAL,
    comment_text VARCHAR(500),
    user_id BIGINT UNSIGNED NOT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (media_id) REFERENCES media(id)

);

DROP TABLE IF EXISTS smiley;
CREATE TABLE smiley(
	id SERIAL,
    symbol_designation VARCHAR(200),
    size INT,
	image VARBINARY(8000),
	message_id BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (message_id) REFERENCES messages(id)
);

# 3 Задание Заполнить 2 таблицы БД vk данными (по 10 записей в каждой таблице) (INSERT)

INSERT INTO users(firstname, lastname, email, password_hash, phone)
VALUES 
( 'Миша', 'Потапов', 'potapov@gmail.com', '', 89087686789),
( 'Нина', 'Исмаилов', 'potapov1@gmail.com', '', 89087686780),
( 'Оля', 'Ли', 'potapov2@gmail.com', '', 89087686781),
( 'Натаха', 'Бойков', 'potapov3@gmail.com', '', 89087686782),
( 'Славя', 'Каменских', 'potapov4@gmail.com', '', 89087686783),
( 'Вовчик', 'Брынза', 'potapov5@gmail.com', '', 89087686784),
( 'Маша', 'Милов', 'potapov6@gmail.com', '', 89087686785),
( 'Паша', 'Загорулько', 'potapov7@gmail.com', '', 89087686786),
( 'Даша', 'Ульянов', 'potapov8@gmail.com', '', 89087686787),
( 'Саша', 'Изяшвили', 'potapov9@gmail.com', '', 89087686788),
( 'Дима', 'Буллы', 'potapov11@gmail.com', '', 89087686718),
( 'Илья', 'Меньшиков', 'potapov12@gmail.com', '', 89087686728),
( 'Игорь', 'Пожарский', 'potapov13@gmail.com', '', 89087686738),
( 'Вася', 'Великанов', 'potapov14@gmail.com', '', 89087686748),
( 'Витя', 'Трынь', 'potapov15@gmail.com', '', 89087686758),
( 'Вова', 'Матвеев', 'potapov16@gmail.com', '', 89087686768);


INSERT INTO messages(from_user_id, to_user_id, body, created_at)
VALUES 
( 1, 2, 'Hello', NOW()),
( 2, 1, 'Hello', NOW()),
( 1, 2, 'whats up Bro', NOW()),
( 2, 1, 'Nice Bro', NOW()),
( 3, 1, 'Hello', NOW()),
( 4, 1, 'Hello', NOW()),
( 5, 1, 'Hello', NOW()),
( 6, 1, 'Hello', NOW()),
( 7, 1, 'Hello', NOW()),
( 1, 2, 'Nice Bro', NOW());

# 4 Задание 

ALTER TABLE profiles
	ADD is_active INT;

INSERT INTO profiles(user_id, gender, birthday, created_at, hometown, is_active)
VALUES 
( 1, 'M', '2005-10-21', NOW(), 'Irkutsk', DATEDIFF(NOW(), birthday)>2922),
( 2, 'F', '2006-11-01', NOW(), 'Skolkovo', DATEDIFF(NOW(), birthday)>2922),
( 3, 'F', '2007-11-13', NOW(), 'Zima', DATEDIFF(NOW(), birthday)>2922),
( 4, 'F', '2008-11-12', NOW(), 'Novgorod', DATEDIFF(NOW(), birthday)>2922),
( 5, 'F', '2009-11-11', NOW(), 'Moscow', DATEDIFF(NOW(), birthday)>2922),
( 6, 'M', '2010-11-11', NOW(), 'Piter', DATEDIFF(NOW(), birthday)>2922),
( 7, 'F', '2011-11-15', NOW(), 'Ob', DATEDIFF(NOW(), birthday)>2922),
( 8, 'M', '2012-11-11', NOW(), 'Vladivostock', DATEDIFF(NOW(), birthday)>2922),
( 9, 'F', '2013-11-17', NOW(), 'Yakutsk', DATEDIFF(NOW(), birthday)>2922),
( 10, 'F', '2014-11-11', NOW(), 'Lima', DATEDIFF(NOW(), birthday)>2922),
( 11, 'M', '2015-11-18', NOW(), 'Abakan', DATEDIFF(NOW(), birthday)>2922),
( 12, 'M', '2016-11-11', NOW(), 'Krasnoyarsk', DATEDIFF(NOW(), birthday)>2922),
( 13, 'M', '2017-11-11', NOW(), 'Uran', DATEDIFF(NOW(), birthday)>2922),
( 14, 'M', '2018-11-19', NOW(), 'Ygoslavia', DATEDIFF(NOW(), birthday)>2922),
( 15, 'M', '2019-11-11', NOW(), 'Riga', DATEDIFF(NOW(), birthday)>2922),
( 16, 'M', '2020-11-11', NOW(), 'Tumen', DATEDIFF(NOW(), birthday)>2922);

# 5 Задание

UPDATE messages
	SET created_at='2333-12-11 03:13:22'
	WHERE id = 5;

DELETE FROM messages
WHERE created_at > now();
	
