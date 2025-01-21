# Write your MySQL query statement below
SELECT query_name,
round(avg(cast(rating as decimal)/position), 2) as quality,
round(sum(case when rating < 3 THEN 1 ELSE 0 END)*100/count(*), 2) as poor_query_percentage
FROM Queries
GROUP BY query_name;
