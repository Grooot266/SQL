-- Grooot266
/* Write your T-SQL query statement below */

WITH GroupCTE AS (
    SELECT *, id - ROW_NUMBER() OVER (ORDER BY id) AS  groupid
    FROM Stadium 
    WHERE people >= 100
)
SELECT id, visit_date, people
FROM GroupCTE
WHERE groupid IN (
    SELECT groupid
    FROM GroupCTE
    GROUP BY groupid
    HAVING COUNT(*) >=3

)