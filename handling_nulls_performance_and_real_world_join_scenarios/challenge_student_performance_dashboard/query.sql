-- Write your code here
SELECT
s.name AS student_name,
c.class_name, t.name AS teacher_name,
AVG(g.score) AS average_grade
 FROM students s
    LEFT JOIN classes c ON c.class_id = s.class_id
    LEFT JOIN teachers t ON t.teacher_id = c.teacher_id
    LEFT JOIN grades g ON g.student_id = s.student_id 
GROUP BY s.name, c.class_name, t.name;