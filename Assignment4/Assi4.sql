
SQL*Plus: Release 21.0.0.0.0 - Production on Mon Feb 23 13:58:09 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Tue Feb 17 2026 22:14:56 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0


SQL> DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUDENT_ID                                NOT NULL NUMBER
 STUDENT_NAME                              NOT NULL VARCHAR2(100)
 DATE_OF_BIRTH                                      DATE
 GENDER                                             VARCHAR2(10)
 CONTACT_NUMBER                                     VARCHAR2(15)
 DEPT_ID                                            NUMBER

SQL> SELECT
  2      STUDENT_ID AS Roll_No,
  3      STUDENT_NAME AS Student_Name,
  4      DEPT_ID AS Dept_ID,
  5      GENDER,
  6      DATE_OF_BIRTH
  7  FROM Student;

   ROLL_NO
----------
STUDENT_NAME
--------------------------------------------------------------------------------
   DEPT_ID GENDER     DATE_OF_B
---------- ---------- ---------
       301
Sarita Kumari
         1 Female     12-MAY-05

       302
Puja Kumari
         2 Female     13-MAY-05

   ROLL_NO
----------
STUDENT_NAME
--------------------------------------------------------------------------------
   DEPT_ID GENDER     DATE_OF_B
---------- ---------- ---------

       303
Priyanka Kumari
         3 Female     14-MAY-05

       304
Kajal Kumari

   ROLL_NO
----------
STUDENT_NAME
--------------------------------------------------------------------------------
   DEPT_ID GENDER     DATE_OF_B
---------- ---------- ---------
         4 Female     15-MAY-05

       305
Sakshi Priya
         5 Female     16-MAY-05

       306

   ROLL_NO
----------
STUDENT_NAME
--------------------------------------------------------------------------------
   DEPT_ID GENDER     DATE_OF_B
---------- ---------- ---------
Swati Priya
         6 Female     17-MAY-05

       307
Babli Kumari
         7 Female     18-MAY-05


   ROLL_NO
----------
STUDENT_NAME
--------------------------------------------------------------------------------
   DEPT_ID GENDER     DATE_OF_B
---------- ---------- ---------
       308
Aayushi Shrivastava
         8 Female     19-MAY-05

       309
Adira
         9 Female     20-MAY-05

   ROLL_NO
----------
STUDENT_NAME
--------------------------------------------------------------------------------
   DEPT_ID GENDER     DATE_OF_B
---------- ---------- ---------

       310
Priya Kumari
        10 Female     21-MAY-05


10 rows selected.

SQL> SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL> SET WRAP OFF
SQL>
SQL> COLUMN Student_Name FORMAT A25
SQL> COLUMN Student_G FORMAT A10
SQL> COLUMN DOB FORMAT A12
SQL>
SQL> SELECT
  2      STUDENT_ID    AS Roll_No,
  3      STUDENT_NAME  AS Student_Name,
  4      GENDER        AS Student_G,
  5      TO_CHAR(DATE_OF_BIRTH,'DD-MON-YY') AS DOB,
  6      DEPT_ID       AS Dept_ID
  7  FROM Student;

   ROLL_NO STUDENT_NAME              STUDENT_G  DOB             DEPT_ID
---------- ------------------------- ---------- ------------ ----------
       301 Sarita Kumari             Female     12-MAY-05             1
       302 Puja Kumari               Female     13-MAY-05             2
       303 Priyanka Kumari           Female     14-MAY-05             3
       304 Kajal Kumari              Female     15-MAY-05             4
       305 Sakshi Priya              Female     16-MAY-05             5
       306 Swati Priya               Female     17-MAY-05             6
       307 Babli Kumari              Female     18-MAY-05             7
       308 Aayushi Shrivastava       Female     19-MAY-05             8
       309 Adira                     Female     20-MAY-05             9
       310 Priya Kumari              Female     21-MAY-05            10

10 rows selected.

