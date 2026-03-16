-- query to print thee city names which has more than 120000 and the countrycode is usa 
create database if not exists hacker1;-- database and table is already created with the atributes(id,country_name,countrycode,district,population) and the values are stored
use hacker1;
select country_name from city
where population>120000 and countrycode='USA';