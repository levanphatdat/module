create schema student_management;
create table `student_management`.`class` (
id int not null,
`name` varchar(45),
primary key (id));
insert into class(id,name) values (1, "Dat");
insert into class(id,name) values (2, "Truong");
select * from class;