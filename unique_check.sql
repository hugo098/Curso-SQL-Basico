--=============================================================--
CREATE TABLE eee ---UNIQUE
 (
    eee_id   NUMBER(6),
    col_a    VARCHAR2(20) NOT NULL,
    col_b    NUMBER(2) UNIQUE
);

INSERT INTO eee VALUES (
    1,
    'e',
    1
);

--=============================================================--

CREATE TABLE fff --CHECK

 (
    eee_id    NUMBER(6),
    col_a     VARCHAR2(20) NOT NULL,
    salario   NUMBER(2)
        CONSTRAINT fff_salario CHECK ( salario > 0 ),
    c         NUMBER
);

INSERT INTO FFF VALUES(1, 'SA', 5, 0);