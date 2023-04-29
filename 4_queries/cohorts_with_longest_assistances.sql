-- Cohort With Longest Assistances
-- Instruction
-- Get the cohort with the longest average duration of assistance requests.

-- The same requirements as the previous query, but only return the single row with the longest average.
-- Expected Result:

--  name  | average_assistance_time 
-- -------+-------------------------
--  MAR12 | 00:15:44.556041
-- (1 row)


SELECT cohorts.name as name, AVG(completed_at - started_at) as average_assistance_time
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;
