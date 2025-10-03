/* Write your T-SQL query statement below */
--Grooot266
WITH CTE_R AS (
    SELECT *, ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_date)AS RN
    FROM Delivery
)
SELECT ROUND(
    100.0 * SUM(
    CASE WHEN order_date = customer_pref_delivery_date THEN 1 
    ELSE 0 END)
    /COUNT(DISTINCT customer_id),2) AS immediate_percentage
FROM CTE_R
WHERE RN = 1
