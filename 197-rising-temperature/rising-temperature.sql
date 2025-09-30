/* Write your T-SQL query statement below */
--Grooot266
SELECT w1.id
FROM Weather AS W1 
LEFT JOIN  Weather AS W2 
ON w1.recordDate = DATEADD(DAY,1,W2.recordDate)
WHERE W1.temperature > W2.temperature