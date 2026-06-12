-- Grooot266
/* Write your T-SQL query statement below */

-- SELECT USR.name, SUM(TSR.amount) AS balance
-- FROM Users AS USR
-- LEFT JOIN Transactions AS TSR ON USR.account = TSR.account
-- GROUP BY USR.name
-- HAVING SUM(TSR.amount) > 10000

SELECT a.name, a.balance
FROM (
    SELECT usr.name, SUM(tsr.amount) AS balance
    FROM Users AS usr
    LEFT JOIN Transactions AS tsr ON usr.account = tsr.account 
    GROUP BY usr.name
) AS a
WHERE a.balance > 10000