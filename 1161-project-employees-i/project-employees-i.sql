/* Write your T-SQL query statement below */
--Grooot266

SELECT PRJ.project_id, ROUND(AVG((EMP.experience_years)*1.0),2) AS average_years 
FROM Project AS PRJ
LEFT JOIN Employee AS EMP ON PRJ.employee_id = EMP.employee_id
WHERE EMP.experience_years IS NOT NULL 
GROUP BY PRJ.project_id