
CREATE DATABASE if not exists practice_db;
USE practice_db;

CREATE TABLE students(
   id INT PRIMARY KEY,
   name VARCHAR(50),
   dept VARCHAR(20),
   marks INT
);

INSERT INTO students VALUES(1,'niranjana','eee',95);
INSERT INTO students VALUES(2,'naviin','eee',90);
INSERT INTO students VALUES(3,'kaviin','cse',98);
INSERT INTO students VALUES(4,'swetha','it',80);
-- select operation
SELECT * FROM students;  -- will show all details from table
select name from students; -- will only show names
select id from students; -- will only show the id of the students
select distinct id from students; -- removes the duplicates and return only once

