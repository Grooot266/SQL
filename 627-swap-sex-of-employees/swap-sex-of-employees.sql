/* Write your T-SQL query statement below */
--Grooot266/SQL
-- Case statement Solution 
UPDATE Salary
SET sex = CASE 
WHEN sex = 'm' THEN 'f'
ELSE 'm'
END 
