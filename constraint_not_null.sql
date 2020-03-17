--=============================================================--
CREATE TABLE bbb --PK A NIVEL DE COLUMNA
 (
    bbb_id   NUMBER(6)
        CONSTRAINT bbb_id_pk PRIMARY KEY,
    col_a    VARCHAR2(20)
);

--=============================================================--

CREATE TABLE ccc --pk a nivel tabla

 (
    ccc_id   NUMBER(6),
    col_a    VARCHAR2(20),
    CONSTRAINT ccc_id_pk PRIMARY KEY ( ccc_id,
                                       col_a )
);

--=============================================================--

CREATE TABLE ddd --NOT NULL

 (
    ddd_id   NUMBER(6),
    col_a    VARCHAR2(20) NOT NULL
);

INSERT INTO DDD(DDD_ID) VALUES(1);