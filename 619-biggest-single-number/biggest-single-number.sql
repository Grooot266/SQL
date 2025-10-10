/* Write your T-SQL query statement below */
--Grooot266

SELECT MAX(mn1.num) AS num
FROM MyNumbers mn1
JOIN (
    SELECT DISTINCT num, COUNT(num) AS total_count 
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) =1
) AS mn2 ON mn1.num = mn2.num
