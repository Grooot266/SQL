/* Write your T-SQL query statement below */
--Grooot266

WITH TotalSum AS (
    SELECT person_name, SUM(weight) OVER(ORDER BY turn ASC) AS tws
    FROM Queue 
)
SELECT TOP 1 person_name
FROM TotalSum 
WHERE tws <=1000
ORDER BY tws DESC
