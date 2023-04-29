-- Total Student Assistance Requests
-- We need to be able to see how many assistance requests any student has requested.

-- Instruction
-- Get the total number of assistance_requests for a student.

-- Select the student's name and the total assistance requests.
-- Since this query needs to work with any specific student name, use 'Elliot Dickinson' for the student's name here.

-- Expected Result:

--  total_assistances |       name       
-- -------------------+------------------
--                138 | Elliot Dickinson
-- (1 row)

SELECT count(*) as total_assistances, name
from assistance_requests
JOIN students
ON student_id = students.id
WHERE name = 'Elliot Dickinson'
GROUP BY name;