-- TODO: CONCAT

-- SELECT STU_FNAME,STU_LNAME FROM STUDENTS;

-- SELECT CONCAT(STU_FNAME,' ',STU_LNAME) FROM STUDENTS;
-- SELECT CONCAT(STU_FNAME,' ',STU_LNAME) AS FULLNAME FROM STUDENTS;

-- SELECT CONCAT(STU_FNAME,' ',STU_LNAME) AS FULLNAME,LOGIN_COUNT FROM STUDENTS;

-- SELECT CONCAT(STU_FNAME,' ',STU_LNAME, ' AND LOGIN COUNT IS ',LOGIN_COUNT) AS 'FULL INFO' FROM STUDENTS;


-- TODO: REPLACE

-- REPLACE('MOHIT','M','$')

-- SELECT REPLACE(STU_FNAME,'a','@') AS FUN FROM STUDENTS;




-- TODO: SUBSTRING

-- SELECT SUBSTRING(EMAIL,1 , 7) FROM STUDENTS;
-- SELECT CONCAT(SUBSTRING(EMAIL,1,7),'...') AS TRUNCATED FROM STUDENTS;




-- TODO: REVERSE
 
--  SELECT REVERSE(STU_FNAME) FROM STUDENTS;

-- TODO: CHAR_LENGTH

-- SELECT CHAR_LENGTH(EMAIL) FROM STUDENTS;
-- SELECT EMAIL,CHAR_LENGTH(EMAIL) FROM STUDENTS;

-- TODO: UPPER CASE AND LOWER CASE

-- SELECT UPPER(STU_FNAME) AS 'UPPER_LETTER' FROM STUDENTS;

-- SELECT UPPER(STU_FNAME),LOWER(STU_LNAME) FROM STUDENTS;

-- SELECT LOWER(STU_FNAME),LOWER(STU_LNAME) FROM STUDENTS;

-- TODO: link for ref.ABORT
-- https://dev.mysql.com/doc/refman/8.0/en/string-functions.html#function_upper