SQL> SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL> SET WRAP OFF
SQL>
SQL> COLUMN Student_Name FORMAT A25
SQL>
SQL> SELECT
  2      STUDENT_ID    AS Roll_No,
  3      STUDENT_NAME  AS Student_Name,
  4      DEPT_ID       AS Dept_ID
  5  FROM Student;

   ROLL_NO STUDENT_NAME                 DEPT_ID
---------- ------------------------- ----------
       301 Sarita Kumari                      1
       302 Puja Kumari                        2
       303 Priyanka Kumari                    3
       304 Kajal Kumari                       4
       305 Sakshi Priya                       5
       306 Swati Priya                        6
       307 Babli Kumari                       7
       308 Aayushi Shrivastava                8
       309 Adira                              9
       310 Priya Kumari                      10

10 rows selected.

SQL> SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL> SET WRAP OFF
SQL>
SQL> COLUMN Student_Name FORMAT A25
SQL> COLUMN Student_G FORMAT A10
SQL> COLUMN DOB FORMAT A12
SQL>
SQL> SELECT
  2      STUDENT_ID    AS Roll_No,
  3      STUDENT_NAME  AS Student_Name,
  4      GENDER        AS Student_G,
  5      TO_CHAR(DATE_OF_BIRTH,'DD-MON-YY') AS DOB,
  6      DEPT_ID       AS Dept_ID
  7  FROM Student;

   ROLL_NO STUDENT_NAME              STUDENT_G  DOB             DEPT_ID
---------- ------------------------- ---------- ------------ ----------
       301 Sarita Kumari             Female     12-MAY-05             1
       302 Puja Kumari               Female     13-MAY-05             2
       303 Priyanka Kumari           Female     14-MAY-05             3
       304 Kajal Kumari              Female     15-MAY-05             4
       305 Sakshi Priya              Female     16-MAY-05             5
       306 Swati Priya               Female     17-MAY-05             6
       307 Babli Kumari              Female     18-MAY-05             7
       308 Aayushi Shrivastava       Female     19-MAY-05             8
       309 Adira                     Female     20-MAY-05             9
       310 Priya Kumari              Female     21-MAY-05            10

10 rows selected.

SQL> COMMIT;

Commit complete.

SQL> SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL> SET WRAP OFF
SQL>
SQL> COLUMN Student_Name FORMAT A25
SQL>
SQL> SELECT
  2      STUDENT_ID    AS Roll_No,
  3      STUDENT_NAME  AS Student_Name,
  4      DEPT_ID       AS Dept_ID
  5  FROM Student;

   ROLL_NO STUDENT_NAME                 DEPT_ID
---------- ------------------------- ----------
       301 Sarita Kumari                      1
       302 Puja Kumari                        2
       303 Priyanka Kumari                    3
       304 Kajal Kumari                       4
       305 Sakshi Priya                       5
       306 Swati Priya                        6
       307 Babli Kumari                       7
       308 Aayushi Shrivastava                8
       309 Adira                              9
       310 Priya Kumari                      10

10 rows selected.

SQL> SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL> SET WRAP OFF
SQL>
SQL> COLUMN Faculty_Name FORMAT A25
SQL> COLUMN Designation FORMAT A20
SQL> COLUMN Email FORMAT A30
SQL>
SQL> SELECT
  2      FACULTY_ID   AS Faculty_ID,
  3      FACULTY_NAME AS Faculty_Name,
  4      DESIGNATION  AS Designation,
  5      EMAIL        AS Email
  6  FROM Faculty;

FACULTY_ID FACULTY_NAME              DESIGNATION          EMAIL
---------- ------------------------- -------------------- ------------------------------
       101 Sujeet Kumar              Assistant Professor  ksujeet.cs@gmail.com
       102 Prof. Praveen Kumar       Assistant Professor  praveenkumaryadav782@gmail.com
       103 Prof. Manisha Kumari Sing Assistant Professor  manisha.ks241@gmail.com
       104 Prof. Md. Izhar           Assistant Professor  mdizhar1996@gmail.com
       105 Prof. Amit Kumar          Assistant Professor  amitbcebhagalpur@gmail.com
       106 Prof. Md. Ehteshamoul Hoq Assistant Professor  ehtasham47@gmail.com
       107 Prof. Murlidhar Prasad Si Assistant Professor  singhmurlidhar@gmail.com
       108 Prof. Arun Kumar          Assistant Professor  arunkr75@gmail.com
       109 Mr. Ravi Kumar            Lab Assistant(Guest) sonubhardwaj4200@gmail.com
       110 Prof. Akhilesh Kumar      Assistant Professor  akhileshkumar3804@gmail.com

