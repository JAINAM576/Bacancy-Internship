-- ==============================
-- Practice Exercises - Day 3
-- Author: Jainam Sanghavi
-- ==============================

-- -- Example Query 1
-- SELECT * FROM users;

-- -- Example Query 2
-- SELECT COUNT(*) AS total_users FROM users;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    department VARCHAR(50)
);

INSERT INTO employees (id, name, age, department)
VALUES
(1, 'John', 28, 'HR'),
(2, 'Aarav', 24, 'IT'),
(3, 'Kiran', 35, 'Marketing'),
(4, 'Rohan', NULL, 'IT'),
(5, 'Simran', 32, 'Finance'),
(6, 'Aman', 29, 'Marketing'),
(7, 'Neel', 40, 'Operations');


-- 1️⃣ Retrieve all employees whose age is less than 30
SELECT *
FROM employees
WHERE age < 30;

-- 2️⃣ Find employees in the Marketing department OR aged 35 and above
SELECT *
FROM employees
WHERE department = 'Marketing'
   OR age >= 35;

-- 3️⃣ Retrieve employees whose names end with the letter 'n'
SELECT *
FROM employees
WHERE name LIKE '%n';

-- 4️⃣ List employees who do not belong to the IT department
SELECT *
FROM employees
WHERE department <> 'IT';

-- 5️⃣ Retrieve employees with non-NULL age values
SELECT *
FROM employees
WHERE age IS NOT NULL;
