/* Write your T-SQL query statement below */
--Grooot266
SELECT E1.name
FROM Employee AS E1
INNER JOIN (
    SELECT managerID,COUNT(*) AS Direct_reports
    FROM Employee
    GROUP BY managerID
    HAVING COUNT(*)>=5
) AS E2 ON E1.id = E2.managerID
