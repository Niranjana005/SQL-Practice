create database if not exists practice_db;
use practice_db;
-- in operator
select * from students;
select * from students
where dept in ('eee','aiml');-- returns the students details whose departments are eee or aiml
-- not in operator
select * from students
where dept not in ('eee','aiml');-- returns the student details that are not from the mentioned departments (aiml,eee)
-- in(select) subquery
-- new table creation
create table department(dept_name varchar(30),
                       dept_id int primary key);
insert into department values('eee',100);
insert into department values('aiml',101);
insert into department values('aids',102);
insert into department values('it',103);
insert into department values('cse',104);
-- in(select) subquery
select * from students
where dept in (select dept_name from department);

-- not in(select) subquery
select * from students
where dept not in(select dept_name from department);


