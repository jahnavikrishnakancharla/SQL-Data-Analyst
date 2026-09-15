-- ==========================================
-- DAY 02: SQL SORTING, LIMITING & PATTERN MATCHING
-- Data Analyst SQL Learning
-- ==========================================


-- 1. Sort all students by CGPA in ascending order
-- Lowest CGPA → Highest CGPA

SELECT *
FROM students
ORDER BY cgpa ASC;


-- 2. Sort all students by CGPA in descending order
-- Highest CGPA → Lowest CGPA

SELECT *
FROM students
ORDER BY cgpa DESC;


-- 3. Show CSD students from highest CGPA to lowest CGPA

SELECT student_id, name, branch, cgpa
FROM students
WHERE branch = 'CSD'
ORDER BY cgpa DESC;


-- 4. Show the top 2 students with the highest CGPA

SELECT student_id, name, cgpa
FROM students
ORDER BY cgpa DESC
LIMIT 2;


-- 5. Show unique branches

SELECT DISTINCT branch
FROM students;


-- 6. Show students whose name ends with 'k'

SELECT name, branch, cgpa
FROM students
WHERE name LIKE '%k';


-- 7. Show students whose name contains the letter 'A'

SELECT name, branch, cgpa
FROM students
WHERE name LIKE '%A%';


-- 8. Combined query:
-- Show top 2 CSD students whose name contains 'A'
-- Order them by highest CGPA

SELECT student_id, name, branch, cgpa
FROM students
WHERE branch = 'CSD'
  AND name LIKE '%A%'
ORDER BY cgpa DESC
LIMIT 2;
