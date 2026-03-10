-- aggregate functions
CREATE DATABASE IF NOT EXISTS practice_db;
use practice_db; -- already the database is created with a table students with attributes of id,name,dept,marks and the values are been added for practice purpose
-- insertion of some values
INSERT INTO students VALUES(20,'krishna','aids',89);
INSERT INTO students VALUES(21,'kamal','aiml',57);
INSERT INTO students values(22,'priya','it',98);
INSERT INTO students VALUES(23,'iyal','eee',45);
-- SQL min() function
SELECT MIN(marks)
FROM students;-- returns the lowest mark from the whole list

-- Setting column name(alias)
SELECT MIN(marks) AS minimum_marks
from students;-- will have the column name as minimum_marks

-- using min() with group by
SELECT MIN(marks) AS minimum_marks,dept
FROM students
GROUP BY dept;-- will return the minimum marks in each department, group by is used to return the values in each of the category in the table

-- using min() with where
SELECT MIN(marks) as minimum_marks
FROM students
WHERE dept='eee';-- will return the minimum mark of the eee department

-- min() with multiple conditions
SELECT MIN(marks) AS minimum_marks
FROM students
WHERE dept='eee' and marks>40; -- will return the lowest mark in the eee department that will be grater than 40

-- min() with HAVING
SELECT dept,MIN(marks) AS minimum_marks
FROM students
GROUP BY dept
HAVING MIN(marks)>50; -- will return the departments where the minimum marks is greater than 50

-- min() to find the student with lowest mark
SELECT name,dept,marks
from students
where marks=(SELECT MIN(marks) FROM students);-- will return the student who has the lowest marks

-- min ignores null values
SELECT min(marks)
FROM students;-- if some students have null marks then the min() will ignore them



