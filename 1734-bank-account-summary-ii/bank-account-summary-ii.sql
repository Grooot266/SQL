-- Grooot266
/* Write your T-SQL query statement below */

SELECT USR.name, SUM(TSR.amount) AS balance
FROM Users AS USR
LEFT JOIN Transactions AS TSR ON USR.account = TSR.account
GROUP BY USR.name
HAVING SUM(TSR.amount) > 10000
