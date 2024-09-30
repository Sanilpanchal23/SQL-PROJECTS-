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

-- Insert a new record into the 'student' table with specific values for all columns, including 'age'.
INSERT INTO student VALUES(1, 'RICKY', 'LAW', 15);

-- Insert another record, but only specifying 'name' and 'degree'. 'student_id' will auto-increment, and 'age' will default to 0.
INSERT INTO student(name, degree) VALUES('Sunny', 'Computer Science');

-- Select all records from the 'student' table to view the current data.
SELECT * FROM student;

-- Update the 'age' and 'degree' for the student(s) where 'student_id' is 1 or 3.
-- 'age' will be set to 1 and 'degree' will be set to 'unknown'.
UPDATE student
SET age = 1, degree = 'unknown'
WHERE student_id = 1 OR student_id = 3;

-- Delete the record from the 'student' table where 'student_id' is 5 and 'degree' is NULL.
-- Note: 'degree = NULL' should be 'degree IS NULL' for proper NULL comparison in SQL.
DELETE FROM student
WHERE student_id = 5 AND degree IS NULL;
