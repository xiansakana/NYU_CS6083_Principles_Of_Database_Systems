--  replace jc_ to your initial (e.g. jc_ to ap_)
-- DDL

CREATE TABLE jc_cust (
    cust_id     NUMBER(6) NOT NULL,
    fname       VARCHAR2(30) NOT NULL,
    lname       VARCHAR2(30) NOT NULL,
    st_address  VARCHAR2(30) NOT NULL,
    city        VARCHAR2(30) NOT NULL,
    state       VARCHAR2(2) NOT NULL,
    zipcode     VARCHAR2(5) NOT NULL
);

COMMENT ON COLUMN jc_cust.cust_id IS
    'Unique customer identifier. It is the primary key.';

COMMENT ON COLUMN jc_cust.fname IS
    'Customer first name';

COMMENT ON COLUMN jc_cust.lname IS
    'Customer last name';

COMMENT ON COLUMN jc_cust.st_address IS
    'Customer street address';

COMMENT ON COLUMN jc_cust.city IS
    'Customer city address';

COMMENT ON COLUMN jc_cust.state IS
    'Customer state address';

COMMENT ON COLUMN jc_cust.zipcode IS
    'Custome zipcode';

ALTER TABLE jc_cust ADD CONSTRAINT jc_cust_pk PRIMARY KEY ( cust_id );

CREATE TABLE jc_finish (
    finish_id  NUMBER(3) NOT NULL,
    shade      VARCHAR2(30) NOT NULL
);

COMMENT ON COLUMN jc_finish.finish_id IS
    'Unique finish identifier. It is the primary key.';

COMMENT ON COLUMN jc_finish.shade IS
    'Product finish shade';

ALTER TABLE jc_finish ADD CONSTRAINT jc_finish_pk PRIMARY KEY ( finish_id );

CREATE TABLE jc_ord_prod (
    quant      NUMBER(4) NOT NULL,
    order_id   NUMBER(9) NOT NULL,
    prod_id    NUMBER(5) NOT NULL,
    finish_id  NUMBER(3) NOT NULL
);

COMMENT ON COLUMN jc_ord_prod.quant IS
    'Product quantity';

COMMENT ON COLUMN jc_ord_prod.order_id IS
    'Unique Order ID';

COMMENT ON COLUMN jc_ord_prod.prod_id IS
    'Unique Product ID';

COMMENT ON COLUMN jc_ord_prod.finish_id IS
    'Unique Finish ID';

ALTER TABLE jc_ord_prod
    ADD CONSTRAINT jc_ord_prod_pk PRIMARY KEY ( prod_id,
                                                finish_id,
                                                order_id );

CREATE TABLE jc_order (
    order_id    NUMBER(9) NOT NULL,
    order_date  DATE NOT NULL,
    cust_id     NUMBER(6) NOT NULL
);

COMMENT ON COLUMN jc_order.order_id IS
    'Unique order identifier. It is the primary key.';

COMMENT ON COLUMN jc_order.order_date IS
    'Order date';

COMMENT ON COLUMN jc_order.cust_id IS
    'Unique Customer ID';

ALTER TABLE jc_order ADD CONSTRAINT jc_order_pk PRIMARY KEY ( order_id );

CREATE TABLE jc_prod (
    prod_id     NUMBER(5) NOT NULL,
    descr      VARCHAR2(100) NOT NULL,
    unit_price  NUMBER(8, 2) NOT NULL
);

COMMENT ON COLUMN jc_prod.prod_id IS
    'Unique product identifier. It is the primary key.';

COMMENT ON COLUMN jc_prod.descr IS
    'Product description';

COMMENT ON COLUMN jc_prod.unit_price IS
    'Product unit price';

ALTER TABLE jc_prod ADD CONSTRAINT jc_prod_pk PRIMARY KEY ( prod_id );

ALTER TABLE jc_ord_prod
    ADD CONSTRAINT jc_ord_prod_jc_finish_fk FOREIGN KEY ( finish_id )
        REFERENCES jc_finish ( finish_id );

