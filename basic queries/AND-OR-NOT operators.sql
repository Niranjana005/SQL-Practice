CREATE DATABASE IF NOT EXISTS practice_db;
use pactice_db;-- already the db is created with a table students and it have column attributes like(id,name,dept,marks) and added values

-- sql and operator
select * from students
where marks>50 and name like 'n%';-- returns the details only if both are true

select * from students
where dept='eee' and marks>50 and name is not null;-- only returns if all the three are true

-- sql or operator
select * from students
where marks>60 or name like 's%';-- returns values if even one among the number of conditions is true

-- combining and,or
select * from students
where marks>50 and (dept='cse' or name like 'n%');-- one condition is compulsory and the another condition consists of or and if one among the or and the other and condition should be satisfied

-- not operator
select * from students
where not dept='cse';-- returns other than cse dept attributes

-- not operator(not like)
select * from students
where name not like 'n%';-- returns if not started with n

-- not between
select * from students
where marks  not between 60 and 80;-- will not return who have marks between the 60 and 80

-- not in
select * from students
where dept not in ('eee','aiml');-- will return the values without the eee and aiml 

-- not greater than
select * from students
where not marks>50;-- will return the values that is not greater than 50

-- not less then
select * from students
where not marks<60; -- will return the values which is not lesser than 60

