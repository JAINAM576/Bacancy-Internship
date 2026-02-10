-- ==============================
-- Practice Exercises - Day 11
-- Author: Jainam Sanghavi
-- ==============================

-- Example Query 1
-- SELECT * FROM users;

-- Example Query 2
-- SELECT COUNT(*) AS total_users FROM users;

-- 1️⃣ Unique customers who placed orders in either year
SELECT DISTINCT customer_id
FROM orders
WHERE YEAR(order_date) = 2023

UNION

SELECT DISTINCT customer_id
FROM orders
WHERE YEAR(order_date) = 2024;



-- 2️⃣ Customers who placed orders in both years
-- (INTERSECT → common rows only)

SELECT customer_id
FROM orders
WHERE YEAR(order_date) = 2023

INTERSECT

SELECT customer_id
FROM orders
WHERE YEAR(order_date) = 2024;


-- 3️⃣ Products in products_2023 but not in products_2024
-- (EXCEPT / MINUS → difference)
SELECT DISTINCT product_id
FROM orders
WHERE YEAR(order_date) = 2023

EXCEPT

SELECT DISTINCT product_id
FROM orders
WHERE YEAR(order_date) = 2024;


-- 4️⃣ Combine two sales tables including duplicates
SELECT salesperson, region, sales_amount
FROM sales
WHERE region = 'North'

UNION ALL

SELECT salesperson, region, sales_amount
FROM sales
WHERE region = 'South';



-- 5️⃣ Employees working in two specific projects
-- (INTERSECT)
-- Assume table: employee_projects(employee_id, project_id)

SELECT employee_id
FROM employees
WHERE manager_id IN (1, 3)
GROUP BY employee_id
HAVING COUNT(DISTINCT manager_id) = 2;