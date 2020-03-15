--=============================================================--
INSERT INTO departments (
    department_id,
    department_name,
    manager_id,
    location_id
) VALUES (
    300,
    'DBA',
    100,
    1700
);

SELECT *
FROM departments;

--=============================================================--

--MÉTODO IMPLICITO

INSERT INTO departments (
    department_id,
    department_name
) VALUES (
    301,
    'DEP_IT'
);

--=============================================================--

--MÉTODO EXPLICITO

INSERT INTO departments VALUES (
    302,
    'CRE_EMP',
    NULL,
    NULL
);

--=============================================================--

--INSERCIÓN CON VALORES ESPECIALES

INSERT INTO employees (
    employee_id,
    first_name,
    last_name,
    email,
    phone_number,
    hire_date,
    job_id,
    salary,
    commission_pct,
    manager_id,
    department_id
) VALUES (
    207,
    'DELIMAR',
    'REYES',
    lower('DELIMAREYES@GMAIL.COM'),
    '123-123-123',
    sysdate,
    'AC_ACCOUNT',
    6900,
    NULL,
    205,
    110
);

--=============================================================--

--INSERCIÓN CON VALORES DE FECHA Y HORA

INSERT INTO employees VALUES (
    501,
    'LUIS',
    'PEREZ',
    'LUISP@GMAIL.COM',
    '456-456-456',
    TO_DATE('FEB 3, 1999', 'MON DD YYYY'),
    'SA_REP',
    11000,
    0.2,
    100,
    60
);

--=============================================================--

--INSERCIÓN CON LA SUSTITUCIÓN DE VARIABLE(PROMPT)

INSERT INTO departments (
    department_id,
    department_name,
    location_id
) VALUES (
    &department_id,
    '&DEPARTMENT_NAME',
    &location
);

--=============================================================--

--INSERT USANDO SELECT

INSERT INTO sales_reps (
    id,
    name,
    salary,
    commission_pct
)
    SELECT employee_id,
           last_name,
           salary,
           commission_pct
    FROM employees
    WHERE job_id LIKE '%REP%';