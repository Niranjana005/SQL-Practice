create database if not exists practice_db;
use practice_db;
insert into students values(39,'ashika','aiml',78);
insert into students values(44,'arvind','eee',87);
insert into students values(40,'bargavi','aids',34);
insert into students values(41,'barath','it',72);
insert into students values(43,'chandru','cse',64);
insert into students values(42,'dharun','aiml',67);
insert into students values(45,'raam','eee',75);
-- % wildcard
select * from students
where name like '%an';
select * from students
where name like '%in%';
-- _ wildcard
select * from students
where name like '__ran';
select * from students
where name like 'n___in';
select * from students
where name like '_i%';
-- [] wildcard
select * from students
where name like '[nsk]%'; -- return all the customers starting with either n or s or k
select * from students
where name like '[a-h]%';-- will return all the customers starting from a to h 
-- {} wildcard
select * from students
where name regexp 'a{2}';-- returns the name contains two consecutive 'a'
select * from students
where name regexp 'a{2,4}';-- returns the names that is repeated 2 to 4 times
select * from students
where name regexp '^[^ki]';-- returns the names not starting with k or i 

