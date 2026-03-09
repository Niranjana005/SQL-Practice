CREATE DATABASE if not exists practice_db;
use practice_db;-- contains the table students with 4 column attributes(id,name,dept,marks) and 11 values in already created db (practice_db)
select * from students;
-- order by
-- default and ascending order
select * from students
order by name; -- if nothing is mentioned with oorder by then its ascending and then here with ascending order wise name is sorted
-- descending order by
select * from students
order by id desc; -- if desc is mentioned then the the given attribute will be arranged in descending order
 
-- order by several columns
-- if we need to operate in order by several columns then any one of the attribut values should be same for different values so then it can be used
-- so we are inserting students with same marks as id is the primary key we cant do it with the primary key
insert into students values(12,'kumar','aids',50);
insert into students values(13,'kannan','eee',80);
select * from students
order by marks,name;-- it sorts the list and if there is two marks then it will sort it ascending order with names and remaining the same
-- combine ascending and descending 
select * from students
order by dept desc,name asc;-- it sorts with the dept in the descending order of the whole table and in that dept the corresponding dept contains two names or multiple names then that will be sorted ascending order