10 rows selected.


SQL> SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL> SET WRAP OFF
SQL>
SQL> COLUMN Course_Name FORMAT A30
SQL> SELECT
  2  Course_ID AS Course_ID,
  3  Course_Name AS Course_Name,
  4  Credits AS Course_Credits
  5  FROM Course;

 COURSE_ID COURSE_NAME                    COURSE_CREDITS
---------- ------------------------------ --------------
       201 Database Management System                  5
       202 Data Structures                             5
       203 Operating System                            5
       204 Computer Network                            5
       205 Artificial intelligence                     5
       206 Machine learning                            5
       207 Software engineering                        3
       208 C programming                               5
       209 Python                                      5
       210 Object Oriented Programming                 5

10 rows selected.


SQL> DESC Enrollment;
 Name                                                             Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 STUDENT_ID                                                       NOT NULL NUMBER
 COURSE_ID                                                        NOT NULL NUMBER
 SEMESTER                                                          NUMBER
 GRADE                                                             VARCHAR2(5)

SQL> SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL> SET WRAP OFF
SQL>
SQL> COLUMN Semester FORMAT 9999
SQL> COLUMN Grade FORMAT A8
SQL>
SQL> SELECT
  2      STUDENT_ID AS Roll_No,
  3      COURSE_ID  AS Course_ID,
  4      SEMESTER   AS Semester,
  5      GRADE      AS Grade
  6  FROM Enrollment;

   ROLL_NO  COURSE_ID SEMESTER GRADE
---------- ---------- -------- --------
       301        201        3 A
       302        202        5 B+
       303        203        4 A+
       304        204        5 B
       305        205        5 A
       306        206        5 B+
       307        207        3 A+
       308        208        5 B
       309        209        5 A+
       310        210        5 A

10 rows selected.


SQL> DESC Student;
 Name                                                             Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 STUDENT_ID                                                       NOT NULL NUMBER
 STUDENT_NAME                                                     NOT NULL VARCHAR2(100)
 DATE_OF_BIRTH                                                     DATE
 GENDER                                                            VARCHAR2(10)
 CONTACT_NUMBER                                                    VARCHAR2(15)
 DEPT_ID                                                           NUMBER

SQL> SET WRAP OFF;
SQL>
SQL> SELECT *
  2  FROM Student
  3  WHERE DEPT_ID = 101;

no rows selected

SQL> SELECT*FROM Student;

STUDENT_ID STUDENT_NAME              DATE_OF_B GENDER     CONTACT_NUMBER     DEPT_ID
---------- ------------------------- --------- ---------- --------------- ----------
       301 Sarita Kumari             12-MAY-05 Female     2345678987               1
       302 Puja Kumari               13-MAY-05 Female     2345678988               2
       303 Priyanka Kumari           14-MAY-05 Female     2345675988               3
       304 Kajal Kumari              15-MAY-05 Female     2345675888               4
       305 Sakshi Priya              16-MAY-05 Female     2348675988               5
       306 Swati Priya               17-MAY-05 Female     8348675988               6
       307 Babli Kumari              18-MAY-05 Female     2388675988               7
       308 Aayushi Shrivastava       19-MAY-05 Female     2848675988               8
       309 Adira                     20-MAY-05 Female     2348685988               9
       310 Priya Kumari              21-MAY-05 Female     2848675988              10

10 rows selected.

SQL> SELECT *
  2  FROM Student
  3  WHERE DEPT_ID = 1;

STUDENT_ID STUDENT_NAME              DATE_OF_B GENDER     CONTACT_NUMBER     DEPT_ID
---------- ------------------------- --------- ---------- --------------- ----------
       301 Sarita Kumari             12-MAY-05 Female     2345678987               1

