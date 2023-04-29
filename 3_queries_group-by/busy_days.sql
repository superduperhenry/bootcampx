-- Get the total number of assignments for each day of bootcamp where total assigments is greater than 10.

SELECT day, count(id) as total_assignments
FROM assignments
GROUP BY day
HAVING count(id) > 10
ORDER BY day ASC;