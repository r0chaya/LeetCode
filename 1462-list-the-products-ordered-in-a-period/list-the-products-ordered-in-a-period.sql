# Write your MySQL query statement below
SELECT p.product_name, SUM(o.unit) unit
FROM Products p
JOIN Orders o
ON p.product_id=o.product_id
WHERE o.order_date like "2020-02%"
GROUP BY o.product_id
HAVING unit>=100;