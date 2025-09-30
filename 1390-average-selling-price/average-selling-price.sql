/* Write your T-SQL query statement below */
--Grooot266
SELECT P.product_id, ROUND(ISNULL(SUM(US.units * P.price * 1.0)/SUM(US.units),0),2) AS average_price
FROM Prices AS P
LEFT JOIN UnitsSold AS US ON P.product_id = US.product_id
AND US.purchase_date  BETWEEN P.start_date AND P.end_date
GROUP BY P.product_id