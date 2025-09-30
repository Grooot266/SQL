/* Write your T-SQL query statement below */
--Grooot266
SELECT id,movie,description,rating
FROM Cinema
WHERE id%2!=0
AND description !='boring'
ORDER BY rating DESC
