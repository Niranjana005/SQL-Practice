CREATE DATABASE IF NOT EXISTS practice_db;
USE practice_db;-- already the database is created with a table students with attributes of id,name,dept,marks and the values are been added for practice purpose
-- insert some values
INSERT INTO students VALUES(29,'kiran','cse',67);
INSERT INTO students VALUES(30,'kiruba','it',79);
INSERT INTO students VALUES(31,'supriya','aiml',56);
INSERT INTO students VALUES(32,'srinisha','aids',76);
INSERT INTO students VALUES(33,'srinithi','eee',80);
SELECT * FROM students;
-- sql sum() operation
SELECT SUM(marks)
FROM students; -- will return the total sum of marks

-- sql sum() with where
SELECT SUM(marks)
FROM students
WHERE id>20;-- the marks of the id's after 20 will be summed

-- using alias
SELECT SUM(marks) AS 'total marks'
FROM students;-- the column name will be total marks

-- using sum() with group by
SELECT SUM(marks) as 'total marks', dept
FROM students
GROUP BY dept; -- each dept's total mark will be returned

-- sum() with an expression
SELECT SUM(marks*2)
FROM students; -- doubles each mark and then sum it

-- sum with order by
SELECT dept,SUM(marks) AS 'total marks'
FROM students
GROUP BY dept
ORDER BY 'total marks' DESC; -- sorts departments with highest total marks 