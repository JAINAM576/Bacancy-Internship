-- ==============================
-- PROBLEM STATEMENT
-- Show all the even numbered Order_id from the orders table
-- ==============================


-- QUERY
select order_id from orders where order_id%2=0;