SQL> SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL>
SQL> COLUMN Student_Name FORMAT A25
SQL>
SQL> SELECT
  2      STUDENT_ID                         AS Roll_No,
  3      STUDENT_NAME                       AS Student_Name,
  4      GENDER                             AS Student_G,
  5      TO_CHAR(DATE_OF_BIRTH,'DD-MON-YY') AS DOB,
  6      DEPT_ID                            AS Dept_ID
  7  FROM Student
  8  WHERE DEPT_ID = 1;

   ROLL_NO STUDENT_NAME              STUDENT_G  DOB            DEPT_ID
---------- ------------------------- ---------- ------------ ----------
       301 Sarita Kumari             Female     12-MAY-05            1

SQL> SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL>
SQL> SELECT*
  2  FROM Student
  3  WHERE Gender='Female';

STUDENT_ID STUDENT_NAME              DATE_OF_B GENDER     CONTACT_NUMBER     DEPT_ID
---------- ------------------------- --------- ---------- --------------- ----------
       301 Sarita Kumari             12-MAY-05 Female     2345678987               1
       302 Puja Kumari               13-MAY-05 Female     2345678988               2
       303 Priyanka Kumari           14-MAY-05 Female     2345675988               3
       304 Kajal Kumari              15-MAY-05 Female     2345675888               4
       305 Sakshi Priya              16-MAY-05 Female     2348675988               5
       306 Swati Priya               17-MAY-05 Female     8348675988               6
       307 Babli Kumari              18-MAY-05 Female     2388675988               7
       308 Aayushi Shrivastava       19-MAY-05 Female     2848675988               8
       309 Adira                     20-MAY-05 Female     2348685988               9
       310 Priya Kumari              21-MAY-05 Female     2848675988              10

10 rows selected.


SQL> SELECT*
  2  FROM Faculty
  3  WHERE Designation='Assistant Professor';

FACULTY_ID FACULTY_NAME              DESIGNATION          EMAIL                             DEPT_ID
---------- ------------------------- -------------------- ------------------------------ ----------
       101 Sujeet Kumar              Assistant Professor  ksujeet.cs@gmail.com                    1
       102 Prof. Praveen Kumar       Assistant Professor  praveenkumaryadav782@gmail.com          2
       103 Prof. Manisha Kumari Sing Assistant Professor  manisha.ks241@gmail.com                 3
       104 Prof. Md. Izhar           Assistant Professor  mdizhar1996@gmail.com                   4
       105 Prof. Amit Kumar          Assistant Professor  amitbcebhagalpur@gmail.com              5
       106 Prof. Md. Ehteshamoul Hoq Assistant Professor  ehtasham47@gmail.com                    6
       107 Prof. Murlidhar Prasad Si Assistant Professor  singhmurlidhar@gmail.com                7
       108 Prof. Arun Kumar          Assistant Professor  arunkr75@gmail.com                      8
       110 Prof. Akhilesh Kumar      Assistant Professor  akhileshkumar3804@gmail.com            10

9 rows selected.

SQL> DESC Faculty;
 Name                                                             Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 FACULTY_ID                                                       NOT NULL NUMBER
 FACULTY_NAME                                                     NOT NULL VARCHAR2(100)
 DESIGNATION                                                       VARCHAR2(50)
 EMAIL                                                             VARCHAR2(100)
 DEPT_ID                                                           NUMBER

SQL> SELECT *
  2  FROM Faculty
  3  WHERE DEPT_ID = 2;

FACULTY_ID FACULTY_NAME              DESIGNATION          EMAIL                             DEPT_ID
---------- ------------------------- -------------------- ------------------------------ ----------
       102 Prof. Praveen Kumar       Assistant Professor  praveenkumaryadav782@gmail.com          2

SQL> SELECT *
  2  FROM Course
  3  WHERE Credits>=4;

 COURSE_ID COURSE_NAME                       CREDITS    DEPT_ID FACULTY_ID
