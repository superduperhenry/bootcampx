-- Total Teacher Assistance Requests
-- We need to be able to see how many assistance requests any teacher has completed.

-- Instruction
-- Get the total number of assistance_requests for a teacher.

-- Select the teacher's name and the total assistance requests.
-- Since this query needs to work with any specific teacher name, use 'Waylon Boehm' for the teacher's name here.

-- Expected Result:

--  total_assistances |     name     
-- -------------------+--------------
--               4227 | Waylon Boehm
-- (1 row)

SELECT count(*) as total_assistances, name
FROM assistance_requests
JOIN teachers
ON assistance_requests.teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name;

