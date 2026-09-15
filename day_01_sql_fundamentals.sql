-- ==========================================
-- DAY 01: SQL FUNDAMENTALS & DATA FILTERING
-- Data Analyst SQL Learning
-- ==========================================


-- 1. Display all students
SELECT *
FROM students;


-- 2. Display selected columns
SELECT name, branch, cgpa
FROM students;


-- 3. Show all CSD students
SELECT name, branch, cgpa
FROM students
WHERE branch = 'CSD';


-- 4. Show students whose CGPA is greater than or equal to 9.0
SELECT student_id, name, cgpa
FROM students
WHERE cgpa >= 9.0;


-- 5. Show students whose CGPA is between 9.0 and 9.5
SELECT student_id, name, cgpa
FROM students
WHERE cgpa BETWEEN 9.0 AND 9.5;


-- 6. Show students belonging to CSD or EEE
SELECT student_id, name, branch
FROM students
WHERE branch = 'CSD' OR branch = 'EEE';


-- 7. Alternative: Use IN for multiple values
SELECT student_id, name, branch
FROM students
WHERE branch IN ('CSD', 'EEE');


-- 8. Show students whose CGPA is NOT between 9.0 and 9.5
SELECT name, branch, cgpa
FROM students
WHERE cgpa NOT BETWEEN 9.0 AND 9.5;
