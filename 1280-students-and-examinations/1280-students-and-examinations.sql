# Write your MySQL query statement below
SELECT
    s.student_id,
    s.student_name,
    su.subject_name,
    COUNT(ex.student_id) AS attended_exams
FROM Students s
CROSS JOIN Subjects su
LEFT JOIN Examinations ex
    ON s.student_id = ex.student_id
    AND su.subject_name = ex.subject_name
GROUP BY
    s.student_id,
    s.student_name,
    su.subject_name
ORDER BY
    s.student_id,
    su.subject_name;
