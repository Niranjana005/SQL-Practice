create database if not exists practice_db;
use practice_db;
-- left join/left outer join
select * from department;
-- adding values to the department table which is already created to perform left join
insert into department values('cyber',105);
insert into department values('agri',106);
insert into department values('ece',107);
insert into students values(46,'praviin','vlsi',76);
-- left join
select department.dept_id,department.dept_name,students.name
from department
left join students
on department.dept_name=students.dept;

-- finding depts with no student
select department.dept_name
from department
left join students
on department.dept_name=students.dept
where students.name is null;

-- displaying the result in a sorted rder using order by
select department.dept_id,department.dept_name,students.name
from department
left join students
on department.dept_name=students.dept
order by department.dept_id;

-- count students in each department
select department.dept_id,department.dept_name,count(students.name) as total
from department
left join students
on department.dept_name=students.dept
group by department.dept_id,department.dept_name;

