--=============================================================--
UPDATE employees
SET
    department_id = 50
WHERE employee_id = 113;

--=============================================================--

UPDATE copy_emp
SET
    department_id = 110;
    
--=============================================================--

UPDATE employees
SET
    ( job_id,
      salary ) = (
        SELECT job_id,
               salary
        FROM employees
        WHERE employee_id = 205
    )
WHERE employee_id = 103;

--=============================================================--

UPDATE copy_emp
SET
    department_id = (
        SELECT department_id
        FROM employees
        WHERE employee_id = 100
    )
WHERE job_id = (
    SELECT job_id
    FROM employees
    WHERE employee_id = 200
);