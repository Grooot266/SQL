-- Grooot266
/* Write your T-SQL query statement below */
SELECT product_id, product_name
FROM (
    SELECT DISTINCT PRD.product_id, PRD.product_name, MIN(SL.sale_date) AS min_dt,MAX(SL.sale_date) AS max_dt
    FROM Product AS PRD
    INNER JOIN Sales AS SL ON PRD.product_id = SL.product_id 
    GROUP BY PRD.product_id, PRD.product_name
) a
WHERE min_dt >= '2019-01-01' AND max_dt <= '2019-03-31'
