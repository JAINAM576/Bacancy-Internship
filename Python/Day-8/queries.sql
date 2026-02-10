-- ==============================
-- Practice Exercises - Day 8
-- Author: Jainam Sanghavi
-- ==============================

-- Example Query 1
-- SELECT * FROM users;

-- Example Query 2
-- SELECT COUNT(*) AS total_users FROM users;


-- 1️⃣ Find all orders with their customer names
SELECT
    o.order_id,
    o.order_date,
    o.order_total,
    c.customer_name
FROM orders o
INNER JOIN customers c
    ON o.customer_id = c.customer_id;


-- 2️⃣ LEFT JOIN
-- List all products and their orders
SELECT
    p.product_id,
    p.product_name,
    o.order_id,
    o.order_total
FROM products p
LEFT JOIN orders o
    ON p.product_id = o.product_id;


-- 3️⃣ RIGHT JOIN
-- Find departments without any employees 
SELECT
    d.department_id,
    d.department_name
FROM employees e
RIGHT JOIN departments d
    ON e.department_id = d.department_id
WHERE e.employee_id IS NULL;


-- 4️⃣ FULL OUTER JOIN
-- List all authors and the books they’ve written
SELECT a.author_name, b.book_id, b.rating
FROM authors a
LEFT JOIN books b ON a.author_id = b.author_id
UNION
SELECT a.author_name, b.book_id, b.rating
FROM authors a
RIGHT JOIN books b ON a.author_id = b.author_id;


-- 5️⃣ Modified employees ↔ departments query (with extra columns)
-- a) Include employee age, salary, department name, manager
SELECT
    e.employee_id,
    e.name,
    e.age,
    e.salary,
    d.department_name,
    e.manager_id
FROM employees e
LEFT JOIN departments d
    ON e.department_id = d.department_id;

-- b) Department-wise employee count and total salary
SELECT
    d.department_name,
    COUNT(e.employee_id) AS employee_count,
    SUM(e.salary) AS total_salary
FROM departments d
LEFT JOIN employees e
    ON d.department_id = e.department_id
GROUP BY d.department_name;
