--=============================================================--
CREATE TABLE aaa (
    id      NUMBER(6),
    col_a   DATE DEFAULT sysdate,
    col_b   VARCHAR2(25) DEFAULT 'SIN ASIGNAR',
    col_c   NUMBER(2) DEFAULT 0
);

INSERT INTO aaa VALUES (
    1,
    TO_DATE('MAY 10, 2017', 'MON DD, YYYY'),
    'DELIMAR',
    10
);

SELECT *
FROM aaa;

INSERT INTO aaa (
    id,
    col_a
) VALUES (
    1,
    TO_DATE('MAY 10, 2017', 'MON DD, YYYY')
);

INSERT INTO aaa (
    id
) VALUES (
    1
);