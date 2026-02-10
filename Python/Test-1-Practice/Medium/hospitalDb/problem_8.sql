-- ==============================
-- PROBLEM STATEMENT
-- Show how many patients have a birth_date with 2010 as the birth year.
-- ==============================


-- QUERY
select count(patient_id) from patients where year(birth_date)=2010;