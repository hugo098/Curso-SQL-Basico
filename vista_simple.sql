--=============================================================--
CREATE OR REPLACE VIEW empvu80 AS
    SELECT employee_id,
           last_name,
           salary
    FROM employees
    WHERE department_id = 80;

DESC empvu80;

SELECT *
FROM empvu80;

--=============================================================--

CREATE OR REPLACE VIEW salvu50 AS
    SELECT employee_id id_number,
           salary * 12 ann_salart
    FROM employees
    WHERE department_id = 50;

DESC salvu50;

SELECT *
FROM salvu50;

--=============================================================--

CREATE OR REPLACE VIEW empvu80 (
    id_number,
    name,
    sal,
    department_id
) AS
    SELECT employee_id,
           first_name
           || ' '
           || last_name,
           salary,
           department_id
    FROM employees
    WHERE department_id = 80;
    
SELECT * FROM EMPVU80;