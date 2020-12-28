-- TODO: DISTINCT

-- SELECT STU_FNAME AS FIRSTNAME ,EMAIL  FROM STUDENTS;

-- SELECT DISTINCT STU_FNAME AS FIRSTNAME , EMAIL FROM STUDENTS;

-- TODO: ORDER BY

-- SELECT DISTINCT STU_FNAME,LOGIN_COUNT,COURSE_COUNT FROM STUDENTS;

-- SELECT DISTINCT STU_FNAME,LOGIN_COUNT,COURSE_COUNT FROM 
-- STUDENTS ORDER BY COURSE_COUNT;

-- SELECT DISTINCT STU_FNAME,LOGIN_COUNT,COURSE_COUNT FROM 
-- STUDENTS ORDER BY LOGIN_COUNT;

-- TODO: LIMIT

-- SELECT DISTINCT STU_FNAME,LOGIN_COUNT FROM STUDENTS 
-- ORDER BY LOGIN_COUNT DESC;

-- SELECT DISTINCT STU_FNAME,LOGIN_COUNT FROM STUDENTS 
-- ORDER BY LOGIN_COUNT DESC LIMIT 5; 

-- TODO: LIKE PATTERN MATCHING

-- SELECT STU_FNAME,EMAIL FROM STUDENTS WHERE STU_FNAME LIKE '%ESH';

-- SELECT STU_FNAME,EMAIL FROM STUDENTS WHERE STU_FNAME LIKE 'M%';
-- SELECT STU_FNAME,EMAIL FROM STUDENTS WHERE STU_FNAME LIKE 'HIT%';


-- TODO: COUNT

-- SELECT STU_FNAME FROM STUDENTS;

-- SELECT DISTINCT STU_FNAME FROM STUDENTS;

-- SELECT DISTINCT COUNT(STU_FNAME) FROM STUDENTS; WORNG ANSWER

-- SELECT COUNT(DISTINCT STU_FNAME) FROM STUDENTS;

-- SELECT COUNT(DISTINCT STU_FNAME , STU_LNAME) AS COUNTS FROM STUDENTS;

-- TODO: SQL MODE

-- SET @@sql_mode='';

-- TODO: GROUP BY

-- SELECT STU_FNAME,SIGNUP_MONTH FROM STUDENTS;

-- SELECT STU_FNAME,SIGNUP_MONTH FROM STUDENTS GROUP BY SIGNUP_MONTH ;

-- SELECT STU_FNAME,SIGNUP_MONTH,COUNT(*) FROM STUDENTS GROUP BY SIGNUP_MONTH;


-- TODO: MIN MAX SUBQUERY

-- SELECT STU_FNAME,EMAIL,LOGIN_COUNT FROM STUDENTS;

-- SELECT STU_FNAME,EMAIL, MAX(LOGIN_COUNT) FROM STUDENTS;

-- SELECT STU_FNAME,EMAIL, MIN(LOGIN_COUNT) FROM STUDENTS; 

-- upper both query given WORNG ANSWER

-- SELECT STU_FNAME,EMAIL,LOGIN_COUNT FROM STUDENTS 
-- WHERE LOGIN_COUNT = (SELECT MIN(LOGIN_COUNT) FROM STUDENTS);

-- SELECT STU_FNAME,EMAIL,LOGIN_COUNT FROM STUDENTS 
-- WHERE LOGIN_COUNT = (SELECT MAX(LOGIN_COUNT) FROM STUDENTS);

-- SELECT STU_FNAME,EMAIL,COURSE_COUNT FROM STUDENTS 
-- WHERE COURSE_COUNT = (SELECT MIN(COURSE_COUNT) FROM STUDENTS);

-- SELECT STU_FNAME , EMAIL , COURSE_COUNT FROM STUDENTS 
-- WHERE COURSE_COUNT= (SELECT MAX(COURSE_COUNT) FROM STUDENTS);



-- TODO: GROUP BY WITH MIN MAX 

-- SELECT LOGIN_COUNT,COURSE_COUNT FROM STUDENTS;

-- SELECT MAX(LOGIN_COUNT),COURSE_COUNT FROM STUDENTS;

-- SELECT MIN(LOGIN_COUNT),COURSE_COUNT FROM STUDENTS;


-- SELECT MAX(LOGIN_COUNT),SIGNUP_MONTH FROM STUDENTS 
-- GROUP BY SIGNUP_MONTH ORDER BY SIGNUP_MONTH; 

-- TODO: GROUP BY SUM AND AVRAGE

-- SELECT SIGNUP_MONTH,LOGIN_COUNT FROM STUDENTS;

-- SELECT SIGNUP_MONTH,LOGIN_COUNT FROM STUDENTS
-- WHERE SIGNUP_MONTH = 7;

-- SELECT SIGNUP_MONTH , SUM(LOGIN_COUNT) FROM STUDENTS
-- GROUP BY EMAIL;

-- SELECT SIGNUP_MONTH , AVG(LOGIN_COUNT) FROM STUDENTS GROUP BY EMAIL;

-- TODO: TASK AND OR CONDITIONS

-- SELECT EMAIL,LOGIN_COUNT,SIGNUP_MONTH FROM STUDENTS
-- WHERE LOGIN_COUNT >=20 AND COURSE_COUNT >=5
-- ORDER BY LOGIN_COUNT;


-- SELECT EMAIL,LOGIN_COUNT,SIGNUP_MONTH FROM STUDENTS
-- WHERE LOGIN_COUNT >=20 OR COURSE_COUNT >=5
-- ORDER BY LOGIN_COUNT;


-- SELECT EMAIL , LOGIN_COUNT, COURSE_COUNT , SIGNUP_MONTH FROM STUDENTS
-- WHERE SIGNUP_MONTH = 7 OR SIGNUP_MONTH = 10;


-- SELECT EMAIL , LOGIN_COUNT, COURSE_COUNT , SIGNUP_MONTH FROM STUDENTS
-- WHERE SIGNUP_MONTH = 7 AND SIGNUP_MONTH = 10;

-- TODO: TASK RANGE KEYWORD WITH BETWEEN , AND 

-- SELECT EMAIL , LOGIN_COUNT , SIGNUP_MONTH FROM STUDENTS 
-- WHERE SIGNUP_MONTH BETWEEN 7 AND 10;

-- TODO: CASE

-- SELECT STU_FNAME, SIGNUP_MONTH,
--     CASE
--         WHEN SIGNUP_MONTH BETWEEN 7 AND 10 THEN 'EARLY BIRD'
--         WHEN SIGNUP_MONTH BETWEEN 11 AND 12 THEN ' REGULAR USER'
--         ELSE '##'
--     END AS CUSTOM
-- FROM STUDENTS;