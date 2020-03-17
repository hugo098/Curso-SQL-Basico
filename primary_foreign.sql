--=============================================================--
CREATE TABLE supplier (
    supplier_id     NUMBER(10) NOT NULL,
    supplier_name   VARCHAR2(50) NOT NULL,
    contact_name    VARCHAR2(50),
    CONSTRAINT supplier_pk PRIMARY KEY ( supplier_id )
);

--=============================================================--

CREATE TABLE products (
    product_id     NUMBER(10) NOT NULL,
    supplier_id   number(10) NOT NULL,    
    CONSTRAINT fk_supplier
    foreign key(supplier_id)
    references supplier(supplier_id)
);

insert into supplier
values(2, 'bbbb', 'sadas');

insert into products
values(1, 2);