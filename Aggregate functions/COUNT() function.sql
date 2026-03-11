CREATE DATABASE IF NOt EXISTS practice_db;
USE practice_db;-- already the database is created with a table students with attributes of id,name,dept,marks and the values are been added for practice purpose
-- insert some values
INSERT INTO students VALUES(24,'deby','it',95);
INSERT INTO students VALUES(25,'jeeva','eee',76);
INSERT INTO students VALUES(26,'priyanka','aiml',68);
INSERT INTO students VALUES(27,'bhavani','aids',35);
INSERT INTO students VALUES(28,'flintof','cse',92);
-- count function
SELECT COUNT(*)
FROM students;-- count the total number of students

-- count() at column name
SELECT COUNT(name)
FROM students;-- count the total non-null values of the name  column

-- count(distinct ) function
SELECT COUNT(DISTINCT marks)
from students;-- will count only the unique values and the non-null values from the mark column

-- adding a where
SELECT COUNT(marks)
FROM students
WHERE marks>60;-- will count the marks greater than 60

-- using an alias
SELECT COUNT(*) AS 'Number of records'
FROM students;

-- using with group by
SELECT COUNT(*) AS 'Number of records',dept
FROM students
GROUP BY dept;-- counts the number of student in each department

-- count() with where and distinct
SELECT COUNT(DISTINCT dept)
FROM students
WHERE marks>60;-- counts the distinct department where the marks will be greater than 60

-- count with multiple conditions
SELECT COUNT(*)
FROM students
WHERE dept='eee';-- counts students in a specific department

-- count with group by and having
SELECT dept,COUNT(*) AS 'total students'
FROM students
GROUP BY dept
HAVING COUNT(*)>1; -- shows departments where the student count will be greater than 1

-- count with order by
SELECT dept, COUNT(*) AS 'total students'
FROM students
GROUP BY dept
ORDER BY 'total students' DESC;-- departments sorted by highest number of students

