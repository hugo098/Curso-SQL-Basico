--=============================================================--
SELECT last_name,
       job_id,
       salary,
       CASE job_id
           WHEN 'IT_PROG'    THEN
               1.10 * salary
           WHEN 'ST_CLERK'   THEN
               1.15 * salary
           WHEN 'SA_REP'     THEN
               1.20 * salary
           ELSE
               salary
       END AS "Salario Revisado"
FROM employees;

--=============================================================--

SELECT last_name,
       job_id,
       salary,
       decode(job_id, 
        'IT_PROG', 1.10 * salary, 
        'ST_CLERK', 1.15 * salary,
        'SA_REP', 1.20 * salary, 
        salary) AS "Salario Revisado"
FROM employees;