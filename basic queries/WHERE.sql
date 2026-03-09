CREATE DATABASE if not exists practice_db;
USE practice_db;
-- already created table in db, if not should be created
insert into students values(5,'david','cse',78);
insert into students  values(6,'kamali','cse',65);
insert into students values(7,'raju','it',79);
insert into students values(9,'ravi','aiml',88);
insert into students values(8,'monisha','aiml',80);
insert into students values(10,'deepika','aids',65);
insert into students values(11,'mouli','aids',50);
-- where operation
select * from students
where id=1; -- selects when id is equal to 1
--  operators in where clause
-- >,<,>=,<=
select * from students
where marks>50;
-- != or <>
select * from students
where id != 3;

-- between
select * from students
where marks between 60 and 100;-- both 60 and 100 will also be included
-- like('-%')
select * from students
where name like 'n%';-- starts with n
-- ('%-')
select * from students
where name like '%n'; -- ends with n
-- ('%--%')
select * from students
where name like '%an%';-- contains an
-- in operator
select * from students
where name in ('naviin','niranjana');-- to specify multiple possible values for a column




