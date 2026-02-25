# Student Management System

**Short Description:**  
A simple **Student Management System** built using Oracle SQL to manage **Students, Faculty, Courses, and Enrollments**.  
Supports queries for filtering, sorting, and calculating fields like Age, Birth Year, and Email Domain.

---

## Table of Contents
1. [Tables](#tables)
2. [Sample Queries](#sample-queries)
3. [Features](#features)
4. [Technologies](#technologies)
5. [Setup Instructions](#setup-instructions)
6. [Usage](#usage)
7. [Contributing](#contributing)
8. [License](#license)

---

## Tables

### Student
| Column Name      | Type          | Notes                |
|-----------------|---------------|--------------------|
| STUDENT_ID       | NUMBER       | Primary Key        |
| STUDENT_NAME     | VARCHAR2(100)| Full name          |
| DATE_OF_BIRTH    | DATE         | DOB                |
| GENDER           | VARCHAR2(10) | Male / Female      |
| CONTACT_NUMBER   | VARCHAR2(15) | Mobile number      |
| DEPT_ID          | NUMBER       | Department ID      |

### Faculty
| Column Name      | Type          | Notes                |
|-----------------|---------------|--------------------|
| FACULTY_ID       | NUMBER       | Primary Key        |
| FACULTY_NAME     | VARCHAR2(100)| Full name          |
| DESIGNATION      | VARCHAR2(50) | e.g., Professor     |
| EMAIL            | VARCHAR2(100)| Email ID           |
| DEPT_ID          | NUMBER       | Department ID      |

### Course
| Column Name      | Type          | Notes                |
|-----------------|---------------|--------------------|
| COURSE_ID        | NUMBER       | Primary Key        |
| COURSE_NAME      | VARCHAR2(100)| Name of course     |
| CREDITS          | NUMBER       | Credit points      |

### Enrollment
| Column Name      | Type         | Notes                   |
|-----------------|--------------|------------------------|
| STUDENT_ID       | NUMBER       | Foreign Key (Student)  |
| COURSE_ID        | NUMBER       | Foreign Key (Course)   |
| SEMESTER         | NUMBER       | Semester number        |
| GRADE            | VARCHAR2(2)  | Grade e.g., A, B+      |

---

## Sample Queries

### Student Table
- Show all students:

```sql
SELECT * FROM Student;

### Filter by Department 1:
SELECT * FROM Student WHERE DEPT_ID = 1;

## Order by Name (A-Z):
SELECT * FROM Student ORDER BY STUDENT_NAME ASC;

## Order by DOB (latest first):
SELECT * FROM Student ORDER BY DATE_OF_BIRTH DESC;

## Top 3 students:
SELECT * FROM Student WHERE ROWNUM <= 3;

## Calculate Age:
SELECT STUDENT_NAME AS Name,
       FLOOR(MONTHS_BETWEEN(SYSDATE, DATE_OF_BIRTH)/12) AS Age
FROM Student;

## Get Birth Year:
SELECT STUDENT_NAME AS Name,
       EXTRACT(YEAR FROM DATE_OF_BIRTH) AS Birth_Year
FROM Student;

### Faculty Table
## Show all faculty:
SELECT * FROM Faculty;

## Filter by Department 2:
SELECT * FROM Faculty WHERE DEPT_ID = 2;

## Order by Designation:
SELECT * FROM Faculty ORDER BY Designation ASC;

## Email Domain:
SELECT FACULTY_NAME AS Name,
       SUBSTR(EMAIL, INSTR(EMAIL,'@') + 1) AS Email_Domain
FROM Faculty;

### Course Table
## Show all courses:
SELECT * FROM Course;

## Order by Credits (high → low):
SELECT * FROM Course ORDER BY Credits DESC;

## Top 5 courses:
SELECT * FROM Course WHERE ROWNUM <= 5;

## Add 1 to Credits:
SELECT COURSE_NAME AS CourseName,
       CREDITS + 1 AS Updated_Credits
FROM Course;

### Enrollment Table
## Show all enrollments:
SELECT STUDENT_ID AS StudentID,
       COURSE_ID AS CourseID,
       SEMESTER AS Semester,
       GRADE AS Final_Grade

## FROM Enrollment;
Manage Students, Faculty, Courses, and Enrollments

Filter by Department, Semester, or Grade

Sort by Name, DOB, Designation, or Credits

Calculate Age, Birth Year, and Email Domain

Update and manipulate Credits 

## Submitted By

Name: Sarita Kumari
Branch: CSE(AI&ML)
Reg No: 23157128024

