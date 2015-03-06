create table activities(
id serial primary key,
name varchar(255),
description varchar(255),
latitude integer,
longitude integer,
user_id integer,
category_id integer
);

create table categories(
id serial primary key,
name varchar(255)
);

create table users(
id serial primary key,
name varchar(255),
email varchar(255),
password_digest varchar(255)
);

create table tags(
id serial primary key,
name varchar(255)
);
