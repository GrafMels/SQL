/* 1 Написать функцию, которая удаляет всю информацию 
об указанном пользователе из БД vk. 
Пользователь задается по id. Удалить нужно все сообщения, 
лайки, медиа записи, профиль и запись из таблицы users. 
Функция должна возвращать номер пользователя.*/

USE vk;

DELIMITER //

DROP FUNCTION IF EXISTS delete_user;

CREATE FUNCTION delete_user(removable_user INT)
RETURNS INT DETERMINISTIC
BEGIN
	SET FOREIGN_KEY_CHECKS=0;
    
	DELETE FROM messages
    WHERE from_user_id = removable_user;
    
    DELETE FROM messages
    WHERE to_user_id = removable_user;

	DELETE FROM profiles
    WHERE user_id = removable_user;

	DELETE FROM media
    WHERE user_id = removable_user;

	DELETE FROM users_communities
    WHERE user_id = removable_user;
    
	DELETE FROM friend_requests
    WHERE initiator_user_id = removable_user;
    
    DELETE FROM friend_requests
    WHERE target_user_id = removable_user;
    
    DELETE FROM likes
    WHERE user_id = removable_user;
    
    DELETE FROM users
    WHERE id = removable_user;
    
    SET FOREIGN_KEY_CHECKS=1;
    RETURN removable_user;
END//


SET @removable_user := 1; # Удаляемый пользователь

SELECT delete_user(@removable_user);

# 2 Предыдущую задачу решить с помощью процедуры и обернуть используемые команды в транзакцию внутри процедуры.

DROP PROCEDURE IF EXISTS delete_user;

CREATE PROCEDURE delete_user(removable_user INT)
BEGIN
START TRANSACTION;
	SET FOREIGN_KEY_CHECKS=0;
    
	DELETE FROM messages
    WHERE from_user_id = removable_user;
    
    DELETE FROM messages
    WHERE to_user_id = removable_user;

	DELETE FROM profiles
    WHERE user_id = removable_user;

	DELETE FROM media
    WHERE user_id = removable_user;

	DELETE FROM users_communities
    WHERE user_id = removable_user;
    
	DELETE FROM friend_requests
    WHERE initiator_user_id = removable_user;
    
    DELETE FROM friend_requests
    WHERE target_user_id = removable_user;
    
    DELETE FROM likes
    WHERE user_id = removable_user;
    
    DELETE FROM users
    WHERE id = removable_user;
    
    SET FOREIGN_KEY_CHECKS=1;
    COMMIT;
END//


SET @removable_user := 2; # Удаляемый пользователь

CALL delete_user(@removable_user);

# 3 * Написать триггер, который проверяет новое появляющееся сообщество. Длина названия сообщества (поле name) должна быть не менее 5 символов. Если требование не выполнено, то выбрасывать исключение с пояснением.

DROP TRIGGER IF EXISTS new_communities_check;


CREATE TRIGGER new_communities_check
BEFORE INSERT
ON communities FOR EACH ROW 
BEGIN
	IF LENGTH(NEW.name) < 5 THEN
		SIGNAL SQLSTATE '45000'
		SET message_text = 'Обновление отменено. Название сообщества должно состоять минимум из 5 символов';
    END IF;
END//

DELETE FROM communities 
WHERE id = 11;

INSERT INTO communities VALUES (11,'name');

