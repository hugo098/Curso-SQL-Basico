--=============================================================--
SELECT employee_id,
       to_char(hire_date, 'mm/yy') AS "Mes de Ingreso"
FROM employees
WHERE last_name = 'Higgins';

--=============================================================--

SELECT employee_id,
       to_char(hire_date, 'fmDD MONTH YYYY') AS "Fecha de ingreso"
FROM employees
WHERE last_name = 'Higgins';

--=============================================================--

SELECT to_char(salary, '$99,999.00'),
       salary
FROM employees
WHERE last_name = 'Higgins';

--=============================================================--

SELECT last_name,
       to_char(hire_date, 'DD-MON-YYYY')
FROM employees
WHERE hire_date < TO_DATE('01-JAN-2002', 'DD-MON-YYYY');