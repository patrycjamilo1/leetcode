SELECT a.student_id, a.student_name, c.subject_name, COUNT(b.subject_name) AS "attended_exams"
FROM Subjects c
CROSS JOIN Students a
LEFT JOIN Examinations b
ON (c.subject_name = b.subject_name AND a.student_id = b.student_id)
GROUP BY a.student_id, a.student_name, c.subject_name
ORDER BY a.student_id, c.subject_name
