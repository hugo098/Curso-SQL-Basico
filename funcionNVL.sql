--=============================================================--
SELECT last_name,
       salary,
       nvl(commission_pct, 0),
       ( salary * 12 ) + ( salary * 12 * nvl(commission_pct, 0) ) salario_anual
FROM employees;

--=============================================================--

SELECT last_name,
       salary,
       commission_pct,
       nvl2(commission_pct, 'SAL+COM', 'SALARIO') AS "Entrada"
FROM employees;