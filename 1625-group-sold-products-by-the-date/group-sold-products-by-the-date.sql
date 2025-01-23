# Write your MySQL query statement below
SELECT 
    sell_date, 
    COUNT(DISTINCT product) num_sold, 
    GROUP_CONCAT( DISTINCT product order by product ASC separator ',' ) products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;