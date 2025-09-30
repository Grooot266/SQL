/* Write your T-SQL query statement below */
--Grooot266
SELECT Emp_UNQ.unique_id, Emp.name 
FROM Employees AS Emp 
LEFT JOIN EmployeeUNI AS Emp_UNQ ON Emp.id = Emp_UNQ.id