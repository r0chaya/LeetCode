# Write your MySQL query statement below
#SELECT * FROM Salary
#WHERE sex='m'

UPDATE Salary
SET sex = 
    CASE 
        WHEN sex = 'm' THEN 'f'
        WHEN sex = 'f' THEN 'm'
        ELSE sex
    END;

