create database if not exists practice_db;
use practice_db;
select * from students;
select * from students
where name like 'n%';-- returns the names that starts with n
select * from students
where name like '%a';-- returns the names that ends with a 
select * from students
where name like '%an%'; -- returns all the names from students that contains character sequence 'an'
select * from students
where name like 'n%an%';-- returns the names with n followed by some wildcard and then an wildcard
select * from students
where name like "na%";
select * from students
where name like 'n%' and name like '%n';-- using and
select * from students
where name like 'k%' or name like '%n';-- using or
select * from students
where name like 'k%n';-- combining starts with and endswith
select * from students
where name like 'n__%';-- combining the wildcards like % and _
select * from students
where name like '_r%';-- returns the names where the second letter will be r
