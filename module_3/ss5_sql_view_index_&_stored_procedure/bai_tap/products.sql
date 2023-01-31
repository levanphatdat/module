create database product;

use product;

create table products (
id int primary key,
code varchar(45),
name varchar(45),
price double,
amount int,
description varchar(45),
status varchar(45)
);

insert into products (id, code, name, price, amount, description, status)
values (1, 'PR1', 'quat', 250000, 3, 'ranh', 'tot'),
(2, 'PR2', 'ban', 550000, 1, 'ranh', 'binh thuong'),
(3, 'PR3', 'ghe', 300000, 4, 'ranh', 'binh thuong');

select * from products;

create unique index code_index
on products(code);

create index composite_index
on products(name, price);

explain select * from products;

explain select * from products 
where code = 'PR2';

explain select * from products 
where name = 'ban';

create view view_products(code, name, price, status) as
select code, name, price, status from products;

select * from view_products;

update view_products 
set name = 'chen'
where code = 'PR1';

drop view view_products;

delimiter //
create procedure all_information_product()
begin
select * from products;
end //
delimiter ;

call all_information_product();

delimiter //
create procedure add_information(id int,
code varchar(45),
name varchar(45),
price double,
amount int,
description varchar(45),
status varchar(45))
begin
insert into products (id, code, name, price, amount, description, status)
values (id, code, name, price, amount, description, status);
end //
delimiter ;

call add_information(4, 'PR4', 'dua', 100000, 20, 'dang thue', 'binh thuong');

delimiter // 
create procedure edit_by_id( id int, 
code varchar(45),
name varchar(45),
price double,
amount int,
description varchar(45),
status varchar(45))
begin
update products p
set 
p.code = code,
p.name = name,
p.price = price,
p.amount= amount,
p.description = description,
p.status = status
where p.id = id;
end //
delimiter ;

call edit_by_id (4, 'PR4', 'muong', 150000, 6, 'ranh', 'tot');

delimiter //
create procedure delete_by_id(id int) 
begin
delete from products 
where products.id = id;
end //
delimiter ;

call delete_by_id(4);

call all_information_product();