const { Pool } = require('pg');

const pool = new Pool({
  user: 'henry',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const query = `
  SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
  FROM teachers
  JOIN assistance_requests ON teacher_id = teachers.id
  JOIN students ON student_id = students.id
  JOIN cohorts ON cohort_id = cohorts.id
  WHERE cohorts.name = $1
  ORDER BY teacher;
`;

// Values from user
const cohortName = process.argv[2] || 'JUL02';
const values = [`${cohortName}`];

// Run query on database
pool.query(query, values)
  .then(res => {
    res.rows.forEach(row => {
      console.log(`${row.cohort}: ${row.teacher}`);
    });
  }).catch(err => console.error('query error', err.stack));