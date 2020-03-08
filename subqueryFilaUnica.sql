--=============================================================--
SELECT last_name,
       salary,
       job_id
FROM employees
WHERE salary > (
    SELECT salary
    FROM employees
    WHERE last_name = 'Abel'
);

--=============================================================--

SELECT last_name,
       job_id,
       salary
FROM employees
WHERE job_id = (
    SELECT job_id
    FROM employees
    WHERE last_name = 'Tucker'
)
      AND salary > (
    SELECT salary
    FROM employees
    WHERE last_name = 'Tucker'
);

--=============================================================--

SELECT last_name,
       job_id,
       salary
FROM employees
WHERE salary = (
    SELECT MIN(salary)
    FROM employees
);

--=============================================================--

SELECT department_id,
       MIN(salary)
FROM employees
GROUP BY department_id
HAVING MIN(salary) > (
    SELECT MIN(salary)
    FROM employees
    WHERE department_id = 50
);

--=============================================================--

SELECT last_name,
       job_id
FROM employees
WHERE job_id = (
    SELECT job_id
    FROM employees
    WHERE last_name = 'Haas'
);