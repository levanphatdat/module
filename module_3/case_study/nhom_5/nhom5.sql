create database website;

use website;

create table user(
user_id int primary key auto_increment,
role_id int,
name_user varchar(45) not null,
pass varchar(45) not null,
number_phone varchar(15),
email varchar(45),
posts_id int not null,
constraint fk_posts
foreign key (posts_id)
references posts (posts_id)
);

create table posts(
posts_id int primary key,
title varchar(45),
content varchar(200),
category_id int not null,
constraint fk_category
foreign key (category_id)
references category (category_id)
);
  
create table category(
category_id int primary key,
category varchar(45)
);

drop table user;
drop table posts;
drop table category;