ALTER TABLE jc_ord_prod
    ADD CONSTRAINT jc_ord_prod_jc_order_fk FOREIGN KEY ( order_id )
        REFERENCES jc_order ( order_id );

ALTER TABLE jc_ord_prod
    ADD CONSTRAINT jc_ord_prod_jc_prod_fk FOREIGN KEY ( prod_id )
        REFERENCES jc_prod ( prod_id );

ALTER TABLE jc_order
    ADD CONSTRAINT jc_order_jc_cust_fk FOREIGN KEY ( cust_id )
        REFERENCES jc_cust ( cust_id );

-- DML

-- INSERT INTO jc_cust
INSERT INTO jc_cust (cust_id, fname, lname, st_address, city, state, zipcode) VALUES (12345, 'James', 'Potter', 'Privet Drive', 'Manhattan', 'NY', 11746);
INSERT INTO jc_cust (cust_id, fname, lname, st_address, city, state, zipcode) VALUES (67890, 'Mary', 'Brown', 'Hill Street', 'Los Angeles', 'CL', 50769);
INSERT INTO jc_cust (cust_id, fname, lname, st_address, city, state, zipcode) VALUES (90876, 'Robert', 'Jones', 'Lake Street', 'Chicago', 'IL', 90911);
INSERT INTO jc_cust (cust_id, fname, lname, st_address, city, state, zipcode) VALUES (54321, 'Patricia', 'Garcia', 'Washington Ave', 'Houston', 'TX', 20385);
INSERT INTO jc_cust (cust_id, fname, lname, st_address, city, state, zipcode) VALUES (45678, 'John', 'Miller', 'Oak Street', 'Phoenix', 'AZ', 20998);
INSERT INTO jc_cust (cust_id, fname, lname, st_address, city, state, zipcode) VALUES (89765, 'Jennifer', 'Davis', 'Pine Parkaway', 'Philadelphia', 'PA', 44445);
INSERT INTO jc_cust (cust_id, fname, lname, st_address, city, state, zipcode) VALUES (55677, 'Michael', 'Rodriguez', 'Cedar Street', 'San Antonio', 'TX', 55548);
INSERT INTO jc_cust (cust_id, fname, lname, st_address, city, state, zipcode) VALUES (99876, 'Linda', 'Wilson', 'Prospect Ave', 'Dallas', 'TX', 46532);
INSERT INTO jc_cust (cust_id, fname, lname, st_address, city, state, zipcode) VALUES (22334, 'William', 'Martinez', 'Park Avenue', 'Albany', 'NY', 11232);
INSERT INTO jc_cust (cust_id, fname, lname, st_address, city, state, zipcode) VALUES (90998, 'Elizabeth', 'Thomas', 'Sixth Street', 'Columbus', 'OH', 88876);
INSERT INTO jc_cust (cust_id, fname, lname, st_address, city, state, zipcode) VALUES (33776, 'David', 'Taylor', 'Elm Street', 'Manhattan', 'NY', 11746);
INSERT INTO jc_cust (cust_id, fname, lname, st_address, city, state, zipcode) VALUES (67765, 'Barbara', 'Moore', 'Main Street', 'Seattle', 'WA', 23746);
INSERT INTO jc_cust (cust_id, fname, lname, st_address, city, state, zipcode) VALUES (98987, 'Richard', 'Martin', 'Seventh Street', 'Nashville', 'TN', 87746);
INSERT INTO jc_cust (cust_id, fname, lname, st_address, city, state, zipcode) VALUES (44568, 'Susan', 'Lee', 'Mayor Street', 'Boston', 'MA', 90746);
INSERT INTO jc_cust (cust_id, fname, lname, st_address, city, state, zipcode) VALUES (98211, 'Joseph', 'Lopez', 'Maple Avenue', 'Denver', 'CO', 40746);
INSERT INTO jc_cust (cust_id, fname, lname, st_address, city, state, zipcode) VALUES (10987, 'Karen', 'Iglesias', 'Union Street', 'Lexington', 'KY', 70746);


