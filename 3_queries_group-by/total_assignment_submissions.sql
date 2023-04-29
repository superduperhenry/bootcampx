-- Get the total number of assignment submissions for each cohort.
-- Select the cohort name and total submissions.
-- Order the results from greatest to least submissions.

-- Expected Results
--  cohort | total_submissions 
-- --------+-------------------
--  SEP24  |              9328
--  JUN04  |              8030
--  APR09  |              7935
--  NOV19  |              7231
--  JUL02  |              5868
-- ...
-- (11 rows)


SELECT cohorts.name as cohort, count(*) as total_submissions
FROM assignment_submissions
JOIN students
ON assignment_submissions.student_id = students.id
JOIN cohorts
ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY count(*) DESC;