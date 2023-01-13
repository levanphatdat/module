use quan_li_sinh_vien;

select address, count(student_id) as 'Số lượng học viên'
from student
group by address;

select s.student_id, s.student_name, avg(mark)
from student s join mark m on s.student_id = m.student_id
group by s.student_id, s.student_name;

SELECT s.student_id,s.student_name, AVG(mark)
FROM student s join mark m on s.student_id = m.student_id
GROUP BY s.student_id, s.student_name;

SELECT s.student_id, s.student_name, AVG(mark)
FROM student s join mark m on s.student_id = m.student_id
GROUP BY s.student_id, s.student_name
HAVING AVG(mark) > 15;

SELECT s.student_id, s.student_name, AVG(mark)
FROM student s join mark m on s.student_id = m.student_id
GROUP BY s.student_id, s.student_name;

SELECT s.student_id, s.student_name, AVG(mark)
FROM student s join mark m on s.student_id = m.student_id
GROUP BY s.student_id, s.student_name
HAVING AVG(mark) >= ALL (SELECT AVG(mark) FROM mark GROUP BY mark.student_id);
