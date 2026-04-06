SQL> SELECT STUDENT_NAME
  2  FROM Student
  3  WHERE DEPT_ID=1;

STUDENT_NAME
--------------------------------------------------------------------------------
Sarita Kumari

SQL> SELECT STUDENT_NAME
  2  FROM Student
  3  WHERE DEPT_ID =
  4  (
  5  SELECT DEPT_ID
  6  FROM Student
  7  WHERE STUDENT_ID=301
  8  );

STUDENT_NAME
--------------------------------------------------------------------------------
Sarita Kumari


SQL> SELECT STUDENT_NAME
  2  FROM Student
  3  WHERE DEPT_ID IN
  4  (
  5  SELECT DEPT_ID
  6  FROM Student
  7  WHERE GENDER='Female'
  8  );

STUDENT_NAME
--------------------------------------------------------------------------------
Sarita Kumari
Puja Kumari
Priyanka Kumari
Kajal Kumari
Sakshi Priya
Swati Priya
Babli Kumari
Aayushi Shrivastava
Adira
Priya Kumari

10 rows selected.



SQL> SELECT COURSE_NAME
  2  FROM Course
  3  WHERE CREDITS>
  4  (
  5  SELECT AVG(CREDITS)
  6  FROM Course
  7  );

COURSE_NAME
--------------------------------------------------------------------------------
Database Management System
Data Structures
Operating System
Computer Network
Artificial intelligence
Machine learning
C programming
Python
Object Oriented Programming

9 rows selected.

SQL>

SQL> SELECT STUDENT_NAME
  2  FROM Student
  3  WHERE STUDENT_ID IN
  4  (
  5  SELECT STUDENT_ID
  6  FROM Enrollment
  7  );

STUDENT_NAME
--------------------------------------------------------------------------------
Sarita Kumari
Puja Kumari
Priyanka Kumari
Kajal Kumari
Sakshi Priya
Swati Priya
Babli Kumari
Aayushi Shrivastava
Adira
Priya Kumari

10 rows selected.

SQL>


SQL> SELECT STUDENT_NAME
  2  FROM Student
  3  WHERE STUDENT_ID IN
  4  (
  5  SELECT STUDENT_ID
  6  FROM Enrollment
  7  );

STUDENT_NAME
--------------------------------------------------------------------------------
Sarita Kumari
Puja Kumari
Priyanka Kumari
Kajal Kumari
Sakshi Priya
Swati Priya
Babli Kumari
Aayushi Shrivastava
Adira
Priya Kumari

10 rows selected.

SQL>


SQL> SELECT COURSE_NAME
  2  FROM Course
  3  WHERE CREDITS>
  4  (
  5  SELECT AVG(CREDITS)
  6  FROM Course
  7  );

COURSE_NAME
--------------------------------------------------------------------------------
Database Management System
Data Structures
Operating System
Computer Network
Artificial intelligence
Machine learning
C programming
Python
Object Oriented Programming

9 rows selected.

SQL>


SQL> SELECT *
  2  FROM Student
  3  WHERE STUDENT_ID >
  4  (
  5  SELECT AVG(STUDENT_ID)
  6  FROM Student
  7  );

STUDENT_ID STUDENT_NAME              DATE_OF_BIRT GENDER     CONTACT_NUMBER  DEPT_ID
---------- ------------------------- ------------ ---------- --------------- -------
       306 Swati Priya               17-MAY-05    Female     8348675988            6
       307 Babli Kumari              18-MAY-05    Female     2388675988            7
       308 Aayushi Shrivastava       19-MAY-05    Female     2848675988            8
       309 Adira                     20-MAY-05    Female     2348685988            9
       310 Priya Kumari              21-MAY-05    Female     2848675988           10

SQL>



SQL> SELECT DEPT_ID
  2  FROM Student
  3  GROUP BY DEPT_ID
  4  HAVING COUNT(STUDENT_ID) >
  5  (
  6  SELECT AVG(student_count)
  7  FROM
  8  (
  9  SELECT COUNT(STUDENT_ID) AS student_count
 10  FROM Student
 11  GROUP BY DEPT_ID
 12  )
 13  );

DEPT_ID
-------
      1


SQL> SELECT DEPT_NAME
  2  FROM Department
  3  WHERE DEPT_ID IN
  4  (
  5  SELECT DEPT_ID
  6  FROM Student
  7  );

DEPT_NAME
----------------------------------------------------------------------------------------------------
Computer Science and Engineering
Artificial intelligence and Machine learning
Civil Engineering
Electrical Engineering
Mechanical Engineering
Civil Engineering With Computer Application
3D Animation and Graphics
Applied Science SET DEFINE OFF;
Electronics and Communication Engineering
Workshop and Production

10 rows selected.



SQL> SELECT COURSE_NAME
  2  FROM Course
  3  WHERE DEPT_ID=1;

COURSE_NAME
----------------------------------------------------------------------------------------------------
Database Management System


SQL> SELECT STUDENT_NAME
  2  FROM Student
  3  WHERE DEPT_ID IN
  4  (
  5  SELECT DEPT_ID
  6  FROM Department
  7  WHERE OFFICE_LOCATION='Block A'
  8  );

STUDENT_NAME
-------------------------
Sarita Kumari
Puja Kumari
Riya
Neha

SQL>


SQL> SELECT COURSE_NAME
  2  FROM Course
  3  WHERE COURSE_ID IN
  4  (
  5  SELECT COURSE_ID
  6  FROM Enrollment
  7  WHERE STUDENT_ID = 301
  8  );

COURSE_NAME
----------------------------------------------------------------------------------------------------
Database Management System


SQL> SELECT STUDENT_NAME
  2  FROM Student
  3  WHERE STUDENT_ID IN
  4  (
  5  SELECT STUDENT_ID
  6  FROM Enrollment
  7  WHERE COURSE_ID = 101
  8  );

STUDENT_NAME
-------------------------
Sarita Kumari
Puja Kumari


SQL> SELECT DEPT_NAME
  2  FROM Department
  3  WHERE DEPT_ID IN
  4  (
  5  SELECT DEPT_ID
  6  FROM Course
  7  );

DEPT_NAME
----------------------------------------------------------------------------------------------------
Computer Science and Engineering
Artificial intelligence and Machine learning
Civil Engineering
Electrical Engineering
Mechanical Engineering

SQL>


SQL> SELECT STUDENT_ID
  2  FROM Enrollment
  3  WHERE COURSE_ID IN
  4  (
  5  SELECT COURSE_ID
  6  FROM Enrollment
  7  WHERE STUDENT_ID = 301
  8  );

STUDENT_ID
----------
       301
       301
       302


SQL> SELECT *
  2  FROM Student
  3  WHERE STUDENT_ID NOT IN
  4  (
  5  SELECT STUDENT_ID
  6  FROM Enrollment
  7  );

STUDENT_ID STUDENT_NAME              DATE_OF_BIRT GENDER     CONTACT_NUMBER  DEPT_ID
---------- ------------------------- ------------ ---------- --------------- -------
       311 Riya                      22-MAY-05    Female     9876543211            1
       312 Neha                      23-MAY-05    Female     9876543212            1



SQL> SELECT *
  2  FROM Course
  3  WHERE COURSE_ID NOT IN
  4  (
  5  SELECT COURSE_ID
  6  FROM Enrollment
  7  );

COURSE_ID COURSE_NAME               CREDITS DEPT_ID FACULTY_ID
--------- ------------------------- ------- ------- ----------
      103 Operating System                3       1        101

SQL>