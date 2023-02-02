create database product;

use product;

create table products (
p_id int primary key,
p_code varchar(45),
p_name varchar(45),
p_price double,
p_amount int,
p_description varchar(45),
p_status varchar(45)
);

insert into products (p_id, p_code, p_name, p_price, p_amount, p_description, p_status)
values (1, 'PR1', 'quat', 250000, 3, 'ranh', 'tot'),
(2, 'PR2', 'ban', 550000, 1, 'ranh', 'binh thuong'),
(3, 'PR3', 'ghe', 300000, 4, 'ranh', 'binh thuong');

select * from products;

create unique index p_code_index
on products(p_code);

create index composite_index
on products(p_name, p_price);

explain select * from products;

explain select * from products 
where p_code = 'PR2';

explain select * from products 
where p_name = 'ban';

create view view_products as
select p_code, p_name, p_price, p_status from products;

select * from view_products;

update view_products 
set p_name = 'chen'
where p_code = 'PR1';

drop view view_products;

delimiter //
create procedure all_information_product()
begin
select * from products;
end //
delimiter ;

call all_information_product();

delimiter //
create procedure add_information(in p_id int,
in p_code varchar(45),
in p_name varchar(45),
in p_price double,
in p_amount int,
in p_description varchar(45),
in p_status varchar(45))
begin
insert into products (p_id, p_code, p_name, p_price, p_amount, p_description, p_status)
values (p_id, p_code, p_name, p_price, p_amount, p_description, p_status);
end //
delimiter ;

call add_information(4, 'PR4', 'dua', 100000, 20, 'dang thue', 'binh thuong');

delimiter // 
create procedure edit_by_p_id(in p_id int,
in p_code varchar(45),
in p_name varchar(45),
in p_price double,
in p_amount int,
in p_description varchar(45),
in p_status varchar(45))
begin
update products p
set 
p.p_code = p_code,
p.p_name = p_name,
p.p_price = p_price,
p.p_amount= p_amount,
p.p_description = p_description,
p.p_status = p_status
where p.p_id = p_id;
end //
delimiter ;

call edit_by_p_id (4, 'PR4', 'muong', 150000, 6, 'ranh', 'tot');

delimiter //
create procedure delete_by_p_id(in p_id int) 
begin
delete from products 
where products.p_id = p_id;
end //
delimiter ;

call delete_by_p_id(4);

call all_information_product();