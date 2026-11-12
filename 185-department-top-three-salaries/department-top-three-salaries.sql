/* Write your T-SQL query statement below */
SELECT DEP.name AS Department, EMP.name  AS Employee, Emp.salary AS Salary
FROM (  
    SELECT *, DENSE_RANK() OVER(
        PARTITION BY  departmentId
        ORDER BY salary DESC
    ) AS rnk
FROM Employee ) AS EMP
LEFT JOIN Department AS DEP ON EMP.departmentId = DEP.id 
WHERE EMP.rnk <= 3
