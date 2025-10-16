/* Write your T-SQL query statement below */
--Grooot266

WITH CTE1 AS (
    SELECT customer_id,COUNT(DISTINCT product_key) as Pk_cnt
    FROM customer
    GROUP BY customer_id
),
CTE2 AS (
    SELECT COUNT(*) AS P_cnt
    FROM Product
)
SELECT C1.customer_id
FROM CTE1 AS C1 
JOIN CTE2 AS C2 ON C1.Pk_cnt = C2.P_cnt


