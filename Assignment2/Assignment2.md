# DBMS SQL Lab – College Database System

This repository contains the Database Management System (DBMS) assignment 
based on designing and implementing a College Database.

The project includes:
- ER Diagram (Part A)
- Relational Tables (Part B)
- SQL Implementation (Part C)


## Student Information

**Name:**Sarita Kumari 
**Course:** B.Tech (CSE(AL&ML) 
**Subject:** Database Management System  
---

# Part A – ER Diagram

## Objective
To design an Entity-Relationship (ER) model representing a College Database system.

## Entities Identified

1. **Department**
   - Dept_ID (Primary Key)
   - Dept_Name
   - Office_Location

2. **Student**
   - Student_ID (Primary Key)
   - Name
   - Date_of_Birth
   - Gender
   - Contact_Number
   - Dept_ID (Foreign Key)

3. **Faculty**
   - Faculty_ID (Primary Key)
   - Name
   - Designation
   - Email
   - Dept_ID (Foreign Key)

4. **Course**
   - Course_ID (Primary Key)
   - Course_Name
   - Credits
   - Dept_ID (Foreign Key)
   - Faculty_ID (Foreign Key)

5. **Enrollment**
   - Enrollment_ID (Primary Key)
   - Student_ID (Foreign Key)
   - Course_ID (Foreign Key)
   - Semester
   - Grade

## Relationships & Cardinality

- One Department → Many Students (1:M)
- One Department → Many Faculty (1:M)
- One Department → Many Courses (1:M)
- One Faculty → Many Courses (1:M)
- Student ↔ Course (M:N resolved using Enrollment)

---

# Part B – Relational Tables

The ER Diagram was converted into relational tables as follows:

### Department
Primary Key: Dept_ID

### Student
Primary Key: Student_ID  
Foreign Key: Dept_ID references Department(Dept_ID)

### Faculty
Primary Key: Faculty_ID  
Foreign Key: Dept_ID references Department(Dept_ID)

### Course
Primary Key: Course_ID  
Foreign Keys:
- Dept_ID references Department(Dept_ID)
- Faculty_ID references Faculty(Faculty_ID)

### Enrollment
Primary Key: Enrollment_ID  
Foreign Keys:
- Student_ID references Student(Student_ID)
- Course_ID references Course(Course_ID)

---

# Part C – SQL Implementation

## Objective

This project implements a University Database schema using SQL.
It includes tables for Departments, Faculty, Courses, Students, and Enrollments with proper **Primary Key** and **Foreign Key** constraints.

---

## Tables Created

### 1. Department

Stores information about academic departments.

| Column          | Data Type     | Description          |
| --------------- | ------------- | -------------------- |
| dept_id         | NUMBER (PK)   | Unique department ID |
| dept_name       | VARCHAR2(100) | Department name      |
| office_location | VARCHAR2(50)  | Office location      |

---

### 2. Faculty

Stores faculty member details.

| Column       | Data Type     | Description            |
| ------------ | ------------- | ---------------------- |
| faculty_id   | NUMBER (PK)   | Unique faculty ID      |
| faculty_name | VARCHAR2(100) | Faculty name           |
| designation  | VARCHAR2(50)  | Faculty designation    |
| email        | VARCHAR2(100) | Faculty email (Unique) |
| dept_id      | NUMBER (FK)   | Department reference   |

---

### 3. Course

Stores course information.

| Column      | Data Type     | Description                    |
| ----------- | ------------- | ------------------------------ |
| course_id   | NUMBER (PK)   | Unique course ID               |
| course_name | VARCHAR2(100) | Course name                    |
| credits     | NUMBER(2)     | Course credits                 |
| dept_id     | NUMBER (FK)   | Department offering the course |
| faculty_id  | NUMBER (FK)   | Faculty teaching the course    |

---

### 4. Student

Stores student details.

| Column         | Data Type     | Description        |
| -------------- | ------------- | ------------------ |
| student_id     | NUMBER (PK)   | Unique student ID  |
| student_name   | VARCHAR2(100) | Student name       |
| date_of_birth  | DATE          | Date of birth      |
| gender         | VARCHAR2(10)  | Gender             |
| contact_number | VARCHAR2(15)  | Contact number     |
| dept_id        | NUMBER (FK)   | Student department |

---

### 5. Enrollment

Stores enrollment details of students in courses.

| Column     | Data Type       | Description    |
| ---------- | --------------- | -------------- |
| student_id | NUMBER (PK, FK) | Student ID     |
| course_id  | NUMBER (PK, FK) | Course ID      |
| semester   | NUMBER          | Semester       |
| grade      | VARCHAR2(5)     | Grade obtained |

---

## Features

* Proper relational schema design
* Use of **Primary Keys** and **Foreign Keys**
* Ensures referential integrity
* Supports student-course enrollment tracking

