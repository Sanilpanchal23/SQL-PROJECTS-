-- Create a new table named 'student' with three columns:
-- 'student_id', 'name', and 'degree'.
-- The 'student_id' column is set as the primary key to uniquely identify each student.
CREATE TABLE student(
    student_id INT,           -- Unique identifier for each student
    name VARCHAR(20),         -- Name of the student (maximum 20 characters)
    degree VARCHAR(20),       -- Degree program the student is enrolled in
    PRIMARY KEY(student_id)   -- Setting 'student_id' as the primary key
);

-- Select all records from the 'student' table (which is currently empty).
SELECT * FROM student;

-- Insert a record into the 'student' table with complete data.
INSERT INTO student VALUES(1,'Sunny','Computer Science');

-- Insert another record into the 'student' table with complete data.
INSERT INTO student VALUES(2,'Ricky','Law');

-- Insert a record into the 'student' table with only 'student_id' and 'name'.
-- This requires the 'degree' column to be nullable or have a default value.
INSERT INTO student(student_id, name) VALUES(3,'Dhylan'); -- if you don't have data for all columns, specify the columns
