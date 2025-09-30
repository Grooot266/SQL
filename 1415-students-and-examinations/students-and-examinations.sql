/* Write your T-SQL query statement below */
--Grooot266
SELECT Std.student_id, Std.student_name,Sub.subject_name,COUNT(Exm.subject_name) AS attended_exams 
FROM Students AS Std
CROSS JOIN Subjects AS Sub 
LEFT JOIN Examinations AS Exm ON Exm.student_id = Std.student_id AND Sub.subject_name = Exm.subject_name 
GROUP BY Std.student_id, Std.student_name,Sub.subject_name
ORDER BY Std.student_id,Sub.subject_name


