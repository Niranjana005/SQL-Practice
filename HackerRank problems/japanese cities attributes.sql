-- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
create database if not exists hacker1;
use hacker1;-- database already created with the table and the attributes(id,country_name,countrycode,district,population) and the values are stored
insert into city values(1613,'neyagawa','JPN','osaka',257315);
insert into city values(1630,'ageo','JPN','saitama',209442);
insert into city values(1661,'sayama','JPN','fukuoka',162472);
select * from city
where countrycode='JPN';
