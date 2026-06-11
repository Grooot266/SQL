-- Grooot266
/* Write your T-SQL query statement below */

    SELECT sell_date, COUNT( product) AS num_sold, STRING_AGG( product,',') WITHIN GROUP(ORDER BY product) AS products 
    FROM (
        SELECT DISTINCT product,sell_date 
        FROM activities
    ) as a
    GROUP BY sell_date
    ORDER BY sell_date ASC

