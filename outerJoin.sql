--=============================================================--
SELECT *
FROM employees;--107

--=============================================================--

SELECT *
FROM departments;--27

--=============================================================--

SELECT e.last_name,
       d.department_id,
       d.department_name
FROM employees     e
LEFT OUTER JOIN departments   d ON ( e.department_id = d.department_id );

--=============================================================--

SELECT e.last_name,
       d.department_id,
       d.department_name
FROM employees     e
RIGHT OUTER JOIN departments   d ON ( e.department_id = d.department_id );

--=============================================================--

SELECT e.last_name,
       d.department_id,
       d.department_name
FROM employees     e
FULL OUTER JOIN departments   d ON ( e.department_id = d.department_id );