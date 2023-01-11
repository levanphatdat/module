create schema student_management;
use student_management;
create table `student_management`.`class` (
id int not null,
`name` varchar(45),
primary key (id));
insert into class(id,name) values (1, "Dat");
insert into class(id,name) values (2, "Truong");
select * from class;
create table `teacher` (
    id int not null,
    `name` varchar(45),
    age int not null,
    country varchar(45),
    primary key (id));
insert into teacher (id,name, age, country) values (1, "Hai",34, "Hue");
select * from teacher;