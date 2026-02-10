-- ==============================
-- Practice Exercises - Day 6
-- Author: Jainam Sanghavi
-- ==============================

-- Example Query 1
-- SELECT * FROM users;

-- Example Query 2
-- SELECT COUNT(*) AS total_users FROM users;

-- 1️⃣ Customers whose total order value exceeds $5000
SELECT
    customer_id,
    SUM(order_total) AS total_order_value
FROM orders
GROUP BY customer_id
HAVING SUM(order_total) > 5000;


-- 2️⃣ Products where the average price is greater than $50
SELECT
    category,
    AVG(price) AS average_price
FROM products
GROUP BY category
HAVING AVG(price) > 50;

-- 3️⃣ Modified versions with extra conditions / aggregates
-- a) Customers with more than 2 orders AND total value > $5000
SELECT
    customer_id,
    COUNT(order_id) AS total_orders,
    SUM(order_total) AS total_value
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 2
   AND SUM(order_total) > 5000;


-- b) Product categories with avg price > $50 AND more than 3 products
SELECT
    category,
    AVG(price) AS avg_price,
    COUNT(product_id) AS product_count
FROM products
GROUP BY category
HAVING AVG(price) > 50
   AND COUNT(product_id) > 3;


-- 4️⃣ Authors with more than 3 books and average rating above 4.5
SELECT
    a.author_name,
    COUNT(b.book_id) AS total_books,
    AVG(b.rating) AS avg_rating
FROM authors a
JOIN books b
    ON a.author_id = b.author_id
GROUP BY a.author_name
HAVING COUNT(b.book_id) > 3
   AND AVG(b.rating) > 4.5;

-- 5️⃣ Departments where total employee salary exceeds $100,000
SELECT
    d.department_name,
    SUM(e.salary) AS total_salary
FROM departments d
JOIN employees e
    ON d.department_id = e.department_id
GROUP BY d.department_name
HAVING SUM(e.salary) > 100000;
