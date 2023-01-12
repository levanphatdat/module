use quan_li_ban_hang;

insert into customer (c_id, c_name, c_age)
values (1, 'Minh Quan', 10),
(2, 'Ngoc Oanh', 20),
(3, 'Hong Ha', 50);

insert into `order` (o_id, c_id, o_date, o_total_price)
values (1, 1, '2006-3-21', null),
(2, 2, '2006-3-23', null),
(3, 1, '2006-3-16', null); 

insert into product (p_id, p_name, p_price)
values (1, 'may giat', 3),
(2, 'tu lanh', 5),
(3, 'dieu hoa', 7),
(4, 'quat', 1),
(5, 'bep dien', 2);

insert into order_detail (o_id, p_id, od_qty)
values (1, 1, 3),
(1, 3, 7),
(1, 4, 2),
(2, 1, 1),
(3, 1, 8),
(2, 5, 4),
(2, 3, 3);

select o_id, o_date, o_total_price from `order`;

select c.c_name, p.p_name
from order_detail od
join `order` o on od.o_id = o.o_id
join customer c on o.c_id = c.c_id
join product p on od.p_id = p.p_id;

select c_name
from customer c
left join `order` o on o.c_id = c.c_id
where o.o_id is null;

SELECT o.o_id,
       o.o_date,
       od.od_qty * p.p_price AS 'order_total_price'
FROM `order` o
JOIN order_detail od ON o.o_id = od.o_id
JOIN product p ON od.p_id = p.p_id;