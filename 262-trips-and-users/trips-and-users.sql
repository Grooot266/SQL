--Grooot266
/* Write your T-SQL query statement below */

    SELECT DISTINCT trp.request_at AS Day, ROUND((1.0 * COUNT(CASE WHEN trp.status LIKE '%cancelled%' THEN 1 ELSE NULL END) / COUNT(1)),2) AS "Cancellation Rate"
    FROM Trips AS trp 
    LEFT JOIN Users AS cli ON trp.client_id = cli.users_id
    LEFT JOIN Users AS drv ON trp.driver_id = drv.users_id
    WHERE cli.banned ='No' AND drv.banned = 'No' AND trp.request_at BETWEEN '2013-10-01' AND '2013-10-03'
    GROUP BY trp.request_at
