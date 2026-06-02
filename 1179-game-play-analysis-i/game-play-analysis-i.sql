-- Grooot266
/* Write your T-SQL query statement below */

SELECT player_id , event_date AS first_login
FROM (
    SELECT player_id, event_date, ROW_NUMBER() OVER(PARTITION BY player_id ORDER BY event_date) AS rnk
    FROM Activity 
) AS flg
WHERE flg.rnk =1 


