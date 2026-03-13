SQL*Plus: Release 21.0.0.0.0 - Production on Wed Mar 11 14:22:12 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Mon Feb 23 2026 13:58:22 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> SET LINESIZE 100;
SQL> SET PAGESIZE 200;
SQL> SET WRAP OFF;
SQL>
SQL> SELECT S.STUDENT_ID, S.STUDENT_NAME, E.COURSE_ID
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID;

STUDENT_ID STUDENT_NAME               COURSE_ID
---------- ------------------------- ----------
       301 Sarita Kumari                    201
       302 Puja Kumari                      202
       303 Priyanka Kumari                  203
       304 Kajal Kumari                     204
       305 Sakshi Priya                     205
       306 Swati Priya                      206
       307 Babli Kumari                     207
       308 Aayushi Shrivastava              208
       309 Adira                            209
       310 Priya Kumari                     210

10 rows selected.

SQL> SELECT S.STUDENT_NAME, E.SEMESTER
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID;

STUDENT_NAME                SEMESTER
------------------------- ----------
Sarita Kumari                      3
Puja Kumari                        5
Priyanka Kumari                    4
Kajal Kumari                       5
Sakshi Priya                       5
Swati Priya                        5
Babli Kumari                       3
Aayushi Shrivastava                5
Adira                              5
Priya Kumari                       5

10 rows selected.


SQL> SELECT S.STUDENT_NAME, E.GRADE
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID;

STUDENT_NAME              GRADE
------------------------- -----
Sarita Kumari             A
Puja Kumari               B+
Priyanka Kumari           A+
Kajal Kumari              B
Sakshi Priya              A
Swati Priya               B+
Babli Kumari              A+
Aayushi Shrivastava       B
Adira                     A+
Priya Kumari              A

10 rows selected.


SQL>
SQL> SET LINESIZE 100;
SQL> SET PAGESIZE 200;
SQL> SET WRAP OFF;
SQL>
SQL> COLUMN COURSE_NAME FORMAT A20;
SQL> COLUMN FACULTY_NAME FORMAT A20;
SQL>
SQL> SELECT C.COURSE_NAME, C.CREDITS, F.FACULTY_NAME
  2  FROM COURSE C
  3  INNER JOIN FACULTY F
  4  ON C.FACULTY_ID = F.FACULTY_ID;

COURSE_NAME             CREDITS FACULTY_NAME
-------------------- ---------- --------------------
Database Management           5 Sujeet Kumar
Operating System              5 Prof. Praveen Kumar
Artificial intellige          5 Prof. Manisha Kumari
Software engineering          3 Prof. Md. Izhar
Python                        5 Prof. Amit Kumar
Data Structures               5 Prof. Md. Ehteshamou
Computer Network              5 Prof. Murlidhar Pras
Machine learning              5 Prof. Arun Kumar
C programming                 5 Mr. Ravi Kumar
Object Oriented Prog          5 Prof. Akhilesh Kumar

10 rows selected.

SQL> SET LINESIZE 100;
SQL> SET PAGESIZE 200;
SQL> SET WRAP OFF;
SQL>
SQL> SELECT C.COURSE_NAME
  2  FROM COURSE C
  3  INNER JOIN FACULTY F
  4  ON C.FACULTY_ID=F.FACULTY_ID
  5  WHERE F.FACULTY_ID='201';

no rows selected

SQL> SELECT F.FACULTY_NAME, C.COURSE_NAME
  2  FROM COURSE C
  3  INNER JOIN FACULTY F
  4  ON C.FACULTY_ID = F.FACULTY_ID
  5  WHERE F.FACULTY_ID = 102;

FACULTY_NAME         COURSE_NAME
-------------------- --------------------
Prof. Praveen Kumar  Operating System

SQL> SELECT F.FACULTY_NAME, F.DESIGNATION, C.COURSE_NAME
  2  FROM FACULTY F
  3  INNER JOIN COURSE C
  4  ON F.FACULTY_ID = C.FACULTY_ID;

FACULTY_NAME         DESIGNATION                           COURSE_NAME
-------------------- -------------------------------------------------- --------------------
Sujeet Kumar         Assistant Professor                   Database Management
Prof. Md. Ehteshamou Assistant Professor                   Data Structures
Prof. Praveen Kumar  Assistant Professor                   Operating System
Prof. Murlidhar Pras Assistant Professor                   Computer Network
Prof. Manisha Kumari Assistant Professor                   Artificial intellige
Prof. Arun Kumar     Assistant Professor                   Machine learning
Prof. Md. Izhar      Assistant Professor                   Software engineering
Mr. Ravi Kumar       Lab Assistant(Guest)                  C programming
Prof. Amit Kumar     Assistant Professor                   Python
Prof. Akhilesh Kumar Assistant Professor                   Object Oriented Prog

