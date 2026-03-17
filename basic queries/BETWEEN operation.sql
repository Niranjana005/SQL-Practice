create database if not exists practice_db;
use  practice_db;
-- between operator
select name from students
where marks between 50 and 95;-- returns the name of the students whose mark is between 50 and 95
-- not between
select name from students
where marks  not between 50 and 100;-- returns the name if the marks is not between 50 and 100 
-- between with in
select name,marks from students
where marks between 50 and 100
and dept in ('eee');-- returns the eee student's name and mark if the mark is between 50 and 100
-- between text values
select * from students
-- will prin the names between the two names mentioned
where name between 'kiran' and 'niranjana'-- should compare the first letters and here alphabetically k<n so likewise the comparision should be made, here the between of niranjana and kiran will not work because the n>k(should consider the order)
order by name;
-- not between text values
select * from students
where name  not between 'kiran' and 'niranjana'
order by name;-- prints the name thats not between the mentioned names
-- between dates
-- new table creation
create table dept_start(dept_name varchar(50),
						start_date date);
-- date datatype format ('yyyy-mm-dd')
insert into dept_start values('eee','2015-06-01');
insert into dept_start values('aiml','2023-09-20');
insert into dept_start values('aids','2023-07-20');
insert into dept_start values('it','2016-04-30');
insert into dept_start values('cse','2015-07-23');
select * from dept_start;
-- between dates
select * from dept_start
where start_date between '2023-05-01' and '2024-01-11';-- used to filter records within a specific date

