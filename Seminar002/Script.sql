DROP DATABASE IF EXISTS vk;

CREATE DATABASE vk;

use vk;

drop table if exists users;
create table users (
	id bigint unsigned not null auto_increment primary key,
	# id SERIAL, = (id bigint unsigned not null auto_increment unique,)
	firstname varchar(100),
	lastname varchar(100),
	email varchar(100) unique,
	password_hash varchar(100),
	phone bigint unsigned unique,
	
	INDEX idx_users_username(firstname, lastname)
) Comment 'Юзеры';

drop table if exists profiles;
create table profiles (
	user_id bigint unsigned not null primary key,
	gender char(1),
	hometown varchar(100),
	create_at datetime default now()
	
) Comment 'Профили';

ALTER table profiles 
add constraint fk_profiles_user_id 
foreign key (user_id) references users(id);

