# Write your MySQL query statement below
select s1.student_id, s1.student_name,s2.subject_name,COUNT(ex.subject_name) as attended_exams
From Students as s1
Cross Join Subjects as s2
Left Join Examinations as ex
ON s1.student_id=ex.student_id
AND s2.subject_name=ex.subject_name
Group by s1.student_id, s1.student_name,s2.subject_name
ORDER BY s1.student_id, s2.subject_name;