10 rows selected.

SQL>
SQL> SELECT S.STUDENT_NAME, C.COURSE_NAME
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID
  5  INNER JOIN COURSE C
  6  ON E.COURSE_ID = C.COURSE_ID;

STUDENT_NAME              COURSE_NAME
------------------------- --------------------
Sarita Kumari             Database Management
Puja Kumari               Data Structures
Priyanka Kumari           Operating System
Kajal Kumari              Computer Network
Sakshi Priya              Artificial intellige
Swati Priya               Machine learning
Babli Kumari              Software engineering
Aayushi Shrivastava       C programming
Adira                     Python
Priya Kumari              Object Oriented Prog

10 rows selected.

SQL> SELECT S.STUDENT_NAME, C.COURSE_NAME, E.SEMESTER
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID
  5  INNER JOIN COURSE C
  6  ON E.COURSE_ID = C.COURSE_ID;

STUDENT_NAME              COURSE_NAME            SEMESTER
------------------------- -------------------- ----------
Sarita Kumari             Database Management           3
Puja Kumari               Data Structures               5
Priyanka Kumari           Operating System              4
Kajal Kumari              Computer Network              5
Sakshi Priya              Artificial intellige          5
Swati Priya               Machine learning              5
Babli Kumari              Software engineering          3
Aayushi Shrivastava       C programming                 5
Adira                     Python                        5
Priya Kumari              Object Oriented Prog          5

10 rows selected.

SQL> SELECT S.STUDENT_NAME, C.COURSE_NAME, E.GRADE
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID = E.STUDENT_ID
  5  INNER JOIN COURSE C
  6  ON E.COURSE_ID = C.COURSE_ID
  7  WHERE E.SEMESTER = 4;

STUDENT_NAME              COURSE_NAME          GRADE
------------------------- -------------------- -----
Priyanka Kumari           Operating System     A+

SQL> SELECT C.COURSE_NAME
  2  FROM ENROLLMENT E
  3  INNER JOIN COURSE C
  4  ON E.COURSE_ID = C.COURSE_ID
  5  WHERE E.STUDENT_ID = '401';

no rows selected

SQL>SQL> SET LINESIZE 100;
SQL> SET PAGESIZE 200;
SQL> SET WRAP OFF;
SQL>
SQL> SELECT C.COURSE_NAME
  2  FROM ENROLLMENT E
  3  INNER JOIN COURSE C
  4  ON E.COURSE_ID = C.COURSE_ID
  5  WHERE E.STUDENT_ID = '301';

COURSE_NAME
--------------------
Database Management

SQL>
SQL> SELECT S.STUDENT_NAME,S.DEPT_ID,C.COURSE_NAME
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID=E.STUDENT_ID
  5  INNER JOIN COURSE C
  6  ON E.COURSE_ID=C.COURSE_ID;

STUDENT_NAME                 DEPT_ID COURSE_NAME
------------------------- ---------- --------------------
Sarita Kumari                      1 Database Management
Puja Kumari                        2 Data Structures
Priyanka Kumari                    3 Operating System
Kajal Kumari                       4 Computer Network
Sakshi Priya                       5 Artificial intellige
Swati Priya                        6 Machine learning
Babli Kumari                       7 Software engineering
Aayushi Shrivastava                8 C programming
Adira                              9 Python
Priya Kumari                      10 Object Oriented Prog

10 rows selected.

SQL> SELECT C.DEPT_ID,C.COURSE_NAME
  2  FROM COURSE C
  3  ORDER BY C.DEPT_ID;

   DEPT_ID COURSE_NAME
---------- --------------------
         1 Database Management
         2 Data Structures
         2 Operating System
         2 Computer Network
         3 Artificial intellige
         3 Machine learning
         4 Software engineering
         4 C programming
         5 Python
         5 Object Oriented Prog

10 rows selected.

SQL> SELECT F.FACULTY_NAME, D.DEPT_NAME
  2  FROM FACULTY F
  3  INNER JOIN DEPARTMENT D
  4  ON F.DEPT_ID = D.DEPT_ID;

