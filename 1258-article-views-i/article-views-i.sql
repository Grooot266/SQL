/* Write your T-SQL query statement below */
--Grooot266
SELECT DISTINCT author_id AS id FROM Views 
WHERE viewer_id = author_id 
ORDER BY author_id