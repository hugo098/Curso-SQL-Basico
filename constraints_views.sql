--=============================================================--
CREATE OR REPLACE VIEW empvu20 AS
    SELECT *
    FROM employees
    WHERE department_id = 20
WITH CHECK OPTION CONSTRAINT empvu20_ck;

SELECT *
FROM empvu20;

UPDATE empvu20
SET
    department_id = 10
WHERE employee_id = 201;

--=============================================================--

CREATE OR REPLACE VIEW empvu10 (
    employee_number,
    employee_name,
    job_title
) AS
    SELECT employee_id,
           last_name,
           job_id
    FROM employees
    WHERE department_id = 10
WITH READ ONLY;

select * from empvu10;

delete from empvu10;

--=============================================================--

drop view empvu10;