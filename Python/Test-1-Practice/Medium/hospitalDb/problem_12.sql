-- ==============================
-- PROBLEM STATEMENT
-- Show all the columns from admissions where the patient was admitted and discharged on the same day.
-- ==============================


-- QUERY
select * from admissions where admission_date=discharge_date and admission_date;
