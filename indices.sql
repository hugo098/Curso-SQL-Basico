--=============================================================--
CREATE INDEX empl_name_idx ON
    employees (
        last_name
    );

--=============================================================--

drop index empl_name_idx;