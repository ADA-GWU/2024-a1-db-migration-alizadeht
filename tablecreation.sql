-- create students table
CREATE TABLE STUDENTS (
  ST_ID SERIAL PRIMARY KEY,
  ST_NAME VARCHAR(20),
  ST_LAST VARCHAR(20)
);

-- create interests table
CREATE TABLE INTERESTS (
  STUDENT_ID INT,
  INTEREST VARCHAR(20),
  FOREIGN KEY (STUDENT_ID) REFERENCES STUDENTS(ST_ID)
);

-- insert value to students table
INSERT INTO STUDENTS (ST_ID, ST_NAME, ST_LAST) VALUES
(1, 'Konul', 'Gurbanova'),
(2, 'Shahnur', 'Isgandarli'),
(3, 'Natavan', 'Mammadova');

-- insert value to interests table
INSERT INTO INTERESTS (STUDENT_ID, INTEREST) VALUES
(1, 'Tennis'),
(1, 'Literature'),
(1, 'Chemistry'),
(2, 'Math'),
(2, 'Tennis'),
(2, 'Football'),
(3, 'Math'),
(3, 'Music'),
(3, 'Chess');
