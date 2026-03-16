-- query all columns for a city in city(table) with the id 4061
create database if not exists hacker1;-- database already created with the table and the attributes(id,country_name,countrycode,district,population) and the values are stored
use hacker1;
select * from city
where id=4061;
