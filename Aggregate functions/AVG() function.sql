CREATE DATABASE IF NOT EXISTS practice_db;
USE practice_db;-- already the database is created with a table students with attributes of id,name,dept,marks and the values are been added for practice purpose
-- insert some values
INSERT INTO students VALUES(34,'prithvik','eee',89);
INSERT INTO students VALUES(35,'karthick','aiml',67);
INSERT INTO students VALUES(36,'kalaiarasan','aids',58);
INSERT INTO students VALUES(37,'sathya','it',67);
INSERT INTO students VALUES(38,'shruthi','cse',72);
-- sql avg() function
SELECT AVG(marks)
from students;-- returns the average of the whole marks section

-- avg() with where clause
SELECT AVG(marks)
FROM students
WHERE id>10;-- returns the average of marks of the id's greater than 10

-- using alias
SELECT AVG(marks) as `average marks`
FROM students; 

-- avg() with group by
SELECT AVG(marks) AS `Average marks`,dept
FROM students
GROUP BY dept;-- returns the average of each department

-- avg() with order by
SELECT dept,AVG(marks) AS `average marks`
FROM students
GROUP BY dept
ORDER BY `average marks` DESC; -- shows departments sorted by highest average marks
-- select with alias - creates the result column and gives it a name 
-- order by with alias - will sort the result in that column
-- avg() with conditions
SELECT AVG(marks) FROM students
WHERE dept='it'; -- average marks of it(specific) department

-- avg() with expression
SELECT AVG(marks*2) as average
FROM students; -- first multiplies with each and then calculates the average

-- avg() with DISTINCT
SELECT AVG(DISTINCT marks)
FROM students; -- removes duplicate marks before calculating average
