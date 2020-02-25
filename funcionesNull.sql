--=============================================================--
SELECT first_name,
       length(first_name) "Expr1",
       last_name,
       length(first_name) "Expr2",
       nullif(length(first_name), length(last_name)) "Resultado"
FROM employees;

--=============================================================--

SELECT last_name,
       employee_id,
       coalesce(to_char(commission_pct, 'fm0.0'), to_char(manager_id), 'No tiene comisión ni manager') AS "Coalesce"
FROM employees;