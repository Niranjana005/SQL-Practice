-- aggregate function MAX() function
CREATE DATABASE IF NOT EXISTS practice_db;
use practice_db;-- already the database is created with a table students with attributes of id,name,dept,marks and the values are been added for practice purpose
select * from students;
-- max() function - returns the highest value
SELECT MAX(marks)
FROM students;-- returns the highest marks among the whole table marks

-- max() with column alias
SELECT max(marks) as maximum_marks
FROM students; -- column name as maximum_marks

-- max() with GROUP BY
SELECT max(marks) as highest_marks,dept
from students
GROUP BY dept; -- highest marks in each department

-- max() with where
SELECT max(marks) AS highest_marks
from students
WHERE dept='eee';-- returns the highest mak of the eee department

-- max() with multiple conditions
SELECT max(marks) as highest_marks
from students
where dept='eee' and marks>40; -- will return the highest mark of the eee department and above 40

-- max() with having
SELECT dept, MAX(marks) as highest
from students
group by dept
having max(marks)>50;-- returns the department whose maximum mark is greater than 50

-- max() to find the student with highest marks
SELECT name,marks
from students
where marks=(SELECT Max(marks) from students);--   returns the student who has maximum marks



