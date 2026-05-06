--Grooot266
/* Write your T-SQL query statement below */
SELECT (
    SELECT DISTINCT salary 
    FROM (
        SELECT salary, DENSE_RANK() OVER(
            ORDER BY salary DESC
        ) AS R
        FROM Employee
    ) AS RT
    WHERE RT.R = 2 
) AS SecondHighestSalary 
