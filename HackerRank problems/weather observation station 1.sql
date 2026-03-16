-- Query a list of CITY and STATE from the STATION table.
create database if not exists hacker1;-- database already created with the table and the attributes(id,country_name,countrycode,district,population) and the values are stored
use hacker1;
create table station(id int,
                     city varchar(30),
                     state varchar(50),
                     lat_w int,
                     long_w int);
insert into station values(794,'Kissee','Mills MO', 139,73);
insert into station values(824,'Loma','Mar CA',48,130);
insert into station values(603,'Sandy','Hook CT',72,148);
insert into station values(478,'Tipton','IN',33,97);
insert into station values(619,'Arlington','CO',75,92);
insert into station values(711,'Turner','AR',50,101);
insert into station values(839,'Slidell','LA',85,151); 
select city,state from station;
                   
