--=============================================================--

DELETE FROM JOB_HISTORY;

ROLLBACK;

--=============================================================--

INSERT INTO DEPARTMENTS
VALUES(400, 'OPERACIONES', 100, 1700);

COMMIT;

--=============================================================--

SELECT * FROM SALES_REPS;

INSERT INTO SALES_REPS
VALUES(1, 'A', 100, 0);

SAVEPOINT TRANS_1;

INSERT INTO SALES_REPS
VALUES(2, 'B', 200, 0.5);

SAVEPOINT TRANS_2;

INSERT INTO SALES_REPS
VALUES(3, 'B', 300, NULL);

ROLLBACK TO TRANS_2;

TRUNCATE TABLE SALES_REPS;

