SQL> SELECT COUNT(*) AS Total_Students
  2  FROM Student;

TOTAL_STUDENTS
--------------
            10

SQL> SELECT COUNT(*) AS Total_Faculty
  2   FROM Faculty;

TOTAL_FACULTY
-------------
           10

SQL> SELECT COUNT(*) AS Total_Courses
  2  FROM Courses;

TOTAL_COURSES
-------------
            0

SQL> SELECT COUNT(*) AS Total_Courses
  2  FROM Course;

TOTAL_COURSES
-------------
           10

SQL> SELECT MAX(Credits) AS Max_Credits
  2  FROM Course;

MAX_CREDITS
-----------
          5

SQL> SELECT MIN(Credits) AS Min_Credits
  2  FROM Course;

MIN_CREDITS
-----------
          3

SQL> SELECT DEPT_ID,COUNT(*) AS Number_of_Students
  2  FROM Student
  3  GROUP BY DEPT_ID;

   DEPT_ID NUMBER_OF_STUDENTS
---------- ------------------
         1                  1
         2                  1
         3                  1
         4                  1
         5                  1
         6                  1
         7                  1
         8                  1
         9                  1
        10                  1

10 rows selected.

SQL> SELECT Dept_id,COUNT(*) AS Number_of_Students
  2  FROM Student
  3  GROUP BY Dept_id;

   DEPT_ID NUMBER_OF_STUDENTS
---------- ------------------
         1                  1
         2                  1
         3                  1
         4                  1
         5                  1
         6                  1
         7                  1
         8                  1
         9                  1
        10                  1

10 rows selected.

SQL> SELECT Dept_id,COUNT(*) AS Number_of_Faculty
  2  FROM Faculty
  3  GROUP BY Dept_id;

   DEPT_ID NUMBER_OF_FACULTY
---------- -----------------
         1                 1
         2                 1
         3                 1
         4                 1
         5                 1
         6                 1
         7                 1
         8                 1
         9                 1
        10                 1

10 rows selected.

SQL> SELECT Dept_id,COUNT(*) AS Number_of_Courses
  2  FROM Course
  3  GROUP BY Dept_id;

   DEPT_ID NUMBER_OF_COURSES
---------- -----------------
         1                 1
         2                 3
         3                 2
         4                 2
         5                 2

SQL> SELECT Semester,COUNT(*) AS Number_of_Enrollments
  2  FROM Enrollment
  3  GROUP BY Semester;

  SEMESTER NUMBER_OF_ENROLLMENTS
---------- ---------------------
         3                     2
         5                     7
         4                     1

SQL> SELECT Dept_id,COUNT(*) AS Total_Students
  2  FROM Student
  3  GROUP BY Dept_id
  4  HAVING COUNT(*)>=3;

no rows selected

SQL> SELECT Dept_id,COUNT(*) AS Total_Students
  2  FROM Student
  3  GROUP BY Dept_id
  4   HAVING COUNT(*)>=1;

   DEPT_ID TOTAL_STUDENTS
---------- --------------
         1              1
         2              1
         3              1
         4              1
         5              1
         6              1
         7              1
         8              1
         9              1
        10              1

10 rows selected.

SQL> SELECT Semester, COUNT(*) AS Total_Enrollments
  2  FROM Enrollment
  3  GROUP BY Semester
  4  HAVING COUNT(*) > 2;

  SEMESTER TOTAL_ENROLLMENTS
---------- -----------------
         5                 7

SQL> SELECT Grade, COUNT(*) AS Total
  2  FROM Enrollment
  3  GROUP BY Grade
  4  HAVING COUNT(*) > 1;

GRADE      TOTAL
----- ----------
A              3
B+             2
A+             3
B              2


SQL> SELECT Dept_id, COUNT(*)
  2  FROM Course
  3  GROUP BY Dept_id
  4  HAVING COUNT(*) > 1;

   DEPT_ID   COUNT(*)
---------- ----------
         2          3
         3          2
         4          2
         5          2

SQL> SELECT COURSE_ID, COUNT(STUDENT_ID) AS Enrolled_Students
  2  FROM Enrollment
  3  GROUP BY COURSE_ID;

 COURSE_ID ENROLLED_STUDENTS
