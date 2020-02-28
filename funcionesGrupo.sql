--=============================================================--
SELECT SUM(salary)
FROM employees;

--=============================================================--

SELECT SUM(DISTINCT salary)
FROM employees;

--=============================================================--

SELECT SUM(commission_pct)
FROM employees;

--=============================================================--

SELECT AVG(salary)
FROM employees;

--=============================================================--

SELECT avg(DISTINCT salary)
FROM employees;

--=============================================================--

SELECT AVG(commission_pct)
FROM employees;

--=============================================================--

SELECT MIN(hire_date),
       MAX(hire_date)
FROM employees;

--=============================================================--

SELECT MIN(commission_pct),
       MAX(commission_pct)
FROM employees;

--=============================================================--

SELECT MIN(start_date),
       MAX(end_date)
FROM job_history;

--=============================================================--

SELECT MIN(job_id),
       MAX(job_id)
FROM employees;

--=============================================================--

SELECT COUNT(*)
FROM employees
WHERE department_id = 50;

--=============================================================--

SELECT COUNT(DISTINCT commission_pct)
FROM employees;

--=============================================================--

SELECT COUNT(commission_pct)
FROM employees
WHERE department_id = 80;

--=============================================================--

SELECT COUNT(*),
       COUNT(commission_pct)
FROM employees;

--=============================================================--

SELECT AVG(nvl(commission_pct, 0))
FROM employees;

--=============================================================--

SELECT round(AVG(salary), 3),
       MAX(salary),
       MIN(salary),
       SUM(salary)
FROM employees
WHERE job_id LIKE '%REP%';

--=============================================================--