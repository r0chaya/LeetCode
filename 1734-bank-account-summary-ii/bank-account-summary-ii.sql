# Write your MySQL query statement below
SELECT u.name, SUM(t.amount) balance
FROM Users u
JOIN Transactions t
on u.account=t.account
group by u.name
HAVING SUM(t.amount) >10000;