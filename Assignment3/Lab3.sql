
SQL*Plus: Release 21.0.0.0.0 - Production on Tue Feb 17 20:12:55 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Tue Feb 17 2026 19:24:55 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> DESC Department;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPT_ID                                   NOT NULL NUMBER
 DEPT_NAME                                 NOT NULL VARCHAR2(100)
 OFFICE_LOCATION                                    VARCHAR2(50)

SQL> INSERT INTO Department VALUES (1, 'Computer Science and Engineering', 'Block A');

1 row created.

SQL> SELECT*FROM Department;

   DEPT_ID
----------
DEPT_NAME
--------------------------------------------------------------------------------
OFFICE_LOCATION
--------------------------------------------------
         1
Computer Science and Engineering
Block A


SQL> INSERT INTO Department VALUES (2, 'Artificial intelligence and Machine learning', 'Block A');

1 row created.

SQL> INSERT INTO Department VALUES (3, 'Civil Engineering', 'Block C');

1 row created.

SQL> INSERT INTO Department VALUES (4, 'Electrical Engineering', 'Block D');

1 row created.

SQL> INSERT INTO Department VALUES (5, 'Mechanical Engineering', 'Block E');

1 row created.

SQL> INSERT INTO Department VALUES (6, 'Civil Engineering With Computer Application', 'Block F');

1 row created.

SQL> INSERT INTO Department VALUES (7, '3D Animation and Graphics', 'Block G');

1 row created.

SQL> INSERT INTO Department VALUES (8, 'Applied Science & Humanities', 'Block H');
Enter value for humanities: SET DEFINE OFF;
old   1: INSERT INTO Department VALUES (8, 'Applied Science & Humanities', 'Block H')
new   1: INSERT INTO Department VALUES (8, 'Applied Science SET DEFINE OFF;', 'Block H')

1 row created.

SQL> INSERT INTO Department VALUES (9, 'Electronics and Communication Engineering', 'Block I');

1 row created.

SQL> INSERT INTO Department VALUES (10, 'Workshop and Production', 'Block J');

1 row created.

SQL> SELECT*FROM Department;

   DEPT_ID
----------
DEPT_NAME
--------------------------------------------------------------------------------
OFFICE_LOCATION
--------------------------------------------------
         1
Computer Science and Engineering
Block A

         2
Artificial intelligence and Machine learning
Block A

   DEPT_ID
----------
DEPT_NAME
--------------------------------------------------------------------------------
OFFICE_LOCATION
--------------------------------------------------

         3
Civil Engineering
Block C

         4
Electrical Engineering

   DEPT_ID
----------
DEPT_NAME
--------------------------------------------------------------------------------
OFFICE_LOCATION
--------------------------------------------------
Block D

         5
Mechanical Engineering
Block E

         6

   DEPT_ID
----------
DEPT_NAME
--------------------------------------------------------------------------------
OFFICE_LOCATION
--------------------------------------------------
Civil Engineering With Computer Application
Block F

         7
3D Animation and Graphics
Block G


   DEPT_ID
----------
DEPT_NAME
--------------------------------------------------------------------------------
OFFICE_LOCATION
--------------------------------------------------
         8
Applied Science SET DEFINE OFF;
Block H

         9
Electronics and Communication Engineering
Block I

   DEPT_ID
----------
DEPT_NAME
--------------------------------------------------------------------------------
OFFICE_LOCATION
--------------------------------------------------

        10
Workshop and Production
Block J


10 rows selected.

SQL> SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL> COLUMN dept_id FORMAT 999
SQL> COLUMN dept_name FORMAT A35
SQL> COLUMN office_location FORMAT A20
SQL> SELECT * FROM Department;

DEPT_ID DEPT_NAME                           OFFICE_LOCATION
------- ----------------------------------- --------------------
      1 Computer Science and Engineering    Block A
      2 Artificial intelligence and Machine Block A
         learning

      3 Civil Engineering                   Block C
      4 Electrical Engineering              Block D
      5 Mechanical Engineering              Block E
      6 Civil Engineering With Computer App Block F
        lication

      7 3D Animation and Graphics           Block G
      8 Applied Science SET DEFINE OFF;     Block H
      9 Electronics and Communication Engin Block I
        eering

     10 Workshop and Production             Block J

10 rows selected.

SQL> DESC Faculty;
 Name                                                             Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 FACULTY_ID                                                       NOT NULL NUMBER
 FACULTY_NAME                                                     NOT NULL VARCHAR2(100)
 DESIGNATION                                                       VARCHAR2(50)
 EMAIL                                                             VARCHAR2(100)
 DEPT_ID                                                           NUMBER

SQL> INSERT INTO Faculty VALUES (101, 'Sujeet Kumar', 'Assistant Professor', 'ksujeet.cs@gmail.com', 1);

