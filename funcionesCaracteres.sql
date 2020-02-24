--=============================================================--
SELECT upper('curso sql')
FROM dual;

--=============================================================--

SELECT lower('curso sql')
FROM dual;

--=============================================================--

SELECT initcap('curso sql')
FROM dual;

--=============================================================--

SELECT employee_id,
       last_name
FROM employees
WHERE lower(last_name) = 'higgins';

--=============================================================--

SELECT concat('Bienvenidos ', 'Oracle')
FROM dual;

--=============================================================--

SELECT substr('BienvenidosOracle', 1, 11)
FROM dual;

SELECT length('BienvenidosOracle')
FROM dual;

--=============================================================--

SELECT instr('BienvenidosOracle', 'O')
FROM dual;

--=============================================================--

SELECT lpad(salary, 10, '*')
FROM employees;

--=============================================================--

SELECT rpad(salary, 10, '*')
FROM employees;

--=============================================================--

SELECT replace('JACK AND JUE', 'J', 'BL')
FROM dual;

--=============================================================--

SELECT TRIM(' Bienvenidos a Oracle ')
FROM dual;