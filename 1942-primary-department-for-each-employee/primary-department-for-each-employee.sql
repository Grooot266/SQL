/* Write your T-SQL query statement below */
--Grooot266

SELECT DISTINCT Emp.employee_id, COALESCE(Dep.department_id,Emp.department_id) AS department_id 
FROM Employee AS Emp
LEFT JOIN Employee AS Dep ON Emp.employee_id = Dep.employee_id AND Dep.primary_flag='Y'