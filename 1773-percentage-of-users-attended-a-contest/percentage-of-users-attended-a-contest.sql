# Write your MySQL query statement below
SELECT contest_id, 
       -- Menghitung persentase user unik per kontes
       round(count(DISTINCT user_id)*100/(SELECT count(user_id) from Users), 2) percentage
FROM Users 
JOIN Register
USING (user_id)
GROUP BY contest_id 
ORDER BY percentage DESC, contest_id ASC; 