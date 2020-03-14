--=============================================================--
SELECT location_id,
       department_name "Departamento",
       to_char(NULL) "LOCALIZATION_DEPOSITO"
FROM departments
UNION
SELECT location_id,
       to_char(NULL) "DEPARTMANETO",
       state_province
FROM locations;
--=============================================================--

SELECT employee_id,
       job_id,
       salary
FROM employees
UNION
SELECT employee_id,
       job_id,
       0
FROM job_history