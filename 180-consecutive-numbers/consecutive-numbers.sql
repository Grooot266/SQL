/* Write your T-SQL query statement below */
-- Grooot266

SELECT DISTINCT l1.num AS ConsecutiveNums
FROM logs as l1 
JOIN logs as l2 ON l1.id=l2.id+1
JOIN logs as l3 ON l2.id=l3.id+1
WHERE l1.num=l2.num AND l1.num=l3.num 
