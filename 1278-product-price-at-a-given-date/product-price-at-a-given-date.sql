/* Write your T-SQL query statement below */
--Grooot266

SELECT DISTINCT p1.product_id, ISNULL(p2.price,10) AS price
FROM products AS p1
LEFT JOIN (
    SELECT product_id, new_price AS price, 
    ROW_NUMBER () OVER (PARTITION BY product_id ORDER BY change_date DESC) AS rn
    FROM products
    WHERE change_date <= '2019-08-16'
) AS p2 ON p1.product_id = p2.product_id AND p2.rn=1


