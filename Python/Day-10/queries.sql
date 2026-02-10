-- ==============================
-- Practice Exercises - Day 10
-- Author: Jainam Sanghavi
-- ==============================

-- Example Query 1
-- SELECT * FROM users;

-- Example Query 2
-- SELECT COUNT(*) AS total_users FROM users;

-- 1️⃣ Highest-paid employee in each department (subquery)
SELECT
    e.name,
    e.department_id,
    e.salary
FROM employees e
WHERE e.salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = e.department_id
);

-- 2️⃣ Customers who placed more orders than the average number of orders
SELECT
    customer_id,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > (
    SELECT AVG(order_count)
    FROM (
        SELECT COUNT(order_id) AS order_count
        FROM orders
        GROUP BY customer_id
    ) avg_orders
);

-- 3️⃣ Employees earning more than their department’s average salary
SELECT
    e.name,
    e.salary,
    e.department_id
FROM employees e
WHERE e.salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
);

-- 4️⃣ Products priced higher than the average product price
SELECT
    product_name,
    price
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
);

-- 5️⃣ Orders with total value greater than the average order value
SELECT
    order_id,
    customer_id,
    order_total
FROM orders
WHERE order_total > (
    SELECT AVG(order_total)
    FROM orders
);
