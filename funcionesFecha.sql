--=============================================================--
SELECT sysdate
FROM dual;

--=============================================================--

SELECT sysdate + 7
FROM dual;

--=============================================================--

SELECT sysdate - 5
FROM dual;

--=============================================================--

SELECT last_name,
       ( sysdate - hire_date ) / 7 AS "Semanas"
FROM employees;

--=============================================================--

SELECT months_between(sysdate, hire_date)
FROM employees;

--=============================================================--

SELECT add_months(sysdate, 3)
FROM dual;

--=============================================================--

SELECT next_day('24-FEB-2020', 'TUESDAY')
FROM dual;

--=============================================================--

SELECT last_day('24-FEB-2020')
FROM dual;

--=============================================================--

SELECT employee_id,
       hire_date,
       round(hire_date, 'month'),
       trunc(hire_date, 'month')
FROM employees
WHERE hire_date LIKE '%07';

--=============================================================--

SELECT to_char(sysdate, 'MM-DD-YYYY HH24:MI:SS') "NOW"
FROM dual;