FACULTY_NAME         DEPT_NAME
-------------------- -------------------------------------------------------------------------------
Sujeet Kumar         Computer Science and Engineering
Prof. Praveen Kumar  Artificial intelligence and Machine learning
Prof. Manisha Kumari Civil Engineering
Prof. Md. Izhar      Electrical Engineering
Prof. Amit Kumar     Mechanical Engineering
Prof. Md. Ehteshamou Civil Engineering With Computer Application
Prof. Murlidhar Pras 3D Animation and Graphics
Prof. Arun Kumar     Applied Science SET DEFINE OFF;
Mr. Ravi Kumar       Electronics and Communication Engineering
Prof. Akhilesh Kumar Workshop and Production

10 rows selected.

SQL> SELECT S.STUDENT_NAME,C.COURSE_NAME
  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID=E.STUDENT_ID
  5  INNER JOIN COURSE C
  6  ON E.COURSE_ID=C.COURSE_ID
  7  WHERE S.DEPT_ID='1';

STUDENT_NAME              COURSE_NAME
------------------------- --------------------
Sarita Kumari             Database Management

  2  FROM STUDENT S
  3  INNER JOIN ENROLLMENT E
  4  ON S.STUDENT_ID=E.STUDENT_ID
  5  INNER JOIN COURSE C
  6  ON E.COURSE_ID=C.COURSE_ID
  7  ORDER BY S.STUDENT_NAME ASC;

STUDENT_NAME              COURSE_NAME
------------------------- --------------------
Aayushi Shrivastava       C programming
Adira                     Python
Babli Kumari              Software engineering
Kajal Kumari              Computer Network
Priya Kumari              Object Oriented Prog
Priyanka Kumari           Operating System
Puja Kumari               Data Structures
Sakshi Priya              Artificial intellige
Sarita Kumari             Database Management
Swati Priya               Machine learning

10 rows selected.

SQL> SELECT F.FACULTY_NAME,C.COURSE_NAME
  2  FROM FACULTY F
  3  INNER JOIN COURSE C
  4  ON F.FACULTY_ID=C.FACULTY_ID
  5  ORDER BY C.CREDITS DESC;

FACULTY_NAME         COURSE_NAME
-------------------- --------------------
Sujeet Kumar         Database Management
Prof. Md. Ehteshamou Data Structures
Prof. Praveen Kumar  Operating System
Prof. Murlidhar Pras Computer Network
Prof. Akhilesh Kumar Object Oriented Prog
Prof. Arun Kumar     Machine learning
Prof. Manisha Kumari Artificial intellige
Mr. Ravi Kumar       C programming
Prof. Amit Kumar     Python
Prof. Md. Izhar      Software engineering

10 rows selected. 

SQL> SELECT C.COURSE_NAME, COUNT(E.STUDENT_ID) AS TOTAL_STUDENTS
  2  FROM COURSE C
  3  INNER JOIN ENROLLMENT E
  4  ON C.COURSE_ID=E.COURSE_ID
  5  GROUP BY C.COURSE_NAME;

COURSE_NAME          TOTAL_STUDENTS
-------------------- --------------
Database Management               1
Data Structures                   1
Operating System                  1
Computer Network                  1
Artificial intellige              1
Machine learning                  1
Software engineering              1
C programming                     1
Python                            1
Object Oriented Prog              1

10 rows selected.

SQL> SELECT F.FACULTY_NAME,COUNT(C.COURSE_ID) AS TOTAL_COURSES
  2  FROM FACULTY F
  3  INNER JOIN COURSE C
  4  ON F.FACULTY_ID=C.FACULTY_ID
  5  GROUP BY F.FACULTY_NAME;

FACULTY_NAME         TOTAL_COURSES
-------------------- -------------
Sujeet Kumar                     1
Prof. Md. Ehteshamou             1
Prof. Praveen Kumar              1
Prof. Murlidhar Pras             1
Prof. Manisha Kumari             1
Prof. Arun Kumar                 1
Prof. Md. Izhar                  1
Mr. Ravi Kumar                   1
Prof. Amit Kumar                 1
Prof. Akhilesh Kumar             1

10 rows selected. 

SQL> SELECT DEPT_ID,COUNT(STUDENT_ID) AS TOTAL_STUDENTS
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

SQL> SELECT C.COURSE_NAME,MAX(E.GRADE) AS MAX_GRADE
  2  FROM COURSE C
  3  INNER JOIN ENROLLMENT E
  4  ON C.COURSE_ID=E.COURSE_ID
  5  GROUP BY C.COURSE_NAME;

COURSE_NAME          MAX_G
-------------------- -----
Database Management  A
Data Structures      B+
Operating System     A+
Computer Network     B
Artificial intellige A
Machine learning     B+
Software engineering A+
C programming        B
Python               A+
Object Oriented Prog A

10 rows selected.

