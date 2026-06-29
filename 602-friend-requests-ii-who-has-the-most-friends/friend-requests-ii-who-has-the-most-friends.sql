-- Grooot266
/* Write your T-SQL query statement below */
WITH FR_CT AS (
    SELECT requester_id AS id, accepter_id AS fr_id
    FROM RequestAccepted
    UNION 
    SELECT accepter_id AS id, requester_id AS fr_id
    FROM RequestAccepted
)
SELECT TOP 1 id, COUNT(*) AS num
FROM FR_CT
GROUP BY id
ORDER BY COUNT(*) DESC

