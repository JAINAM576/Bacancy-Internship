-- ==============================
-- PROBLEM STATEMENT
-- Show first name, last name, and the full province name of each patient. Example: 'Ontario' instead of 'ON'
-- ==============================


-- QUERY
select patient.first_name,patient.last_name,province.province_name from patients as patient inner join province_names as province on patient.province_id=province.province_id;