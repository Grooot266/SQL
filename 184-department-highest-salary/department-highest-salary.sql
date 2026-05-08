-- Grooot266
/* Write your T-SQL query statement below */

SELECT D.name AS Department, E.name AS Employee, E.salary AS Salary 
FROM (
    SELECT *, RANK() OVER(
        PARTITION BY departmentId ORDER BY salary DESC
    ) AS Rk_Sal
    FROM Employee 
) AS E
LEFT JOIN Department AS D ON E.departmentId = D.id 
WHERE E.Rk_Sal = 1 
