# Write your MySQL query statement below
SELECT MAX(num) num
FROM (SELECT num FROM MyNumbers GROUP BY num Having COUNT(num)=1) unik;
