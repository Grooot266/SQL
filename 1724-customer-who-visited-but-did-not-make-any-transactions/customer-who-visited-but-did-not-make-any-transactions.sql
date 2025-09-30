/* Write your T-SQL query statement below */
--Grooot266
SELECT V.customer_id , COUNT(V.visit_id) AS Count_no_trans
FROM Visits AS V
LEFT JOIN Transactions AS T ON V.visit_id = T.visit_id
WHERE T.transaction_id IS NULL 
GROUP BY V.customer_id