1 row created.

SQL> INSERT INTO Faculty VALUES (102, 'Prof. Praveen Kumar', 'Assistant Professor', 'praveenkumaryadav782@gmail.com', 2);

1 row created.

SQL>  INSERT INTO Faculty VALUES (103, 'Prof. Manisha Kumari Singh', 'Assistant Professor', 'manisha.ks241@gmail.com', 3);

1 row created.

SQL> INSERT INTO Faculty VALUES (104, 'Prof. Md. Izhar', 'Assistant Professor', 'mdizhar1996@gmail.com', 4);

1 row created.

SQL> INSERT INTO Faculty VALUES (105, 'Prof. Amit Kumar', 'Assistant Professor', 'amitbcebhagalpur@gmail.com', 5);

1 row created.

SQL> INSERT INTO Faculty VALUES (106, 'Prof. Md. Ehteshamoul Hoque (HoD)', 'Assistant Professor', 'ehtasham47@gmail.com', 6);

1 row created.

SQL> INSERT INTO Faculty VALUES (107, 'Prof. Murlidhar Prasad Singh', 'Assistant Professor', 'singhmurlidhar@gmail.com', 7);

1 row created.

SQL> INSERT INTO Faculty VALUES (108, 'Prof. Arun Kumar', 'Assistant Professor', 'arunkr75@gmail.com', 8);

1 row created.

SQL> INSERT INTO Faculty VALUES (109, 'Mr. Ravi Kumar', 'Lab Assistant(Guest)', 'sonubhardwaj4200@gmail.com', 9);

1 row created.

SQL>  INSERT INTO Faculty VALUES (110, 'Prof. Akhilesh Kumar', 'Assistant Professor', 'akhileshkumar3804@gmail.com', 10);

1 row created.

SQL> SELECT*FROM Faculty;

FACULTY_ID FACULTY_NAME                                                                                         DESIGNATION
---------- ---------------------------------------------------------------------------------------------------- --------------------------------------------------
EMAIL                                                                                                DEPT_ID
---------------------------------------------------------------------------------------------------- -------
       101 Sujeet Kumar                                                                                         Assistant Professor
ksujeet.cs@gmail.com                                                                                       1

       102 Prof. Praveen Kumar                                                                                  Assistant Professor
praveenkumaryadav782@gmail.com                                                                             2

       103 Prof. Manisha Kumari Singh                                                                           Assistant Professor
manisha.ks241@gmail.com                                                                                    3

       104 Prof. Md. Izhar                                                                                      Assistant Professor
mdizhar1996@gmail.com                                                                                      4

       105 Prof. Amit Kumar                                                                                     Assistant Professor
amitbcebhagalpur@gmail.com                                                                                 5

       106 Prof. Md. Ehteshamoul Hoque (HoD)                                                                    Assistant Professor
ehtasham47@gmail.com                                                                                       6

       107 Prof. Murlidhar Prasad Singh                                                                         Assistant Professor
singhmurlidhar@gmail.com                                                                                   7

       108 Prof. Arun Kumar                                                                                     Assistant Professor
arunkr75@gmail.com                                                                                         8

       109 Mr. Ravi Kumar                                                                                       Lab Assistant(Guest)
sonubhardwaj4200@gmail.com                                                                                 9

       110 Prof. Akhilesh Kumar                                                                                 Assistant Professor
akhileshkumar3804@gmail.com                                                                               10


10 rows selected.

SQL> SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL> SET WRAP OFF
SQL> COLUMN faculty_id FORMAT 999
SQL> COLUMN faculty_name FORMAT A25
SQL> COLUMN designation FORMAT A20
SQL> COLUMN email FORMAT A30
SQL> COLUMN dept_id FORMAT 999
SQL> SELECT * FROM Faculty;

FACULTY_ID FACULTY_NAME              DESIGNATION          EMAIL  DEPT_ID
---------- ------------------------- -------------------- ------------------------------ -------
       101 Sujeet Kumar              Assistant Professor  ksujeet.cs@gmail.com                 1
       102 Prof. Praveen Kumar       Assistant Professor  praveenkumaryadav782@gmail.com       2
       103 Prof. Manisha Kumari Sing Assistant Professor  manisha.ks241@gmail.com              3
       104 Prof. Md. Izhar           Assistant Professor  mdizhar1996@gmail.com                4
       105 Prof. Amit Kumar          Assistant Professor  amitbcebhagalpur@gmail.com           5
       106 Prof. Md. Ehteshamoul Hoq Assistant Professor  ehtasham47@gmail.com                 6
       107 Prof. Murlidhar Prasad Si Assistant Professor  singhmurlidhar@gmail.com             7
       108 Prof. Arun Kumar          Assistant Professor  arunkr75@gmail.com                   8
       109 Mr. Ravi Kumar            Lab Assistant(Guest) sonubhardwaj4200@gmail.com           9
       110 Prof. Akhilesh Kumar      Assistant Professor  akhileshkumar3804@gmail.com         10