---------- ------------------------------ ---------- ---------- ----------
       201 Database Management System              5          1        101
       202 Data Structures                         5          2        106
       203 Operating System                        5          2        102
       204 Computer Network                        5          2        107
       205 Artificial intelligence                 5          3        103
       206 Machine learning                        5          3        108
       208 C programming                           5          4        109
       209 Python                                  5          5        105
       210 Object Oriented Programming             5          5        110

9 rows selected.


SQL> SELECT *
  2  FROM Student
  3  WHERE DATE_OF_BIRTH > TO_DATE('14-01-2005','DD-MM-YYYY');

STUDENT_ID STUDENT_NAME              DATE_OF_B GENDER     CONTACT_NUMBER     DEPT_ID
---------- ------------------------- --------- ---------- --------------- ----------
       301 Sarita Kumari             12-MAY-05 Female     2345678987               1
       302 Puja Kumari               13-MAY-05 Female     2345678988               2
       303 Priyanka Kumari           14-MAY-05 Female     2345675988               3
       304 Kajal Kumari              15-MAY-05 Female     2345675888               4
       305 Sakshi Priya              16-MAY-05 Female     2348675988               5
       306 Swati Priya               17-MAY-05 Female     8348675988               6
       307 Babli Kumari              18-MAY-05 Female     2388675988               7
       308 Aayushi Shrivastava       19-MAY-05 Female     2848675988               8
       309 Adira                     20-MAY-05 Female     2348685988               9
       310 Priya Kumari              21-MAY-05 Female     2848675988              10

10 rows selected.

SQL> SELECT *
  2  FROM Student
  3  WHERE DATE_OF_BIRTH > TO_DATE('01-01-2003','DD-MM-YYYY');

STUDENT_ID STUDENT_NAME              DATE_OF_B GENDER     CONTACT_NUMBER     DEPT_ID
---------- ------------------------- --------- ---------- --------------- ----------
       301 Sarita Kumari             12-MAY-05 Female     2345678987               1
       302 Puja Kumari               13-MAY-05 Female     2345678988               2
       303 Priyanka Kumari           14-MAY-05 Female     2345675988               3
       304 Kajal Kumari              15-MAY-05 Female     2345675888               4
       305 Sakshi Priya              16-MAY-05 Female     2348675988               5
       306 Swati Priya               17-MAY-05 Female     8348675988               6
       307 Babli Kumari              18-MAY-05 Female     2388675988               7
       308 Aayushi Shrivastava       19-MAY-05 Female     2848675988               8
       309 Adira                     20-MAY-05 Female     2348685988               9
       310 Priya Kumari              21-MAY-05 Female     2848675988              10

10 rows selected.

SQL> SELECT *
  2  FROM Student
  3  WHERE DATE_OF_BIRTH > TO_DATE('15-05-2005','DD-MM-YYYY');

STUDENT_ID STUDENT_NAME              DATE_OF_B GENDER     CONTACT_NUMBER     DEPT_ID
---------- ------------------------- --------- ---------- --------------- ----------
       305 Sakshi Priya              16-MAY-05 Female     2348675988               5
       306 Swati Priya               17-MAY-05 Female     8348675988               6
       307 Babli Kumari              18-MAY-05 Female     2388675988               7
       308 Aayushi Shrivastava       19-MAY-05 Female     2848675988               8
       309 Adira                     20-MAY-05 Female     2348685988               9
       310 Priya Kumari              21-MAY-05 Female     2848675988              10

6 rows selected.


SQL> SELECT *
  2  FROM Enrollment
  3  WHERE Semester=4;

STUDENT_ID  COURSE_ID SEMESTER GRADE
---------- ---------- -------- --------
       303        203        4 A+

SQL> SELECT *
  2  FROM Student
  3  ORDER BY STUDENT_NAME ASC;