-- INSERT INTO jc_prod
INSERT INTO jc_prod (prod_id, descr, unit_price) VALUES (1,'Cradle Bed', 700.00);
INSERT INTO jc_prod (prod_id, descr, unit_price) VALUES (2,'Cabinets', 525.00);
INSERT INTO jc_prod (prod_id, descr, unit_price) VALUES (3,'Couch', 670.00);
INSERT INTO jc_prod (prod_id, descr, unit_price) VALUES (4,'Entertainment Center', 650.00);
INSERT INTO jc_prod (prod_id, descr, unit_price) VALUES (5,'Writer Desk', 325.00);
INSERT INTO jc_prod (prod_id, descr, unit_price) VALUES (6,'Settee', 500.00);
INSERT INTO jc_prod (prod_id, descr, unit_price) VALUES (7,'Dinning Table', 800.00);
INSERT INTO jc_prod (prod_id, descr, unit_price) VALUES (8,'Wardrobe', 900.00);
INSERT INTO jc_prod (prod_id, descr, unit_price) VALUES (9,'Washstand', 230.00);
INSERT INTO jc_prod (prod_id, descr, unit_price) VALUES (10,'Bookcase', 1000.00);
INSERT INTO jc_prod (prod_id, descr, unit_price) VALUES (11,'4-Dr Dresser', 500.00);
INSERT INTO jc_prod (prod_id, descr, unit_price) VALUES (12,'Rolltop Desk', 2050.00);
INSERT INTO jc_prod (prod_id, descr, unit_price) VALUES (13,'Armoire', 1500.00);
INSERT INTO jc_prod (prod_id, descr, unit_price) VALUES (14,'Windsor Chair', 890.00);
INSERT INTO jc_prod (prod_id, descr, unit_price) VALUES (15,'Nightstand', 300.00);

-- Insert into jc_finish
INSERT INTO jc_finish (finish_id, shade) VALUES (101, 'Natural Ash');
INSERT INTO jc_finish (finish_id, shade) VALUES (202, 'Cherry');
INSERT INTO jc_finish (finish_id, shade) VALUES (303, 'Natural Maple');
INSERT INTO jc_finish (finish_id, shade) VALUES (404, 'Oak');
INSERT INTO jc_finish (finish_id, shade) VALUES (505, 'Simply White');
INSERT INTO jc_finish (finish_id, shade) VALUES (606, 'Golden Oak');
INSERT INTO jc_finish (finish_id, shade) VALUES (707, 'Fruitwood');
INSERT INTO jc_finish (finish_id, shade) VALUES (808, 'Classic Gray');
INSERT INTO jc_finish (finish_id, shade) VALUES (909, 'Green Velvet');
INSERT INTO jc_finish (finish_id, shade) VALUES (111, 'Driftwood');
INSERT INTO jc_finish (finish_id, shade) VALUES (222, 'Golden Pecan');
INSERT INTO jc_finish (finish_id, shade) VALUES (333, 'Red Chestnut');
INSERT INTO jc_finish (finish_id, shade) VALUES (444, 'Gunstock');
INSERT INTO jc_finish (finish_id, shade) VALUES (555, 'Provincial');
INSERT INTO jc_finish (finish_id, shade) VALUES (666, 'Puritan Prine');
INSERT INTO jc_finish (finish_id, shade) VALUES (777, 'Natural');


