-- ==============================
-- PROBLEM STATEMENT
-- Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'.
-- Primary diagnosis is stored in the admissions table.
-- ==============================


-- QUERY
select patients.patient_id,first_name,last_name from patients join admissions on patients.patient_id=admissions.patient_id where admissions.diagnosis="Dementia";