STUDENT_ID STUDENT_NAME              DATE_OF_B GENDER     CONTACT_NUMBER     DEPT_ID
---------- ------------------------- --------- ---------- --------------- ----------
       308 Aayushi Shrivastava       19-MAY-05 Female     2848675988               8
       309 Adira                     20-MAY-05 Female     2348685988               9
       307 Babli Kumari              18-MAY-05 Female     2388675988               7
       304 Kajal Kumari              15-MAY-05 Female     2345675888               4
       310 Priya Kumari              21-MAY-05 Female     2848675988              10
       303 Priyanka Kumari           14-MAY-05 Female     2345675988               3
       302 Puja Kumari               13-MAY-05 Female     2345678988               2
       305 Sakshi Priya              16-MAY-05 Female     2348675988               5
       301 Sarita Kumari             12-MAY-05 Female     2345678987               1
       306 Swati Priya               17-MAY-05 Female     8348675988               6

10 rows selected.


SQL> SELECT *
  2  FROM Student
  3  ORDER BY DATE_OF_BIRTH DESC;

STUDENT_ID STUDENT_NAME              DATE_OF_B GENDER     CONTACT_NUMBER     DEPT_ID
---------- ------------------------- --------- ---------- --------------- ----------
       310 Priya Kumari              21-MAY-05 Female     2848675988              10
       309 Adira                     20-MAY-05 Female     2348685988               9
       308 Aayushi Shrivastava       19-MAY-05 Female     2848675988               8
       307 Babli Kumari              18-MAY-05 Female     2388675988               7
       306 Swati Priya               17-MAY-05 Female     8348675988               6
       305 Sakshi Priya              16-MAY-05 Female     2348675988               5
       304 Kajal Kumari              15-MAY-05 Female     2345675888               4
       303 Priyanka Kumari           14-MAY-05 Female     2345675988               3
       302 Puja Kumari               13-MAY-05 Female     2345678988               2
       301 Sarita Kumari             12-MAY-05 Female     2345678987               1

10 rows selected.


SQL> SELECT *
  2  FROM Faculty
  3  ORDER BY Designation ASC;

FACULTY_ID FACULTY_NAME              DESIGNATION          EMAIL     DEPT_ID
---------- ------------------------- -------------------- ------------------------------ ----------
       101 Sujeet Kumar              Assistant Professor  ksujeet.cs@gmail.com                    1
       102 Prof. Praveen Kumar       Assistant Professor  praveenkumaryadav782@gmail.com          2
       103 Prof. Manisha Kumari Sing Assistant Professor  manisha.ks241@gmail.com                 3
       104 Prof. Md. Izhar           Assistant Professor  mdizhar1996@gmail.com                   4
       110 Prof. Akhilesh Kumar      Assistant Professor  akhileshkumar3804@gmail.com            10
       106 Prof. Md. Ehteshamoul Hoq Assistant Professor  ehtasham47@gmail.com                    6
       107 Prof. Murlidhar Prasad Si Assistant Professor  singhmurlidhar@gmail.com                7
       108 Prof. Arun Kumar          Assistant Professor  arunkr75@gmail.com                      8
       105 Prof. Amit Kumar          Assistant Professor  amitbcebhagalpur@gmail.com              5
       109 Mr. Ravi Kumar            Lab Assistant(Guest) sonubhardwaj4200@gmail.com              9

10 rows selected.


SQL> SELECT *
  2  FROM Course
  3  ORDER BY Credits DESC;

 COURSE_ID COURSE_NAME                       CREDITS    DEPT_ID FACULTY_ID
---------- ------------------------------ ---------- ---------- ----------
       201 Database Management System              5          1        101
       202 Data Structures                         5          2        106
       203 Operating System                        5          2        102
       204 Computer Network                        5          2        107
       210 Object Oriented Programming             5          5        110
       206 Machine learning                        5          3        108
       205 Artificial intelligence                 5          3        103
       208 C programming                           5          4        109
       209 Python                                  5          5        105
       207 Software engineering                    3          4        104

10 rows selected.


SQL> SELECT *
  2  FROM Student
  3  WHERE ROWNUM <= 3;

STUDENT_ID STUDENT_NAME              DATE_OF_B GENDER     CONTACT_NUMBER     DEPT_ID
---------- ------------------------- --------- ---------- --------------- ----------
       301 Sarita Kumari             12-MAY-05 Female     2345678987               1
       302 Puja Kumari               13-MAY-05 Female     2345678988               2
       303 Priyanka Kumari           14-MAY-05 Female     2345675988               3


