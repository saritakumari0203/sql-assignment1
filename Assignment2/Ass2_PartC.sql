SQL> CREATE TABLE Department (
  2      dept_id NUMBER PRIMARY KEY,
  3      dept_name VARCHAR2(100) NOT NULL,
  4      office_location VARCHAR2(50)
  5  );

Table created.

SQL> SELECT * FROM Department;

no rows selected

SQL> DESC Department;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPT_ID                                   NOT NULL NUMBER
 DEPT_NAME                                 NOT NULL VARCHAR2(100)
 OFFICE_LOCATION                                    VARCHAR2(50)

SQL> CREATE TABLE Faculty (
  2      faculty_id NUMBER PRIMARY KEY,
  3      faculty_name VARCHAR2(100) NOT NULL,
  4      designation VARCHAR2(50),
  5      email VARCHAR2(100) UNIQUE,
  6      dept_id NUMBER,
  7      CONSTRAINT fk_faculty_department
  8          FOREIGN KEY (dept_id)
  9          REFERENCES Department(dept_id)
 10  );

Table created.

SQL> SELECT*FROM Faculty;

no rows selected

SQL> DESC Faculty;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 FACULTY_ID                                NOT NULL NUMBER
 FACULTY_NAME                              NOT NULL VARCHAR2(100)
 DESIGNATION                                        VARCHAR2(50)
 EMAIL                                              VARCHAR2(100)
 DEPT_ID                                            NUMBER

SQL> CREATE TABLE Course (
  2      course_id NUMBER PRIMARY KEY,
  3      course_name VARCHAR2(100) NOT NULL,
  4      credits NUMBER(2),
  5      dept_id NUMBER,
  6      faculty_id NUMBER,
  7      CONSTRAINT fk_course_department
  8          FOREIGN KEY (dept_id)
  9          REFERENCES Department(dept_id),
 10      CONSTRAINT fk_course_faculty
 11          FOREIGN KEY (faculty_id)
 12          REFERENCES Faculty(faculty_id)
 13  );

Table created.

SQL> SELECT*FROM Course;

no rows selected

SQL> DESC Course;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COURSE_ID                                 NOT NULL NUMBER
 COURSE_NAME                               NOT NULL VARCHAR2(100)
 CREDITS                                            NUMBER(2)
 DEPT_ID                                            NUMBER
 FACULTY_ID                                         NUMBER


SQL> CREATE TABLE Student (
  2      student_id NUMBER PRIMARY KEY,
  3      student_name VARCHAR2(100) NOT NULL,
  4      date_of_birth DATE,
  5      gender VARCHAR2(10),
  6      contact_number VARCHAR2(15),
  7      dept_id NUMBER,
  8      CONSTRAINT fk_student_department
  9          FOREIGN KEY (dept_id)
 10          REFERENCES Department(dept_id)
 11  );

Table created.

SQL> SELECT*FROM Student;

no rows selected

SQL> DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUDENT_ID                                NOT NULL NUMBER
 STUDENT_NAME                              NOT NULL VARCHAR2(100)
 DATE_OF_BIRTH                                      DATE
 GENDER                                             VARCHAR2(10)
 CONTACT_NUMBER                                     VARCHAR2(15)
 DEPT_ID                                            NUMBER

SQL> CREATE TABLE Enrollment (
  2      student_id NUMBER,
  3      course_id NUMBER,
  4      semester NUMBER,
  5      grade VARCHAR2(5),
  6      CONSTRAINT pk_enrollment
  7          PRIMARY KEY (student_id, course_id),
  8      CONSTRAINT fk_enrollment_student
  9          FOREIGN KEY (student_id)
 10          REFERENCES Student(student_id),
 11      CONSTRAINT fk_enrollment_course
 12          FOREIGN KEY (course_id)
 13          REFERENCES Course(course_id)
 14  );

Table created.

SQL> SELECT*FROM Enrollment;

no rows selected

SQL> DESC Enrollment;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUDENT_ID                                NOT NULL NUMBER
 COURSE_ID                                 NOT NULL NUMBER
 SEMESTER                                           NUMBER
 GRADE                                              VARCHAR2(5)
