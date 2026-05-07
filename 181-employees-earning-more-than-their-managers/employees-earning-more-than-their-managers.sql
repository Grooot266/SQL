-- Grooot266
/* Write your T-SQL query statement below */
SELECT Emp.name AS Employee
FROM Employee AS Emp
LEFT JOIN Employee AS Mng ON Emp.managerId = Mng.id
WHERE Emp.salary > Mng.salary 