SQL> SELECT *
  2  FROM Course
  3  WHERE ROWNUM <= 5;

 COURSE_ID COURSE_NAME                       CREDITS    DEPT_ID FACULTY_ID
---------- ------------------------------ ---------- ---------- ----------
       201 Database Management System              5          1        101
       202 Data Structures                         5          2        106
       203 Operating System                        5          2        102
       204 Computer Network                        5          2        107
       205 Artificial intelligence                 5          3        103



SQL> SELECT
  2      STUDENT_NAME AS Name,
  3      FLOOR(MONTHS_BETWEEN(SYSDATE, DATE_OF_BIRTH) / 12) AS Age
  4  FROM Student;

NAME                                                               AGE
---------------------------------------------------------------------------------------------------- ----------
Sarita Kumari                                                       20
Puja Kumari                                                         20
Priyanka Kumari                                                     20
Kajal Kumari                                                        20
Sakshi Priya                                                        20
Swati Priya                                                         20
Babli Kumari                                                        20
Aayushi Shrivastava                                                 20
Adira                                                               20
Priya Kumari                                                        20

10 rows selected.



SQL> SELECT
  2      COURSE_NAME AS CourseName,
  3      CREDITS + 1 AS Updated_Credits
  4  FROM Course;

COURSENAME                                                          UPDATED_CREDITS
---------------------------------------------------------------------------------------------------- ---------------
Database Management System                                        6
Data Structures                                                   6
Operating System                                                  6
Computer Network                                                  6
Artificial intelligence                                           6
Machine learning                                                  6
Software engineering                                              4
C programming                                                     6
Python                                                            6
Object Oriented Programming                                       6

10 rows selected.

SQL> SELECT
  2      STUDENT_ID AS StudentID,
  3      COURSE_ID  AS CourseID,
  4      SEMESTER   AS Semester,
  5      GRADE      AS Final_Grade
  6  FROM Enrollment;

 STUDENTID   COURSEID SEMESTER FINAL
---------- ---------- -------- -----
       301        201        3 A
       302        202        5 B+
       303        203        4 A+
       304        204        5 B
       305        205        5 A
       306        206        5 B+
       307        207        3 A+
       308        208        5 B
       309        209        5 A+
       310        210        5 A

10 rows selected.


SQL> SELECT
  2      STUDENT_NAME AS Name,
  3      EXTRACT(YEAR FROM DATE_OF_BIRTH) AS Birth_Year
  4  FROM Student;

NAME                                                                BIRTH_YEAR
---------------------------------------------------------------------------------------------------- ----------
Sarita Kumari                                                     2005
Puja Kumari                                                       2005
Priyanka Kumari                                                   2005
Kajal Kumari                                                      2005
Sakshi Priya                                                      2005
Swati Priya                                                       2005
Babli Kumari                                                      2005
Aayushi Shrivastava                                               2005
Adira                                                             2005
Priya Kumari                                                      2005

10 rows selected.



SQL> SELECT
  2      FACULTY_NAME AS Name,
  3      SUBSTR(EMAIL, INSTR(EMAIL,'@') + 1) AS Email_Domain
  4  FROM Faculty;

NAME                                                                                                 EMAIL_DOMAIN
---------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------
Sujeet Kumar                                                                                         gmail.com
Prof. Praveen Kumar                                                                                  gmail.com
Prof. Manisha Kumari Singh                                                                           gmail.com
Prof. Md. Izhar                                                                                      gmail.com
Prof. Amit Kumar                                                                                     gmail.com
Prof. Md. Ehteshamoul Hoque (HoD)                                                                    gmail.com
Prof. Murlidhar Prasad Singh                                                                         gmail.com
Prof. Arun Kumar                                                                                     gmail.com
Mr. Ravi Kumar                                                                                       gmail.com
Prof. Akhilesh Kumar                                                                                 gmail.com

10 rows selected.


