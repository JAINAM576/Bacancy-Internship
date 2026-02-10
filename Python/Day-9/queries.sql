-- ==============================
-- Practice Exercises - Day 9
-- Author: Jainam Sanghavi
-- ==============================

-- Example Query 1
-- SELECT * FROM users;

-- Example Query 2
-- SELECT COUNT(*) AS total_users FROM users;


-- 1️⃣ Self JOIN
-- Find pairs of employees who share the same manager
SELECT
    e1.name AS employee_1,
    e2.name AS employee_2,
    e1.manager_id
FROM employees e1
JOIN employees e2
    ON e1.manager_id = e2.manager_id
   AND e1.employee_id < e2.employee_id;


-- 2️⃣ FULL OUTER JOIN
-- List all products and their orders (including products without orders)
SELECT p.product_name, o.order_id, o.order_total
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id

UNION

SELECT p.product_name, o.order_id, o.order_total
FROM products p
RIGHT JOIN orders o ON p.product_id = o.product_id;

-- 3️⃣ CROSS JOIN
-- Generate all possible pairs of customers and regions
SELECT
    c.customer_name,
    r.region_name
FROM customers c
CROSS JOIN regions r;


-- 4️⃣ JOIN + AGGREGATE
-- Average order amount for each product
SELECT
    p.product_name,
    AVG(o.order_total) AS average_order_amount
FROM products p
JOIN orders o
    ON p.product_id = o.product_id
GROUP BY p.product_name;


-- 5️⃣ Three-table JOIN
-- Detailed order summary (customer + product + total)
SELECT
    o.order_id,
    c.customer_name,
    p.product_name,
    o.order_date,
    o.order_total
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
JOIN products p
    ON o.product_id = p.product_id;
