--=============================================================--

SELECT worker.last_name   emp,
       mng.last_name      mng
FROM employees   worker
JOIN employees   mng ON ( worker.manager_id = mng.employee_id );