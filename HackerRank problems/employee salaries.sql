-- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater $2000 than  per month who have been employees for less than 10 months. Sort your result by ascending employee_id.

create database if not exists hacker1;
use hacker1;
create table employee(employee_id int,
                      name varchar(30),
                      months int,
                      salary int);
insert into employee values(330,'Rose',5,2248);
insert into employee values(1233,'Angela',7,1296);
insert into employee values(2035,'Patrick',1,4583);
insert into employee values(1901,'Frank',10,2763);
insert into employee values(2405,'Lisa',7,4350);
insert into employee values(2974,'Kimberly',11,2874); 
insert into employee values(3190,'Bonnie',11,3758);
select name from employee
where salary>2000 and months<10
order by employee_id; 