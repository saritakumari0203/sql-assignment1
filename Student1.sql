
SQL*Plus: Release 21.0.0.0.0 - Production on Thu Jan 29 21:36:09 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Thu Jan 29 2026 20:58:36 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> CREATE TABLE Student (
  2      RollNo INT,
  3      Name VARCHAR(50),
  4      Dept VARCHAR(20),
  5      Age INT,
  6      Phone VARCHAR(15)
  7  );

Table created.

SQL> DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)

SQL> CREATE TABLE Course (
  2      CourseID INT,
  3      CourseName VARCHAR(50),
  4      Credits INT
  5  );

Table created.

SQL> DESC Course;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COURSEID                                           NUMBER(38)
 COURSENAME                                         VARCHAR2(50)
 CREDITS                                            NUMBER(38)

SQL> ALTER TABLE Student
  2  ADD City VARCHAR(30);

Table altered.

SQL> DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(30)

SQL> ALTER TABLE Student
  2  ADD Semester INT;

Table altered.

SQL> DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(30)
 SEMESTER                                           NUMBER(38)

SQL> ALTER TABLE Student
  2  RENAME COLUMN Phone To MobileNo;

Table altered.

SQL> DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(30)
 SEMESTER                                           NUMBER(38)

SQL> INSERT INTO Student(RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES(1,'Sarita','CSE',20,'2345678987','Patna',4);

1 row created.

SQL> DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(30)
 SEMESTER                                           NUMBER(38)

SQL> SELECT*FROM Student;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         1 Sarita
CSE                          20 2345678987      Patna
         4


SQL> INSERT INTO Student(RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES(2,'Puja','ECE',21,'2345678987','Gaya',6);

1 row created.

SQL> DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(30)
 SEMESTER                                           NUMBER(38)

SQL> SELECT*FROM Student;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         1 Sarita
CSE                          20 2345678987      Patna
         4

         2 Puja
ECE                          21 2345678987      Gaya
         6

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------

SQL> INSERT INTO Student(RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES(3,'Priyanka','ME',22,'3451234567','Patna',8);

1 row created.

SQL> DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(30)
 SEMESTER                                           NUMBER(38)

SQL> SELECT*FROM Student;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         1 Sarita
CSE                          20 2345678987      Patna
         4

         2 Puja
ECE                          21 2345678987      Gaya
         6

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------

         3 Priyanka
ME                           22 3451234567      Patna
         8


SQL> INSERT INTO Student(RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES(4,'Kajal','EE',23,'9876543456','Bihar',2);

1 row created.

SQL> DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(30)
 SEMESTER                                           NUMBER(38)

SQL> SELECT*FROM Student;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         1 Sarita
CSE                          20 2345678987      Patna
         4

         2 Puja
ECE                          21 2345678987      Gaya
         6

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------

         3 Priyanka
ME                           22 3451234567      Patna
         8

         4 Kajal
EE                           23 9876543456      Bihar

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         2


SQL> INSERT INTO Student(RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES(5,'Khushi','CE',23,'8765434567','Muzaffpure',6);

1 row created.

SQL> DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(30)
 SEMESTER                                           NUMBER(38)

SQL> SELECT*FROM Student;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         1 Sarita
CSE                          20 2345678987      Patna
         4

         2 Puja
ECE                          21 2345678987      Gaya
         6

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------

         3 Priyanka
ME                           22 3451234567      Patna
         8

         4 Kajal
EE                           23 9876543456      Bihar

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         2

         5 Khushi
CE                           23 8765434567      Muzaffpure
         6


SQL> SELECT RollNo,Name FROM Student;

    ROLLNO NAME
---------- --------------------------------------------------
         1 Sarita
         2 Puja
         3 Priyanka
         4 Kajal
         5 Khushi

SQL> SELECT*FROM Student
  2  WHERE Dept='CSE';

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         1 Sarita
CSE                          20 2345678987      Patna
         4


SQL> SELECT*FROM Student
  2  WHERE Age>20;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         2 Puja
ECE                          21 2345678987      Gaya
         6

         3 Priyanka
ME                           22 3451234567      Patna
         8

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------

         4 Kajal
EE                           23 9876543456      Bihar
         2

         5 Khushi
CE                           23 8765434567      Muzaffpure

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         6


SQL> UPDATE Student
  2  SET Dept='ECE'
  3  WHERE RollNo=101;

0 rows updated.

SQL> UPDATE Student
  2  SET Dept='ECE'
  3  WHERE RollNo=3;

1 row updated.

SQL> SELECT*FROM Student;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         1 Sarita
CSE                          20 2345678987      Patna
         4

         2 Puja
ECE                          21 2345678987      Gaya
         6

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------

         3 Priyanka
ECE                          22 3451234567      Patna
         8

         4 Kajal
EE                           23 9876543456      Bihar

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         2

         5 Khushi
CE                           23 8765434567      Muzaffpure
         6


SQL> UPDATE Student
  2  SET City='Patna'
  3  WHERE Name='Rahul';

0 rows updated.

SQL> UPDATE Student
  2  SET City='Gaya'
  3  WHERE Name='Sarita';

1 row updated.

SQL> SELECT*FROM Student;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         1 Sarita
CSE                          20 2345678987      Gaya
         4

         2 Puja
ECE                          21 2345678987      Gaya
         6

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------

         3 Priyanka
ECE                          22 3451234567      Patna
         8

         4 Kajal
EE                           23 9876543456      Bihar

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         2

         5 Khushi
CE                           23 8765434567      Muzaffpure
         6


SQL> UPDATE Student
  2  SET Age=Age+1;

5 rows updated.

SQL> SELECT*FROM Student;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         1 Sarita
CSE                          21 2345678987      Gaya
         4

         2 Puja
ECE                          22 2345678987      Gaya
         6

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------

         3 Priyanka
ECE                          23 3451234567      Patna
         8

         4 Kajal
EE                           24 9876543456      Bihar

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         2

         5 Khushi
CE                           24 8765434567      Muzaffpure
         6


SQL> DELETE FROM Student
  2  WHERE RollNo=105;

0 rows deleted.

SQL> DELETE FROM Student
  2  WHERE RollNo=5;

1 row deleted.

SQL> SELECT*FROM Student;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         1 Sarita
CSE                          21 2345678987      Gaya
         4

         2 Puja
ECE                          22 2345678987      Gaya
         6

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------

         3 Priyanka
ECE                          23 3451234567      Patna
         8

         4 Kajal
EE                           24 9876543456      Bihar

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         2


SQL> DELETE FROM Student;

4 rows deleted.

SQL> SELECT*FROM Student;

no rows selected

SQL> DROP TABLE Course;

Table dropped.