10 rows selected.

SQL> DESC Course;
 Name                                                             Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 COURSE_ID                                                        NOT NULL NUMBER
 COURSE_NAME                                                      NOT NULL VARCHAR2(100)
 CREDITS                                                           NUMBER(2)
 DEPT_ID                                                           NUMBER
 FACULTY_ID                                                        NUMBER

SQL> INSERT INTO Course VALUES (201, 'Database Management System', 5, 1, 101);

1 row created.

SQL> INSERT INTO Course VALUES (202, 'Data Structures', 5, 2, 106);

1 row created.

SQL> INSERT INTO Course VALUES (203, 'Operating System', 5, 2, 102);

1 row created.

SQL> INSERT INTO Course VALUES (204, 'Computer Network', 5, 2, 107);

1 row created.

SQL> INSERT INTO Course VALUES (205, 'Artificial intelligence', 5, 3, 103);

1 row created.

SQL> INSERT INTO Course VALUES (206, 'Machine learning', 5, 3, 108);

1 row created.

SQL> INSERT INTO Course VALUES (207, 'Software engineering', 3, 4, 104);

1 row created.

SQL> INSERT INTO Course VALUES (208, 'C programming', 5, 4, 109);

1 row created.

SQL> INSERT INTO Course VALUES (209, 'Python', 5, 5, 105);

1 row created.

SQL> INSERT INTO Course VALUES (210, 'Object Oriented Programming', 5, 5, 110);

1 row created.

SQL> SELECT*FROM Course;

 COURSE_ID COURSE_NAME                                                                                             CREDITS DEPT_ID FACULTY_ID
---------- ---------------------------------------------------------------------------------------------------- ---------- ------- ----------
       201 Database Management System                                                                                    5       1    101
       202 Data Structures                                                                                               5       2    106
       203 Operating System                                                                                              5       2    102
       204 Computer Network                                                                                              5       2    107
       205 Artificial intelligence                                                                                       5       3    103
       206 Machine learning                                                                                              5       3    108
       207 Software engineering                                                                                          3       4    104
       208 C programming                                                                                                 5       4    109
       209 Python                                                                                                        5       5    105
       210 Object Oriented Programming                                                                                   5       5    110

10 rows selected.
     SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL> SET WRAP OFF
SQL>
SQL> COLUMN course_id FORMAT 999
SQL> COLUMN course_name FORMAT A35
SQL> COLUMN credits FORMAT 99
SQL> COLUMN dept_id FORMAT 999
SQL> COLUMN faculty_id FORMAT 999
SQL> SELECT * FROM Course;

COURSE_ID COURSE_NAME                         CREDITS DEPT_ID FACULTY_ID
--------- ----------------------------------- ------- ------- ----------
      201 Database Management System                5       1        101
      202 Data Structures                           5       2        106
      203 Operating System                          5       2        102
      204 Computer Network                          5       2        107
      205 Artificial intelligence                   5       3        103
      206 Machine learning                          5       3        108
      207 Software engineering                      3       4        104
      208 C programming                             5       4        109
      209 Python                                    5       5        105
      210 Object Oriented Programming               5       5        110

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

SQL> INSERT INTO Student VALUES
  2  (301, 'Sarita Kumari', TO_DATE('12-05-2005','DD-MM-YYYY'), 'Female', '2345678987', 1);

1 row created.

SQL> INSERT INTO Student VALUES
  2  (302, 'Puja Kumari', TO_DATE('13-05-2005','DD-MM-YYYY'), 'Female', '2345678988', 2);

1 row created.

SQL> INSERT INTO Student VALUES
  2  (303, 'Priyanka Kumari', TO_DATE('14-05-2005','DD-MM-YYYY'), 'Female', '2345675988', 3);

1 row created.

SQL> INSERT INTO Student VALUES
  2  (304, 'Kajal Kumari', TO_DATE('15-05-2005','DD-MM-YYYY'), 'Female', '2345675888', 4);

1 row created.

SQL> INSERT INTO Student VALUES
  2  (305, 'Sakshi Priya', TO_DATE('16-05-2005','DD-MM-YYYY'), 'Female', '2348675988', 5);

1 row created.

SQL> INSERT INTO Student VALUES
  2  (306, 'Swati Priya', TO_DATE('17-05-2005','DD-MM-YYYY'), 'Female', '8348675988', 6);

1 row created.

SQL> INSERT INTO Student VALUES
  2  (307, 'Babli Kumari', TO_DATE('18-05-2005','DD-MM-YYYY'), 'Female', '2388675988', 7);

