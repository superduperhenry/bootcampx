SELECT sum(duration) as total_duration
from assignment_submissions
JOIN students
ON students.id = assignment_submissions.student_id
WHERE students.name = 'Ibrahim Schimmel';