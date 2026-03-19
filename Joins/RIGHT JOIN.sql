-- RIGHT JOIN
-- Returns all records from the right table (students)
-- and matching records from the left table (department)
-- If no match is found, NULL values are returned


create database if not exists practice_db;
use practice_db;
select students.id, students.name,department.dept_name
from department
right join students
on department.dept_name=students.dept;

--  returns students whose department is not present in department table
select *
from department
right join students
on department.dept_name=students.dept
where department.dept_name is null;

-- orders the details by the alphabetical order of student name
select students.name,department.dept_name
from department
right join students
on department.dept_name=students.dept
order by students.name;

-- counts the students count in each department
select department.dept_name,count(students.dept) as total
from department
right join students
on department.dept_name=students.dept
group by students.dept;
