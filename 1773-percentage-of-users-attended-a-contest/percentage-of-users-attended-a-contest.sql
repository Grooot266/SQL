/* Write your T-SQL query statement below */
--Grooot266

SELECT reg.contest_id, ROUND(COUNT(reg.user_id)*100.0/(SELECT COUNT(DISTINCT user_id) FROM Users),2) AS percentage
FROM Users AS usr
INNER JOIN Register AS reg ON usr.user_id = reg.user_id
GROUP BY reg.contest_id
ORDER BY percentage DESC, reg.contest_id
