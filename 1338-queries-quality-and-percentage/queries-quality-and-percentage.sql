/* Write your T-SQL query statement below */
--Grooot266
SELECT query_name, 
ROUND(AVG(1.0 * rating/position),2) AS quality,
ROUND(SUM(IIF(rating < 3,100.0,0))/COUNT(rating),2) AS poor_query_percentage
FROM Queries
GROUP BY query_name
HAVING query_name IS NOT NULL