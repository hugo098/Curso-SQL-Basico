--=============================================================--
DELETE FROM departments
WHERE department_name = 'CRE_EMP';

--=============================================================--

DELETE FROM sales_reps;

--=============================================================--

DELETE FROM copy_emp
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE department_name LIKE '%Public%'
);

--=============================================================--

TRUNCATE TABLE COPY_EMP;