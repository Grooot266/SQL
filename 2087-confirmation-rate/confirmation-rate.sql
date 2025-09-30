/* Write your T-SQL query statement below */
--Grooot266
SELECT S.user_id,ROUND(CAST(COUNT((CASE WHEN CMF.action='Confirmed' THEN 1 ELSE NULL END))*1.0/COUNT(S.user_id) AS FLOAT),2) AS Confirmation_rate
FROM Signups AS S
LEFT JOIN Confirmations AS CMF ON S.user_id=CMF.user_id
GROUP BY S.user_id