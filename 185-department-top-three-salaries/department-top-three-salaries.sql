-- Grooot266
/* Write your T-SQL query statement below */
SELECT D.name AS Department, E.name AS Employee ,E.salary AS Salary 
FROM (
    SELECT * , DENSE_RANK () OVER (
        PARTITION BY departmentId ORDER BY salary DESC
    ) AS rk_sal
    FROM Employee
) AS E
LEFT JOIN Department AS D ON E.departmentId = D.id

WHERE E.rk_sal <= 3