---------- -----------------
       201                 1
       202                 1
       203                 1
       204                 1
       205                 1
       206                 1
       207                 1
       208                 1
       209                 1
       210                 1

10 rows selected.

SQL> SELECT C.COURSE_NAME, COUNT(E.STUDENT_ID) AS ENROLLED_STUDENTS
  2  FROM COURSE C
  3  JOIN ENROLLMENT E
  4  ON C.COURSE_ID = E.COURSE_ID
  5  GROUP BY C.COURSE_NAME;

COURSE_NAME                                                         ENROLLED_STUDENTS
---------------------------------------------------------------------------------------------------- -----------------
Database Management System                                          1
Data Structures                                                     1
Operating System                                                    1
Computer Network                                                    1
Artificial intelligence                                             1
Machine learning                                                    1
Software engineering                                                1
C programming                                                       1
Python                                                              1
Object Oriented Programming                                         1

10 rows selected.

SQL> SELECT DEPT_ID, COUNT(STUDENT_ID) AS TOTAL_STUDENTS
  2  FROM STUDENT
  3  GROUP BY DEPT_ID;

   DEPT_ID TOTAL_STUDENTS
---------- --------------
         1              1
         2              1
         3              1
         4              1
         5              1
         6              1
         7              1
         8              1
         9              1
        10              1

10 rows selected.

SQL> SELECT F.FACULTY_NAME, COUNT(C.COURSE_ID) AS TOTAL_COURSES
  2  FROM FACULTY F
  3  JOIN COURSE C
  4  ON F.FACULTY_ID = C.FACULTY_ID
  5  GROUP BY F.FACULTY_NAME;

FACULTY_NAME                                                        TOTAL_COURSES
---------------------------------------------------------------------------------------------------- -------------
Sujeet Kumar                                                    1
Prof. Md. Ehteshamoul Hoque (HoD)                               1
Prof. Praveen Kumar                                             1
Prof. Murlidhar Prasad Singh                                    1
Prof. Manisha Kumari Singh                                      1
Prof. Arun Kumar                                                1
Prof. Md. Izhar                                                 1
Mr. Ravi Kumar                                                  1
Prof. Amit Kumar                                                1
Prof. Akhilesh Kumar                                            1

10 rows selected.

SQL> SELECT C.COURSE_NAME, MAX(E.GRADE) AS Max_Grade
  2  FROM Course C
  3  INNER JOIN Enrollment E
  4  ON C.COURSE_ID = E.COURSE_ID
  5  GROUP BY C.COURSE_NAME;

COURSE_NAME                                                         MAX_G
---------------------------------------------------------------------------------------------------- -----
Database Management System                                          A
Data Structures                                                     B+
Operating System                                                    A+
Computer Network                                                    B
Artificial intelligence                                             A
Machine learning                                                    B+
Software engineering                                                A+
C programming                                                       B
Python                                                              A+
Object Oriented Programming                                         A

SQL> SELECT DEPT_ID, COUNT(*) AS TOTAL_COURSES
  2  FROM Course
  3  GROUP BY DEPT_ID;

   DEPT_ID TOTAL_COURSES
---------- -------------
         1             1
         2             3
         3             2
         4             2
         5             2

SQL> SELECT SEMESTER, COUNT(STUDENT_ID) AS TOTAL_STUDENTS
  2  FROM Enrollment
  3  GROUP BY SEMESTER;

  SEMESTER TOTAL_STUDENTS
---------- --------------
         3              2
         5              7
         4              1

SQL> SELECT COURSE_ID, COUNT(STUDENT_ID) AS TOTAL_STUDENTS
  2  FROM Enrollment
  3  GROUP BY COURSE_ID
  4  HAVING COUNT(STUDENT_ID) > 2;

no rows selected

SQL> SELECT COURSE_ID, COUNT(STUDENT_ID) AS TOTAL_STUDENTS
  2  FROM Enrollment
  3  GROUP BY COURSE_ID
  4  HAVING COUNT(STUDENT_ID) >= 1;

 COURSE_ID TOTAL_STUDENTS
---------- --------------
       201              1
       202              1
       203              1
       204              1
       205              1
       206              1
       207              1
       208              1
       209              1
       210              1

10 rows selected.