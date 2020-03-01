--=============================================================--
SELECT e.last_name,
       e.salary,
       j.job_title
FROM employees   e
JOIN jobs        j ON e.salary BETWEEN j.min_salary AND j.max_salary
               AND e.job_id = j.job_id;
               
         
        
            