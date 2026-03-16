-- Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
create database if not exists hacker1;
use hacker1;-- database already created with the table and the attributes(id,country_name,countrycode,district,population) and the values are stored
select country_name from city
where countrycode='JPN';