-- Insert into jc_order
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1006, TO_DATE('10-24-2015 12:34:12', 'MM-DD-YYYY HH24:MI:SS'), 10987);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1007, TO_DATE('11-23-2020 10:30:12', 'MM-DD-YYYY HH24:MI:SS'), 12345);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1008, TO_DATE('01-01-2020 02:34:47', 'MM-DD-YYYY HH24:MI:SS'), 22334);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1009, TO_DATE('04-12-2021 09:56:29', 'MM-DD-YYYY HH24:MI:SS'), 10987);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1010, TO_DATE('02-24-2020 12:54:13', 'MM-DD-YYYY HH24:MI:SS'), 90876);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1011, TO_DATE('05-10-2019 11:23:55', 'MM-DD-YYYY HH24:MI:SS'), 89765);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1012, TO_DATE('09-18-2018 10:19:59', 'MM-DD-YYYY HH24:MI:SS'), 99876);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1013, TO_DATE('11-11-2017 17:34:50', 'MM-DD-YYYY HH24:MI:SS'), 90998);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1014, TO_DATE('12-05-2018 13:56:49', 'MM-DD-YYYY HH24:MI:SS'), 98211);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1015, TO_DATE('02-20-2017 11:24:48', 'MM-DD-YYYY HH24:MI:SS'), 98987);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1016, TO_DATE('03-06-2019 20:19:46', 'MM-DD-YYYY HH24:MI:SS'), 22334);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1017, TO_DATE('05-01-2020 14:45:25', 'MM-DD-YYYY HH24:MI:SS'), 54321);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1018, TO_DATE('09-03-2021 11:12:15', 'MM-DD-YYYY HH24:MI:SS'), 55677);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1019, TO_DATE('01-10-2021 16:56:14', 'MM-DD-YYYY HH24:MI:SS'), 67765);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1020, TO_DATE('07-09-2020 17:17:10', 'MM-DD-YYYY HH24:MI:SS'), 67890);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1021, TO_DATE('08-09-2019 13:19:09', 'MM-DD-YYYY HH24:MI:SS'), 44568);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1022, TO_DATE('06-10-2018 10:29:05', 'MM-DD-YYYY HH24:MI:SS'), 45678);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1023, TO_DATE('07-03-2017 15:49:01', 'MM-DD-YYYY HH24:MI:SS'), 22334);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1024, TO_DATE('05-05-2018 16:10:00', 'MM-DD-YYYY HH24:MI:SS'), 99876);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1025, TO_DATE('02-06-2019 17:11:22', 'MM-DD-YYYY HH24:MI:SS'), 67765);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1026, TO_DATE('11-07-2020 11:21:33', 'MM-DD-YYYY HH24:MI:SS'), 12345);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1027, TO_DATE('12-08-2020 13:34:23', 'MM-DD-YYYY HH24:MI:SS'), 33776);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1028, TO_DATE('10-09-2020 15:56:33', 'MM-DD-YYYY HH24:MI:SS'), 44568);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1029, TO_DATE('12-23-2020 16:55:34', 'MM-DD-YYYY HH24:MI:SS'), 33776);
INSERT INTO jc_order (order_id, order_date, cust_id) VALUES (1030, TO_DATE('03-11-2021 17:21:54', 'MM-DD-YYYY HH24:MI:SS'), 67890);

-- insert into jc_ord_prod
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (1,1006,7, 101);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (2,1006,5, 111);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (1,1006,4, 202);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (2,1007,11, 404);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (1,1007,4, 444);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (1,1008,15,666);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (1,1009,13,707);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (2,1010,10,202);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (1,1011,9, 909);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (2,1012,8, 808);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (1,1013,6, 707);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (1,1014,1, 111);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (2,1015,2, 101);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (3,1016,9, 505);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (1,1017,4, 909);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (1,1018,5, 777);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (1,1019,1, 666);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (2,1020,3, 555);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (2,1022,4, 333);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (3,1022,10, 202);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (2,1023,13, 505);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (2,1024,14, 777);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (2,1025,15, 707);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (1,1026,6, 111);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (1,1027,2, 101);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (1,1028,3, 606);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (2,1029,6, 666);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (1,1030,8, 909);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (1,1022,9, 444);
INSERT INTO jc_ORD_PROD (quant, order_id, prod_id, finish_id) VALUES (1,1014,10, 333);

COMMIT;


