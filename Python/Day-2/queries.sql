-- ==============================
-- Practice Exercises - Day 2
-- Author: Jainam Sanghavi
-- ==============================




-- 1.Write a CREATE TABLE statement to create a new table named products with the following structure:
-- product_id (integer, primary key)
-- product_name (string, maximum 50 characters, cannot be null)
-- price (decimal with 2 decimal places)
-- stock_quantity (integer)

CREATE TABLE IF NOT EXISTS products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2),
    stock_quantity INT
);


CREATE TABLE IF NOT EXISTS students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    enrollment_date DATE
);

-- insert sample data to students table
INSERT INTO students (student_id, name, age, enrollment_date)
VALUES
(1, 'Amit Sharma', 20, '2024-06-01'),
(2, 'Neha Patel', 22, '2024-06-05'),
(3, 'Rahul Mehta', 21, '2024-06-10');


-- 3️⃣ Retrieve name and department from employees Table
SELECT name, department
FROM employees;

-- 4️⃣ Retrieve All Rows from students Table
SELECT *
FROM students;
