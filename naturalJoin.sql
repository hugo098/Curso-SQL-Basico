--=============================================================--
SELECT regions.region_name,
       country_name
FROM regions,
     countries
WHERE regions.region_id = countries.region_id;

--=============================================================--

SELECT last_name,
       department_name
FROM employees,
     departments
WHERE employees.department_id = departments.department_id;

--=============================================================--

SELECT *
FROM locations
NATURAL JOIN countries;

--=============================================================--

SELECT *
FROM locations,
     countries
WHERE locations.country_id = countries.country_id;

--=============================================================--

select * from jobs natural join countries;