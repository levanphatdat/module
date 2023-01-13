use quan_li_sinh_vien;

select * from subject
where credit = (select max(credit) from subject);

select * from subject 
join mark on subject.sub_id = mark.sub_id
where mark = (select max(mark) from mark);

select s.*, avg(m.mark) as 'Điểm trung bình' from student s
join mark m on s.student_id = m.student_id
group by s.student_id
order by 'Điểm trung bình' desc;