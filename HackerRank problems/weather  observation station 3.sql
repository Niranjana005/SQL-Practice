-- Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
create database if not exists hacker1;
use hacker1;
select * from station;
insert into station values(411,'Negreet','LA', 98.9707194000,105.3376115000);
insert into station values(588,'Glencoe','KY',46.3873924400,136.0427027000 );
insert into station values(665,'Chelsea','IA',98.7221093700,59.6891300200);
select distinct city from station
where mod(id,2)=0;
