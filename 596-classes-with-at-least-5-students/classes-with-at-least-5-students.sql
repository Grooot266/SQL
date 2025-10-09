/* Write your T-SQL query statement below */
--Grooot266
SELECT DISTINCT C1.class 
FROM Courses AS C1
JOIN ( 
    SELECT class,COUNT(class) AS TNC
    FROM Courses
    GROUP BY class
    HAVING COUNT(class) >=5
) AS C2 ON C1.class = C2.class
