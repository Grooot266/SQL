/* Write your T-SQL query statement below */
--Grooot266

SELECT x,y,z,
CASE WHEN x+y>z AND x+z>y AND y+z>x THEN 'Yes' ELSE 'No' END Triangle
FROM Triangle 