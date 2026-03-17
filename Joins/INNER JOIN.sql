-- Sample table structure (for reference)

-- students table
-- id | name | dept | marks

-- department table
-- dept_id | dept_name

-- dept_start table
-- dept_name | start_date
create database if not exists practice_db;
use practice_db;
-- inner join
select students.name,students.id,department.dept_id,students.dept
from students
inner join department
on students.dept=department.dept_name; -- returns the name,id,dept_id,dept with reference to the department name which is same in both the tables
-- inner join or join both are same
select students.name,department.dept_id,students.dept
from students
join department
on students.dept=department.dept_name;
-- join multiple tables
-- joining students with department and dept_start tables to combine related data
select students.name,department.dept_id,department.dept_name,dept_start.start_date
from students
inner join department on students.dept=department.dept_name
inner join dept_start on students.dept=dept_start.dept_name;
-- inner join with where
select students.name,department.dept_name,department.dept_id
from students
inner join department
on students.dept=department.dept_name
where students.marks>80;-- returns the student name and dept name with dept id whose mark is greater than 80

-- inner join with order by
select students.name,department.dept_name
from students
inner join department
on students.dept=department.dept_name
order by department.dept_id desc;-- orders descendingly with respect to the dept_id

-- addition of count with inner join
select department.dept_name,count(students.id) as total,department.dept_id
from students
inner join department
on students.dept=department.dept_name
group by department.dept_name,department.dept_id;-- total students in each department along with dept_id