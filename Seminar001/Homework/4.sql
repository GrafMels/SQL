USE Homework_1;
# 4 Задание

SELECT * FROM phone
WHERE product_name LIKE "%Galaxy%";

SELECT * FROM phone
WHERE product_name REGEXP "^iP";

# 4.1 Задание

SELECT * FROM phone
WHERE product_name LIKE "%iPhone%";

# 4.2 Задание

SELECT * FROM phone
WHERE product_name LIKE "%Samsung%";# У меня в имени продукта нет слова Samsung

# 4.3 Задание

SELECT * FROM phone
WHERE product_name REGEXP '[0-9]';# Только в 5 строке нет цифр

# 4.4 Задание

SELECT * FROM phone
WHERE product_name LIKE "%8%";

