--=============================================================--
SELECT last_name,
       upper(concat(substr(last_name, 1, 8), '_US'))
FROM employees
WHERE department_id = 60;

--=============================================================--

SELECT to_char(round((salary / 7), 2), '99G999D99') AS "Salario Formateado"
FROM employees;