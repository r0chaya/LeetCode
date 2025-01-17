SELECT s.name
FROM SalesPerson s
WHERE s.name NOT IN (
    SELECT s1.name
    FROM SalesPerson s1
    JOIN Orders o ON s1.sales_id = o.sales_id
    JOIN Company c ON o.com_id = c.com_id
    WHERE c.name = 'RED'
);
