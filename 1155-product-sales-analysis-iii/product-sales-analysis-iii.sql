/* Write your T-SQL query statement below */
--Grooot266
SELECT S1.product_id,S1.year AS first_year,S1.quantity,S1.price
FROM Sales AS S1
JOIN(
    SELECT product_id,MIN(year) AS fy
    FROM Sales
    GROUP BY product_id
) AS S2 ON S1.product_id=S2.product_id AND S1.year = S2.fy
