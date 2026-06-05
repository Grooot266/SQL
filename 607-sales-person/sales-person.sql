/* Write your T-SQL query statement below */
SELECT SP.name 
FROM SalesPerson AS SP 
WHERE SP.name NOT IN (
    SELECT S.name
    FROM SalesPerson AS S
    LEFT JOIN Orders AS ORD ON S.sales_id = ORD.sales_id
    LEFT JOIN Company AS CP ON CP.com_id = ORD.com_id
    WHERE CP.name = 'RED'
)