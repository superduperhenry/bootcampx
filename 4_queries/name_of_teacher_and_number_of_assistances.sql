-- Name of Teachers and Number of Assistances
-- We need to know which teachers actually assisted students during any cohort, and how many assistances they did for that cohort.

-- Instruction
-- Perform the same query as before, but include the number of assistances as well.

-- Expected Result:

--       teacher       | cohort | total_assistances 
-- --------------------+--------+-------------------
--  Cheyanne Powlowski | JUL02  |               336
--  Georgiana Fahey    | JUL02  |               158
--  Helmer Rodriguez   | JUL02  |               157
--  Jadyn Bosco        | JUL02  |               177
-- ...
-- (8 rows)

-- SELECT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests.id) as total_assistances
-- FROM assistance_requests
-- JOIN teachers ON teacher_id = teachers.id
-- JOIN students ON student_id = students.id
-- JOIN cohorts ON students.cohort_id = cohorts.id
-- WHERE cohorts.name = 'JUL02'
-- GROUP BY teachers.name, cohorts.name;

SELECT teachers.name as teacher, cohorts.name as cohort, count(*) as total_assistances
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY total_assistances DESC;