create database if not exists practice_db;
use practice_db;
select students.name,department.dept_id,department.dept_name
from students
full join department
on students.dept=department.dept_name;
-- shows the students without department or the department without students
select students.name,department.dept_name
from students
full join department
on students.dept=department.dept_name
where students.name is null
   or department.dept_name is null;
