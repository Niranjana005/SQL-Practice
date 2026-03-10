-- sql update
create database if not exists practice_db;
use practice_db;-- already practice_db database is created and a table of students is created with the attributes (id,name,marks,dept) with some values
-- inserting some values to table
insert into students value(16,'mirdhua','aids',57);
insert into students value(17,'rythm','eee',60);
insert into students value(18,'isai','it',67);
insert into students value(19,'kumar','aiml',78);
select * from students;
-- update the table value
update students
set name='kathir' -- setting the value which needs to be changed
where id=19;-- id of the change needed row

/* by updating multiple records
update students
set marks=80
where dept='it'
this will update the marks of the records to 80 where the attribut dept has it */

/* update warning
if we omit the where clause then all the records will be changed
update students
set name='niranjana'; 
here every record will be changed so using update should be careful */


