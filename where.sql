--=============================================================--
SELECT last_name,
       job_id,
       department_id
FROM employees
WHERE last_name = 'Whalen';

--=============================================================--

SELECT last_name,
       job_id,
       department_id
FROM employees
WHERE hire_date = '17-JUN-03';

--=============================================================--

SELECT *
FROM employees
WHERE department_id = 60;

--=============================================================--

SELECT first_name   AS "Nombre",
       last_name    AS "Apellido",
       salary       AS "Salario"
FROM employees
WHERE salary BETWEEN 9000 AND 24000;

--=============================================================--

SELECT first_name   AS "Nombre",
       last_name    AS "Apellido",
       salary       AS "Salario"
FROM employees
WHERE salary IN (
    13809.2,
    19550,
    10350,
    9200
);

--=============================================================--

SELECT first_name
FROM employees
WHERE first_name LIKE '%o%';


--=============================================================--

SELECT job_id
FROM employees
WHERE job_id LIKE 'SH\_%' ESCAPE '\';

--=============================================================--

SELECT last_name,
       manager_id
FROM employees
WHERE manager_id IS NOT NULL;

--=============================================================--

SELECT employee_id,
       last_name,
       job_id,
       salary
FROM employees
WHERE salary >= 10000
      OR job_id LIKE '%MAN%';
      
--=============================================================--

SELECT last_name,
       job_id
FROM employees
WHERE job_id NOT IN (
    'IT_PROG',
    'ST_CLARK',
    'SA_REP'
);

--=============================================================--

SELECT last_name,
       job_id,
       department_id,
       hire_date
FROM employees
ORDER BY hire_date DESC;

--=============================================================--

SELECT employee_id,
       last_name,
       salary * 12 AS "Anual"
FROM employees
ORDER BY "Anual" ASC;

--=============================================================--

SELECT last_name,
       job_id,
       department_id,
       hire_date
FROM employees
ORDER BY 3;

--=============================================================--

SELECT last_name,
       job_id,
       department_id,
       salary
FROM employees
ORDER BY department_id,
         salary DESC;