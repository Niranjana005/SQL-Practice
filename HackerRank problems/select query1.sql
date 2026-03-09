create database hacker1;
use hacker1;
create table city(
      id int,
      country_name varchar(50),
      countrycode varchar(20),
      district varchar(30),
      population int
      );
      insert into city values(6,'rotterdam','NLD','zuid-holland',593321 );
      insert into city values(3878, 'Scottsdale', 'USA', 'Arizona', 202705);
      insert into city values(3965,'Corona', 'USA', 'California', 124966);
      insert into city values(3973,'Concord','USA','California',121780);
      insert into city value(3977,'Cedar Rapids','USA','Iowa', 120758);
      insert into city values(3982,'Coral Springs','USA','Florida',117549);
      insert into city values(4054,'Fairfield','USA','California',92256);
      insert into city values(4058,'Boulder','USA','Colorado',91238);
      insert into city values(4061,'Fall River','USA','Massachusetts',90555);
      select * from city
where population>100000 and Countrycode ='USA';
      
