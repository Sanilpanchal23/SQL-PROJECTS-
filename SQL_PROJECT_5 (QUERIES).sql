-- Drop the existing 'student' table if it exists, removing all data and structure.
DROP TABLE student;

-- Create a new 'student' table with the following columns:
-- 'student_id' is an integer with auto-increment, serving as the primary key.
-- 'name' is a string (maximum 20 characters) and must be provided (NOT NULL).
-- 'degree' is a string (maximum 20 characters) and must be unique across all records.
-- 'age' is an integer that defaults to 0 if not provided during insertion.
CREATE TABLE student(
    student_id INT AUTO_INCREMENT,  -- Auto-incrementing ID for each student
    name VARCHAR(20) NOT NULL,      -- Name is required and cannot be NULL
    degree VARCHAR(20) UNIQUE,      -- Degree must be unique across students
    age INT DEFAULT 0,              -- Age defaults to 0 if not provided
    PRIMARY KEY(student_id)         -- 'student_id' is the primary key
);

-- Insert a record with all fields specified (student_id, name, degree, and age).
INSERT INTO student VALUES(1, 'RICKY', 'LAW', 15);

-- Insert a record where only the 'name' and 'degree' are specified. 
-- 'student_id' will auto-increment, and 'age' will default to 0.
INSERT INTO student(name, degree) VALUES('Sunny', 'Computer Science');

-- Select the 'name' of all students, ordered by 'student_id' in descending order.
-- Change to 'ASC' for ascending order if needed.
SELECT student.name
FROM student
ORDER BY student_id DESC;  -- OR ASC for ascending order

-- Select all columns from the student with the highest 'student_id' (the last inserted record).
SELECT *
FROM student 
ORDER BY student_id DESC
LIMIT 1;  -- Limits the result to only 1 record

-- Select all columns for students with degrees either in 'Computer Science' or 'Chemistry'.
SELECT *
FROM student 
WHERE degree = 'Computer Science' OR degree = 'Chemistry';

-- Select all columns for students whose names are in the specified list ('Sunny', 'Ricky', 'Dad', 'Mum').
SELECT *
FROM student 
WHERE name IN('Sunny', 'Ricky', 'Dad', 'Mum');
