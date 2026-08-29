/* Write your T-SQL query statement below */
SELECT  STD.student_id, STD.student_name,SUB.subject_name, COUNT(EXM.subject_name) AS attended_exams
FROM Students AS STD
CROSS JOIN Subjects AS SUB
LEFT JOIN Examinations AS EXM ON EXM.student_id = STD.student_id AND EXM.subject_name = SUB.subject_name
GROUP BY  STD.student_id, STD.student_name, SUB.subject_name
ORDER BY  STD.student_id ASC, STD.student_name ASC, SUB.subject_name ASC ,attended_exams DESC