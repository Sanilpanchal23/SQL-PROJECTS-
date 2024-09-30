-- Create a new table named 'student' with three columns:
-- 'student_id', 'name', and 'degree'.
-- The 'student_id' column is set as the primary key to uniquely identify each student.
CREATE TABLE student(
    student_id INT,           -- Unique identifier for each student
    name VARCHAR(20),         -- Name of the student (maximum 20 characters)
    degree VARCHAR(20),       -- Degree program the student is enrolled in
    PRIMARY KEY(student_id)   -- Setting 'student_id' as the primary key
);

-- Display the structure of the 'student' table including its columns, data types, and other metadata.
DESCRIBE student;

-- Modify the 'student' table to add a new column 'grade', which is of type DECIMAL.
-- The 'grade' column will store values with a maximum of 4 digits in total, 
-- and 2 digits after the decimal point (e.g., 98.75 or 85.50).
ALTER TABLE student ADD grade DECIMAL(4,2);

-- Alter the 'student' table to drop (remove) the 'name' column, as it is no longer needed.
ALTER TABLE student DROP COLUMN name;

-- Drop (delete) the 'student' table from the database entirely, removing all its data and structure.
DROP TABLE student;
