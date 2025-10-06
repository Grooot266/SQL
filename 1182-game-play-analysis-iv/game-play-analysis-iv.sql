/* Write your T-SQL query statement below */
--Grooot266

WITH firstlogin AS (
    SELECT player_id, MIN(event_date) AS first_day
    FROM Activity 
    GROUP BY player_id

),
returnnextday AS (
    SELECT FL.player_id AS player_id 
    FROM firstlogin AS FL
    INNER JOIN Activity AS A1 ON FL.player_id = A1.player_id
    AND A1.event_date = DATEADD(day,1,FL.first_day)
)

SELECT ROUND(CAST(COUNT(DISTINCT rnd.player_id) AS DECIMAL(10,4))/ CAST((SELECT COUNT(DISTINCT player_id) FROM Activity)AS DECIMAL (10,4)),2) AS fraction
FROM returnnextday AS rnd

