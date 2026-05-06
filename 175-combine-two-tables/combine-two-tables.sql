-- Grooot266
/* Write your T-SQL query statement below */

SELECT P.firstName , P.lastName, A.city, A.state
FROM Person AS P 
LEFT JOIN Address AS A ON P.PersonId = A.personId






