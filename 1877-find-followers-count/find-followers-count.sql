/* Write your T-SQL query statement below */
--Grooot266


SELECT DISTINCT user_id,COUNT(follower_id) AS followers_Count
FROM Followers
GROUP BY user_id
