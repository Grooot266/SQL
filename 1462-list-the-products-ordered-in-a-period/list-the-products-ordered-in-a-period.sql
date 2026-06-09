-- Grooot266
/* Write your T-SQL query statement below */
SELECT P.product_name, SUM(O.unit) AS unit 
FROM Products AS P 
LEFT JOIN Orders AS O ON P.product_id = O.product_id
WHERE YEAR(O.order_date) = '2020' AND MONTH(O.order_date) = '02'
GROUP BY P.product_name
HAVING SUM(O.unit) >=100

