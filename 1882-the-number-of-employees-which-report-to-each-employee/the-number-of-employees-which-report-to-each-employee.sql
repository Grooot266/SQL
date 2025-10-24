/* Write your T-SQL query statement below */
--Grooot266
SELECT M.employee_id,M.name,COUNT(E.reports_to)AS reports_count, ROUND(AVG(E.age*1.00),0) AS average_age
FROM Employees AS E
JOIN Employees AS M ON E.reports_to = M.employee_id
GROUP BY M.employee_id,M.name
ORDER BY M.employee_id ASC


