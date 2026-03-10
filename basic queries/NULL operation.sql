CREATE DATABASE IF NOT EXISTS practice_db;
use practice_db;-- already the db practice_db is created and hen the table students is also created with attributes(id,name,dept,marks) and the values are also added
-- inserting some values
select * from students;-- to view the whole table
insert into students values(20,'saranya','cse',75);
insert into students values(14,'rasika','it',98);
insert into students values(15,'usha','eee',99);
-- Null operations
-- is null
select name from students
where marks is null;-- returns name if the marks is null 

-- is not null
select name from students
where marks is not null;-- returns names of the values where marks is not null

