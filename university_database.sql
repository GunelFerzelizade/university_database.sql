-- ===============================
-- SQL TASK 1: University Database
-- ===============================

-- 1) Create and use database
CREATE DATABASE IF NOT EXISTS university_db;
USE university_db;

-- 2) Create students table
CREATE TABLE IF NOT EXISTS students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    score INT,
    age INT,
    email VARCHAR(100)
);

-- 3) Insert sample data (8 rows)
INSERT INTO students (name, score, age, email) VALUES
('Gunel', 92, 25, 'gunel@gmail.com'),
('Aysel', 88, 24, 'aysel@gmail.com'),
('Anar', 75, 26, 'anar@gmail.com'),
('Maryam', 84, 28, 'maryam@gmail.com'),
('Sabina', 69, 30, 'sabina@gmail.com'),
('Ayan', 81, 23, 'ayan@gmail.com'),
('Ali', 90, 27, 'ali@gmail.com'),
('Hasan', 65, 29, 'hasan@gmail.com');

-- 4) Show only name and score
SELECT name, score FROM students;

-- 5) Students with score greater than 80
SELECT * 
FROM students
WHERE score > 80;

-- 6) Order students by score (DESC)
SELECT * 
FROM students
ORDER BY score DESC;

-- 7) Top 3 students (name and email)
SELECT name, email
FROM students
ORDER BY score DESC
LIMIT 3;

-- 8) Delete students with score less than 75
DELETE FROM students
WHERE score < 75;
