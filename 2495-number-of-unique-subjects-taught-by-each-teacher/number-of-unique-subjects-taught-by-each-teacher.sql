/* Write your T-SQL query statement below */
--Grooot266

SELECT teacher_id,COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id 

