-- ==============================
-- Practice Exercises - Day 5
-- Author: Jainam Sanghavi
-- ==============================

-- Example Query 1
-- SELECT * FROM users;

-- Example Query 2
-- SELECT COUNT(*) AS total_users FROM users;


-- 1️⃣ Total number of students in each course
SELECT
    course,
    COUNT(*) AS total_students
FROM students
GROUP BY course;

-- 2️⃣ Average salary of employees in each department
SELECT
    department_id,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department_id;

-- 3️⃣ Minimum and maximum price of products in each category
SELECT
    category,
    MIN(price) AS min_price,
    MAX(price) AS max_price
FROM products
GROUP BY category;


-- 4️⃣ Number of orders placed by each customer
SELECT
    customer_id,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id;
