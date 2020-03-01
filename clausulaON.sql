--=============================================================--
SELECT *
FROM departments   d
JOIN employees     e ON ( e.employee_id = d.department_id );

--=============================================================--

SELECT employee_id,
       city,
       department_name
FROM employees     e
JOIN departments   d ON d.department_id = e.department_id
JOIN locations     l ON d.location_id = l.location_id;

--=============================================================--

SELECT e.employee_id,
       e.last_name,
       d.department_name
FROM employees     e
JOIN departments   d ON ( e.department_id = d.department_id )
                      AND e.manager_id = 149;
                      
--=============================================================--

SELECT e.employee_id,
       e.last_name,
       d.department_name
FROM employees     e
JOIN departments   d ON ( e.department_id = d.department_id )
where e.manager_id = 149;
