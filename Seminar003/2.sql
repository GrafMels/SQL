USE vk;

CREATE TABLE other_users(
id INT PRIMARY KEY auto_increment,
firstname VARCHAR(20) NOT NULL,
lastname VARCHAR(20) NOT NULL
);

INSERT INTO other_users(firstname, lastname)
VALUES ('Никита', 'Пупков'),
('Дуняша', 'Зелебобина'),
('Саша', 'Простокваша'),
('Дима', 'ВсёМимо'),
('Илья', 'Свинья'),
('Сергей', 'ПростоСергей');

INSERT INTO users(firstname, lastname, email, password_hash, phone)
VALUES ('Никита', 'Пупков', 'Nikita@gmail.com', '12345', 89140060126),
('Дуняша', 'Зелебобина', 'Dunya@gmail.com', '125125', 89140060127),
('Саша', 'Простокваша', 'Sasha@gmail.com', '236', 89140060128),
('Дима', 'ВсёМимо', 'Dima@gmail.com', '347347', 89140060129),
('Илья', 'Свинья', 'Ilya@gmail.com', '347347', 89140060135),
('Сергей', 'ПростоСергей', 'Sergey@gmail.com', '569659', 89140060145);
