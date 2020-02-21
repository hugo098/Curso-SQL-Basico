--=============================================================--
SELECT *
FROM departments;

--=============================================================--

SELECT department_name   AS "Nombre del departamento",
       location_id       "ID de localización"
FROM departments;

--=============================================================--

SELECT last_name,
       salary,
       salary + 30
FROM employees;

--=============================================================--

SELECT last_name,
       salary,
       12 * salary + 100
FROM employees;

--=============================================================--

SELECT last_name,
       salary,
       12 * ( salary + 100 )
FROM employees;

--=============================================================--

SELECT last_name,
       12 * salary * commission_pct
FROM employees;

--=============================================================--

SELECT last_name,
       job_id,
       salary,
       commission_pct
FROM employees;

--=============================================================--

SELECT last_name        AS nombre,
       commission_pct   comm
FROM employees;

--=============================================================--

SELECT last_name AS "Nombre",
       salary * 12 "Salario Anual"
FROM employees;

--=============================================================--

SELECT last_name || job_id AS "Empleado"
FROM employees;

--=============================================================--

SELECT last_name
       || ' es un '
       || job_id AS "Cargo del empleado"
FROM employees;

--=============================================================--

SELECT last_name
       || q'[ Department's Manager id: ]'
       || manager_id AS "Department and Manager"
FROM employees;

--=============================================================--

SELECT department_id
FROM employees;

--=============================================================--

SELECT DISTINCT department_id
FROM employees;

--=============================================================--

DESCRIBE departments;

--=============================================================--

DESCRIBE employees;

--=============================================================--

SELECT 1 + 1
FROM dual;

--=============================================================--

SELECT 1
FROM dual;

--=============================================================--

SELECT user
FROM dual;

--=============================================================--

SELECT sysdate
FROM dual;

--=============================================================--

DESCRIBE dual;

--=============================================================--

select start_date, end_date, end_date-start_date from job_history;


