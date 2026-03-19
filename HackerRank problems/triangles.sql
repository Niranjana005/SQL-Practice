/* Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

- Equilateral: It's a triangle with 3 sides of equal length.
- Isosceles: It's a triangle with 2 sides of equal length.
- Scalene: It's a triangle with 3 sides of differing lengths.
- Not A Triangle: The given values of A, B, and C don't form a triangle. */
create database if not exists hacker1;
use hacker1;
create table triangles(a int,
                       b int,
                       c int);
insert into triangles values(20,20,23);
insert into triangles values(20,20,20);
insert into triangles values(20,21,22);
insert into triangles values(13,14,30);
select 
case
  when a+b<=c or a+c<=b or b+c<=a then 'Not a Triangle'
  when a=b and b=c then 'Equilateral'
  when a=b or b=c or a=c then 'Isosceles'
  else 'Scalene'
end as triangle_type
from triangles;