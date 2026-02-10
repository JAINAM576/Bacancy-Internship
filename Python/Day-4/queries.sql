-- ==============================
-- Practice Exercises - Day 4
-- Author: Jainam Sanghavi
-- ==============================

-- -- Example Query 1
-- SELECT * FROM users;

-- -- Example Query 2
-- SELECT COUNT(*) AS total_users FROM users;


-- 1️⃣ Retrieve all employees and sort by name (ascending)
SELECT *
FROM employees
ORDER BY name ASC;


-- 2️⃣ Sort the employees table by department (descending)
SELECT *
FROM employees
ORDER BY department DESC;

-- 3️⃣ Sort by age (ascending) and then by department (alphabetical)
SELECT *
FROM employees
ORDER BY age ASC, department ASC;

-- 4️⃣ Create a query to sort a new table products by price in descending order and stock_quantity in ascending order.
SELECT *
FROM products
ORDER BY price DESC, stock_quantity ASC;
