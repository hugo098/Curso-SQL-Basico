--=============================================================--
CREATE TABLE dept80
    AS
        SELECT employee_id,
               last_name,
               salary * 12 sal_anual,
               hire_date
        FROM employees
        WHERE department_id = 80;

SELECT *
FROM dept80;