/* Write your T-SQL query statement below */
--Grooot266
SELECT A1.machine_id,ROUND(ABS(AVG(A1.timestamp - A2.timestamp)),3) AS processing_time 
FROM Activity AS A1
INNER JOIN Activity AS A2 ON (A1.process_id = A2.process_id AND A1.machine_id = A2.machine_id  AND A1.activity_type='end' AND A2.activity_type='start')
GROUP BY A1.machine_id 


