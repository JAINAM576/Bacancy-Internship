-- ==============================
-- PROBLEM STATEMENT
-- Show the city, company_name, contact_name of all customers from cities which contains the letter 'L' in the city name, sorted by contact_name
-- ==============================


-- QUERY
select city,company_name,contact_name from customers where city like '%L%' order by contact_name;