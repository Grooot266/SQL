/* Write your T-SQL query statement below */
--Grooot266
SELECT Emp.name, B.bonus 
FROM Employee AS Emp
LEFT JOIN Bonus AS B ON Emp.empId = B.empId
WHERE ISNULL(B.bonus,0) < 1000 
