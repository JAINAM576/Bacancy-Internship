-- ==============================
-- PROBLEM STATEMENT
-- Show the first_name, last_name, and height of the patient with the greatest height.
-- ==============================


-- QUERY
select first_name,last_name,height from patients where height=(select max(height) from patients);