1 row created.

SQL> INSERT INTO Student VALUES
  2  (308, 'Aayushi Shrivastava', TO_DATE('19-05-2005','DD-MM-YYYY'), 'Female', '2848675988', 8);

1 row created.

SQL> INSERT INTO Student VALUES
  2  (309, 'Adira', TO_DATE('20-05-2005','DD-MM-YYYY'), 'Female', '2348685988', 9);

1 row created.

SQL> INSERT INTO Student VALUES
  2  (310, 'Priya Kumari', TO_DATE('21-05-2005','DD-MM-YYYY'), 'Female', '2848675988', 10);

1 row created.

SQL> SELECT*FROM Student;

STUDENT_ID STUDENT_NAME                                                                                         DATE_OF_B GENDER     CONTACT_NUMBER  DEPT_ID
---------- ---------------------------------------------------------------------------------------------------- --------- ---------- --------------- -------
       301 Sarita Kumari                                                                                        12-MAY-05 Female     2345678987         1
       302 Puja Kumari                                                                                          13-MAY-05 Female     2345678988         2
       303 Priyanka Kumari                                                                                      14-MAY-05 Female     2345675988         3
       304 Kajal Kumari                                                                                         15-MAY-05 Female     2345675888         4
       305 Sakshi Priya                                                                                         16-MAY-05 Female     2348675988         5
       306 Swati Priya                                                                                          17-MAY-05 Female     8348675988         6
       307 Babli Kumari                                                                                         18-MAY-05 Female     2388675988         7
       308 Aayushi Shrivastava                                                                                  19-MAY-05 Female     2848675988         8
       309 Adira                                                                                                20-MAY-05 Female     2348685988         9
       310 Priya Kumari                                                                                         21-MAY-05 Female     2848675988        10

10 rows selected.

SQL> SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL> SET WRAP OFF
SQL> COLUMN student_id FORMAT 999
SQL> COLUMN student_name FORMAT A25
SQL> COLUMN date_of_birth FORMAT A12
SQL> COLUMN gender FORMAT A8
SQL> COLUMN contact_number FORMAT A15
SQL> COLUMN dept_id FORMAT 999
SQL> SELECT * FROM Student;

STUDENT_ID STUDENT_NAME              DATE_OF_BIRT GENDER   CONTACT_NUMBER  DEPT_ID
---------- ------------------------- ------------ -------- --------------- -------
       301 Sarita Kumari             12-MAY-05    Female   2345678987            1
       302 Puja Kumari               13-MAY-05    Female   2345678988            2
       303 Priyanka Kumari           14-MAY-05    Female   2345675988            3
       304 Kajal Kumari              15-MAY-05    Female   2345675888            4
       305 Sakshi Priya              16-MAY-05    Female   2348675988            5
       306 Swati Priya               17-MAY-05    Female   8348675988            6
       307 Babli Kumari              18-MAY-05    Female   2388675988            7
       308 Aayushi Shrivastava       19-MAY-05    Female   2848675988            8
       309 Adira                     20-MAY-05    Female   2348685988            9
       310 Priya Kumari              21-MAY-05    Female   2848675988           10

10 rows selected.

SQL> DESC Enrollment;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUDENT_ID                                NOT NULL NUMBER
 COURSE_ID                                 NOT NULL NUMBER
 SEMESTER                                           NUMBER
 GRADE                                              VARCHAR2(5)

SQL> INSERT INTO Enrollment VALUES (301, 201, 3, 'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES (302, 202, 5, 'B+');

1 row created.

SQL> INSERT INTO Enrollment VALUES (303, 203, 4, 'A+');

1 row created.

SQL> INSERT INTO Enrollment VALUES (304, 204, 5, 'B');

1 row created.

SQL> INSERT INTO Enrollment VALUES (305, 205, 5, 'A');

1 row created.

SQL> INSERT INTO Enrollment VALUES (306, 206, 5, 'B+');

1 row created.

SQL> INSERT INTO Enrollment VALUES (307, 207, 3, 'A+');

1 row created.

SQL> INSERT INTO Enrollment VALUES (308, 208, 5, 'B');

1 row created.

SQL> INSERT INTO Enrollment VALUES (309, 209, 5, 'A+');

1 row created.

SQL> INSERT INTO Enrollment VALUES (310, 210, 5, 'A');

1 row created.

SQL> SELECT*FROM Enrollment;

STUDENT_ID  COURSE_ID   SEMESTER GRADE
---------- ---------- ---------- -----
       301        201          3 A
       302        202          5 B+
       303        203          4 A+
       304        204          5 B
       305        205          5 A
       306        206          5 B+
       307        207          3 A+
       308        208          5 B
       309        209          5 A+
       310        210          5 A

10 rows selected.



