-- Grooot266
/* Write your T-SQL query statement below */
SELECT name,  COALESCE(travelled_distance,0) AS travelled_distance
FROM (
    SELECT usr.name , SUM(rd.distance) AS travelled_distance
    FROM Users AS usr
    LEFT JOIN Rides AS rd ON usr.id = rd.user_id
    GROUP BY usr.id,usr.name
) a 
ORDER BY travelled_distance DESC,name
