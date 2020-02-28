--=============================================================--
SELECT department_id
FROM employees
WHERE commission_pct IS NOT NULL;

--=============================================================--

SELECT department_id,
       SUM(commission_pct)
FROM employees
WHERE commission_pct IS NOT NULL
GROUP BY department_id;

--=============================================================--

SELECT department_id,
       job_id
FROM employees
WHERE commission_pct IS NOT NULL;

--=============================================================--

SELECT department_id,
       job_id,
       SUM(commission_pct)
FROM employees
WHERE commission_pct IS NOT NULL
GROUP BY department_id,
         job_id;
         
--=============================================================--

SELECT department_id,
       COUNT(*)
FROM job_history
WHERE department_id IN (
    50,
    60,
    80,
    110
)
GROUP BY department_id;

--=============================================================--

SELECT department_id,
       COUNT(*)
FROM job_history
WHERE department_id IN (
    50,
    60,
    80,
    110
)
GROUP BY department_id
HAVING COUNT(*) > 1;