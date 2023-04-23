-- Get the names of all of the students from a single cohort.
SELECT id, name 
FROM students 
WHERE cohort_id = 1 
ORDER BY name;

-- Select the total number of students who were in the first 3 cohorts.
SELECT count(*) 
FROM students 
WHERE cohort_id = 1 OR cohort_id = 2 OR cohort_id = 3;

-- Get all of the students that don't have an email or phone number.
SELECT name, id 
FROM students
WHERE phone IS NULL OR email IS NULL;

-- Recently we've been having trouble emailing students without a gmail account. To make sure that we can reliably contact all students, we'll need to make sure that student's without a gmail account have a phone number.
-- Get all of the students without a gmail.com account and a phone number.
SELECT name, id, email, cohort_id 
FROM students
WHERE email NOT LIKE '%gmail.com%'
AND phone IS NULL;

-- A student's end date will be NULL when they are currently enrolled in Bootcamp.
-- Get all of the students currently enrolled.
SELECT name, id, cohort_id
FROM students
WHERE end_date IS NULL
ORDER BY cohort_id;

--Get all graduates without a linked Github account.
SELECT name, email, phone
FROM students
WHERE github IS NULL
AND end_date IS NOT NULL;