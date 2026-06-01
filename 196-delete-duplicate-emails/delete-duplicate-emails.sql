-- Grooot266
/* Write your T-SQL query statement below */

WITH CTE 
AS(
    SELECT id,email,ROW_NUMBER() OVER (
        PARTITION BY email ORDER BY id
    ) AS rnk
    FROM Person
)
DELETE FROM CTE
WHERE rnk > 1 


