--=============================================================--
CREATE SEQUENCE dept_depid_seq INCREMENT BY 10 START WITH 520 MAXVALUE 9999 NOCACHE NOCYCLE;

INSERT INTO departments (
    department_id,
    department_name,
    location_id
) VALUES (
    dept_depid_seq.NEXTVAL,
    'FDK',
    2500
);

SELECT *
FROM departments;

SELECT dept_depid_seq.CURRVAL,
       dept_depid_seq.NEXTVAL
FROM dual;

--=============================================================--

ALTER SEQUENCE dept_depid_seq INCREMENT BY 20 MAXVALUE 999999 NOCACHE NOCYCLE;
    
--=============================================================--

DROP SEQUENCE dept_depid_seq;