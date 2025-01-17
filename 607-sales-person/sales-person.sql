SELECT s.name
FROM SalesPerson s
WHERE s.name NOT IN (
    SELECT s1.name
    FROM SalesPerson s1
    JOIN Orders USING (sales_id)
    JOIN Company c USING (com_id)
    WHERE c.name = 'RED'
);
