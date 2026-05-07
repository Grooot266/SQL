CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        /* Write your T-SQL query statement below. */

            SELECT HS.salary
            FROM(
                SELECT DS.salary, ROW_NUMBER() OVER(
                    ORDER BY DS.salary DESC
                ) AS R
                FROM (
                    SELECT DISTINCT salary 
                    FROM Employee
                ) AS DS
            )AS HS 
            WHERE HS.R=@N
    
    );
END