--=============================================================--
ALTER TABLE dept80 ADD col_a NUMBER(6);

SELECT *
FROM dept80;

--=============================================================--

ALTER TABLE ccc READ ONLY;

ALTER TABLE ccc READ WRITE;

DESC ccc;

INSERT INTO ccc VALUES (
    4545,
    'dsad'
);

SELECT *
FROM ccc;

--=============================================================--

DROP TABLE ccc;

