-- ==============================
-- PROBLEM STATEMENT
-- Show the average unit price rounded to 2 decimal places, the total units in stock, total discontinued products from the products table.
-- ==============================


-- QUERY
select Round(avg(unit_price),2),sum(units_in_stock),sum(discontinued) from products;
