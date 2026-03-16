-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
create database if not exists hacker1;
use hacker1;
insert into station values(342,'Chignik','Lagoon AK',103.1995264000,153.0084273000);
insert into station values(733,'Pelahatchie','MS',38.5816159500,28.1195070300);
insert into station values(441,'Hanna City','IL', 50.9893298700,136.7811010000);
select count(city)-count(distinct city)
from station;