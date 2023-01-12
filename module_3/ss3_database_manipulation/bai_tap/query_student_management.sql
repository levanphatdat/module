use quan_li_sinh_vien;

select * from student
where student_name like 'h%';

select * from class
where month(start_date) =12;

select * from subject 
where credit between 3 and 5;

update student 
set class_id = 2
where student_name = 'Hung';

select student_name, sub_name, mark 
from mark m
join student s on m.student_id =s.student_id
join subject j on m.sub_id = j.sub_id
order by m.mark desc, s.student_name asc;
 