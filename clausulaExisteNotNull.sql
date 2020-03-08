--=============================================================--
SELECT employee_id,
       salary,
       last_name
FROM employees m
WHERE EXISTS (
    SELECT employee_id
    FROM employees w
    WHERE ( w.manager_id = m.employee_id )
          AND w.salary > 10000
);

--=============================================================--

SELECT emp.last_name
FROM employees emp
WHERE emp.employee_id NOT IN (
    SELECT mgr.manager_id
    FROM employees mgr
    WHERE manager_id IS NOT NULL
);