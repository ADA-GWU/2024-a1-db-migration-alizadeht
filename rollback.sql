-- Rename STUDENT_ID column as ST_ID in the STUDENTS table
ALTER TABLE STUDENTS RENAME COLUMN STUDENT_ID TO ST_ID;

-- Revert the length of STUDENTS.ST_NAME & STUDENTS.ST_LAST back to 20
ALTER TABLE STUDENTS
ALTER COLUMN ST_NAME TYPE VARCHAR(20),
ALTER COLUMN ST_LAST TYPE VARCHAR(20);

-- Drop INTERESTS table
DROP TABLE INTERESTS;

-- Recreate INTERESTS table
CREATE TABLE INTERESTS (
  STUDENT_ID INT,
  INTEREST VARCHAR(20),
  FOREIGN KEY (STUDENT_ID) REFERENCES STUDENTS(ST_ID)
);
-- Re-insert all data to INTERESTS table
INSERT INTO INTERESTS (STUDENT_ID, INTEREST) VALUES
(1, 'Tennis'),
(1, 'Literature'),
(2, 'Math'),
(2, 'Tennis'),
(3, 'Math'),
(3, 'Music'),
(2, 'Football'),
(1, 'Chemistry'),
(3, 'Chess');