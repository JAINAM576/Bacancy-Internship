
-- ==============================
-- PROBLEM STATEMENT
--  Show unique birth years from patients and order them by ascending.
-- ==============================


-- QUERY
select distinct year(birth_date) as birth_date from patients order by birth_date ;




-- important point

-- GROUP BY only ensures uniqueness.
-- SQL does not guarantee ordering unless ORDER BY is explicitly used.
-- Some systems like MySQL may return grouped results sorted, but relying on that is unsafe.