-- Drop the existing 'student' table if it exists.
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

-- Select all records from the 'student' table (currently empty after creation).
SELECT * FROM student;

-- Insert a new record into the 'student' table specifying only 'name' and 'degree'.
-- 'age' will be automatically set to the default value (0).
INSERT INTO student(name, degree) VALUES('Sunny', 'Computer Science'); 
