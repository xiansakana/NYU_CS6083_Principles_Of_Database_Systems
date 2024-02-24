CREATE TABLE corporate ( 
    cust_id   INT NOT NULL COMMENT 'customer id', 
    emp_id    INT NOT NULL COMMENT 'Employee ID of the customer who rents the car on a corporate account', 
    corp_name VARCHAR(30) NOT NULL COMMENT 'details of corporation name', 
    reg_no    VARCHAR(9) NOT NULL COMMENT 'registration number of the corporation'
);
ALTER TABLE corporate ADD CONSTRAINT corporate_pk PRIMARY KEY ( cust_id );
ALTER TABLE corporate ADD CONSTRAINT corporate_pkv1 UNIQUE ( emp_id );


CREATE TABLE discount_corp ( 
    discount_id INT NOT NULL COMMENT 'discount id', 
    disc_perc   DECIMAL(5, 2) NOT NULL COMMENT 'percentage of discount offered for corporation', 
    corp_name   VARCHAR(30) NOT NULL COMMENT 'corporation name'
);
ALTER TABLE discount_corp ADD CONSTRAINT discount_corp_pk PRIMARY KEY ( discount_id );


CREATE TABLE discount_indi ( 

    discount_id INT NOT NULL COMMENT 'discount id', 
    disc_perc   DECIMAL(5, 2) NOT NULL COMMENT 'percentage of discount offered for individual', 
    start_date  DATETIME NOT NULL COMMENT 'discount coupon start date', 
    end_date    DATETIME NOT NULL COMMENT 'discount coupon end date'
);
ALTER TABLE discount_indi ADD CONSTRAINT discount_indi_pk PRIMARY KEY ( discount_id );


CREATE TABLE individual ( 
    cust_id        INT NOT NULL COMMENT 'customer id', 
    drv_license_no VARCHAR(12) NOT NULL COMMENT ' Driver License Number', 
    ins_cmp_name   VARCHAR(30) NOT NULL COMMENT 'Insurance Company Name', 
    ins_pol_no     VARCHAR(13) NOT NULL COMMENT 'Insurance Policy Number'
);
ALTER TABLE individual ADD CONSTRAINT individual_pk PRIMARY KEY ( cust_id );
ALTER TABLE individual ADD CONSTRAINT individual_pkv1 UNIQUE ( drv_license_no );

CREATE TABLE jc_card_type ( 
    card_type_id INT NOT NULL COMMENT 'CARD TYPE ID', 
    type_name    VARCHAR(30) NOT NULL COMMENT 'card type name'
);
ALTER TABLE jc_card_type ADD CONSTRAINT jc_card_type_pk PRIMARY KEY ( card_type_id );


CREATE TABLE jc_customer ( 
    cust_id   INT NOT NULL COMMENT 'customer id', 
    fname     VARCHAR(30) NOT NULL COMMENT 'customer first name', 
    lname     VARCHAR(30) NOT NULL COMMENT 'customer last name', 
    street    VARCHAR(30) NOT NULL COMMENT 'customer street', 
    city      VARCHAR(20) NOT NULL COMMENT 'customer city', 
    state     VARCHAR(30) NOT NULL COMMENT 'customer state', 
    zipcode   VARCHAR(10) NOT NULL COMMENT 'customer zipcode', 
    phone_no  VARCHAR(12) NOT NULL COMMENT 'customer phone number', 
    email     VARCHAR(50) NOT NULL COMMENT 'customer email', 
    cust_type VARCHAR(1) NOT NULL COMMENT 'customer type'
);
ALTER TABLE jc_customer
    ADD CONSTRAINT ch_inh_jc_customer CHECK ( cust_type IN ( 'C', 'I' ) );
ALTER TABLE jc_customer ADD CONSTRAINT jc_customer_pk PRIMARY KEY ( cust_id );


CREATE TABLE jc_discount ( 
    discount_id   INT NOT NULL COMMENT 'discount id', 
    discount_type VARCHAR(1) NOT NULL COMMENT 'discount type'
);
ALTER TABLE jc_discount
    ADD CONSTRAINT ch_inh_jc_discount CHECK ( discount_type IN ( 'C', 'I' ) );
ALTER TABLE jc_discount ADD CONSTRAINT jc_discount_pk PRIMARY KEY ( discount_id );


CREATE TABLE jc_invoice ( 
    invoice_id     INT NOT NULL COMMENT 'Invoice id', 
    invoice_date   DATETIME NOT NULL COMMENT 'INVOICE DATE', 
    invoice_amount DECIMAL(7, 2) NOT NULL COMMENT 'INVOICE AMOUNT', 
    service_id     INT NOT NULL COMMENT 'service id'
);
ALTER TABLE jc_invoice ADD CONSTRAINT jc_invoice_pk PRIMARY KEY ( invoice_id );


CREATE TABLE jc_loc ( 
    loc_id   SMALLINT NOT NULL COMMENT 'office location', 
    street   VARCHAR(30) NOT NULL COMMENT 'office location street', 
    city     VARCHAR(30) NOT NULL COMMENT 'office location city', 
    state    VARCHAR(30) NOT NULL COMMENT 'office location state', 
    zipcode  VARCHAR(10) NOT NULL COMMENT 'office location zipcode', 
    phone_no VARCHAR(12) NOT NULL COMMENT 'office phone number'
);
ALTER TABLE jc_loc ADD CONSTRAINT jc_loc_pk PRIMARY KEY ( loc_id );

CREATE TABLE jc_payment ( 
    payment_id   INT NOT NULL COMMENT 'PAYMENT ID', 
    payment_date DATETIME NOT NULL COMMENT 'PAYMENT DATE', 
    card_no      BIGINT NOT NULL COMMENT 'card number', 
    invoice_id   INT NOT NULL COMMENT 'invoice id',
    cvv          SMALLINT NOT NULL COMMENT 'CVV', 
    card_type_id INT NOT NULL COMMENT 'card type id'
);
ALTER TABLE jc_payment ADD CONSTRAINT jc_payment_pk PRIMARY KEY ( payment_id );

CREATE TABLE jc_service ( 
    service_id  INT NOT NULL COMMENT 'rent service id', 
    days_no     TINYINT NOT NULL COMMENT 'rent service days number', 
    start_odo   INT NOT NULL COMMENT 'rent service start odometer', 
    end_odo     INT NOT NULL COMMENT 'rent service end odometer', 
    pickup_loc  SMALLINT NOT NULL COMMENT 'pickup location', 
    dropoff_loc SMALLINT NOT NULL COMMENT 'dropoff location', 
    discount_id INT NOT NULL COMMENT 'discount id', 
    cust_id     INT NOT NULL
);

CREATE UNIQUE INDEX jc_service__idx ON
    jc_service (
        discount_id
    ASC );
ALTER TABLE jc_service ADD CONSTRAINT jc_service_pk PRIMARY KEY ( service_id );


CREATE TABLE jc_vehicle ( 
    vehicle_vin      VARCHAR(17) NOT NULL COMMENT 'Vehicle Identification Number', 
    vehicle_make     VARCHAR(30) NOT NULL COMMENT 'VEHICLE MAKE', 
    vehicle_model    VARCHAR(30) NOT NULL COMMENT 'VEHICLE MODEL', 
    vehicle_year     SMALLINT NOT NULL COMMENT 'VEHICLE YEAR', 
    license_plate_no VARCHAR(8) NOT NULL COMMENT 'LICENSE PLATE NUMBER', 
    loc_id           SMALLINT NOT NULL COMMENT 'location id', 
    vehicle_id       INT NOT NULL COMMENT 'vehicle id'
);
ALTER TABLE jc_vehicle ADD CONSTRAINT jc_vehicle_pk PRIMARY KEY ( vehicle_vin );


CREATE TABLE jc_vehicle_class ( 
    vehicle_id        INT NOT NULL COMMENT 'vehicle class id', 
    vehicle_type      VARCHAR(30) NOT NULL COMMENT 'vehicle type', 
    daily_rate        DECIMAL(5, 2) NOT NULL COMMENT 'rental rate per day', 
    over_mileage_rate DECIMAL(4, 2) NOT NULL COMMENT 'fees for over mileage per day', 
    odo_limit         SMALLINT NOT NULL COMMENT 'odometer limit', 
    service_id        INT NOT NULL COMMENT 'service id'
);
ALTER TABLE jc_vehicle_class ADD CONSTRAINT jc_vehicle_class_pk PRIMARY KEY ( vehicle_id );


ALTER TABLE corporate
    ADD CONSTRAINT corporate_jc_customer_fk FOREIGN KEY ( cust_id )
        REFERENCES jc_customer ( cust_id );

ALTER TABLE discount_corp
    ADD CONSTRAINT discount_corp_jc_discount_fk FOREIGN KEY ( discount_id )
        REFERENCES jc_discount ( discount_id );

ALTER TABLE discount_indi
    ADD CONSTRAINT discount_indi_jc_discount_fk FOREIGN KEY ( discount_id )
        REFERENCES jc_discount ( discount_id );

ALTER TABLE individual
    ADD CONSTRAINT individual_jc_customer_fk FOREIGN KEY ( cust_id )
        REFERENCES jc_customer ( cust_id );

ALTER TABLE jc_invoice
    ADD CONSTRAINT jc_invoice_jc_service_fk FOREIGN KEY ( service_id )
        REFERENCES jc_service ( service_id );

ALTER TABLE jc_payment
    ADD CONSTRAINT jc_payment_jc_card_type_fk FOREIGN KEY ( card_type_id )
        REFERENCES jc_card_type ( card_type_id );

ALTER TABLE jc_payment
    ADD CONSTRAINT jc_payment_jc_invoice_fk FOREIGN KEY ( invoice_id )
        REFERENCES jc_invoice ( invoice_id );

ALTER TABLE jc_service
    ADD CONSTRAINT jc_service_jc_customer_fk FOREIGN KEY ( cust_id )
        REFERENCES jc_customer ( cust_id );

ALTER TABLE jc_service
    ADD CONSTRAINT jc_service_jc_discount_fk FOREIGN KEY ( discount_id )
        REFERENCES jc_discount ( discount_id );

ALTER TABLE jc_service
    ADD CONSTRAINT jc_service_jc_loc_fk FOREIGN KEY ( pickup_loc )
        REFERENCES jc_loc ( loc_id );

ALTER TABLE jc_service
    ADD CONSTRAINT jc_service_jc_loc_fkv2 FOREIGN KEY ( dropoff_loc )
        REFERENCES jc_loc ( loc_id );

ALTER TABLE jc_vehicle_class
    ADD CONSTRAINT jc_vehicle_class_jc_service_fk FOREIGN KEY ( service_id )
        REFERENCES jc_service ( service_id );

ALTER TABLE jc_vehicle
    ADD CONSTRAINT jc_vehicle_jc_loc_fk FOREIGN KEY ( loc_id )
        REFERENCES jc_loc ( loc_id );

ALTER TABLE jc_vehicle
    ADD CONSTRAINT jc_vehicle_jc_vehicle_class_fk FOREIGN KEY ( vehicle_id )
        REFERENCES jc_vehicle_class ( vehicle_id );


DROP TRIGGER IF EXISTS arc_fkarc_4_discount_indi;

DELIMITER //
CREATE TRIGGER arc_fkarc_4_discount_indi BEFORE INSERT ON discount_indi
FOR EACH ROW
BEGIN
    DECLARE d VARCHAR(1);

    SELECT discount_type INTO d
    FROM jc_discount a
    WHERE a.discount_id = NEW.discount_id;

    IF (d IS NULL OR d <> 'I') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'FK DISCOUNT_INDI_JC_DISCOUNT_FK in Table DISCOUNT_INDI violates Arc constraint on Table JC_DISCOUNT - discriminator column DISCOUNT_TYPE doesn''t have value ''I''';
    END IF;
END;
//
DELIMITER ;



DROP TRIGGER IF EXISTS arc_fkarc_4_discount_corp;

DELIMITER //
CREATE TRIGGER arc_fkarc_4_discount_corp BEFORE INSERT ON discount_corp
    FOR EACH ROW
BEGIN
    DECLARE d VARCHAR(1);

    SELECT discount_type INTO d
    FROM jc_discount a
    WHERE a.discount_id = NEW.discount_id
    LIMIT 1;

    IF (d IS NULL OR d <> 'C') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'FK DISCOUNT_CORP_JC_DISCOUNT_FK in Table DISCOUNT_CORP violates Arc constraint on Table JC_DISCOUNT - discriminator column DISCOUNT_TYPE doesn''t have value ''C''';
    END IF;
END;
//
DELIMITER ;



DROP TRIGGER IF EXISTS arc_fkarc_3_corporate;

DELIMITER //
CREATE TRIGGER arc_fkarc_3_corporate BEFORE INSERT ON corporate
    FOR EACH ROW
BEGIN
    DECLARE d VARCHAR(1);

    SELECT cust_type INTO d
    FROM jc_customer a
    WHERE a.cust_id = NEW.cust_id
    LIMIT 1;

    IF (d IS NULL OR d <> 'C') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'FK CORPORATE_JC_CUSTOMER_FK in Table CORPORATE violates Arc constraint on Table JC_CUSTOMER - discriminator column CUST_TYPE doesn''t have value ''C''';
    END IF;
END;
//
DELIMITER ;



DROP TRIGGER IF EXISTS arc_fkarc_3_individual;

DELIMITER //
CREATE TRIGGER arc_fkarc_3_individual BEFORE INSERT ON individual
    FOR EACH ROW
BEGIN
    DECLARE d VARCHAR(1);

    SELECT cust_type INTO d
    FROM jc_customer a
    WHERE a.cust_id = NEW.cust_id
    LIMIT 1;

    IF (d IS NULL OR d <> 'I') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'FK INDIVIDUAL_JC_CUSTOMER_FK in Table INDIVIDUAL violates Arc constraint on Table JC_CUSTOMER - discriminator column CUST_TYPE doesn''t have value ''I''';
    END IF;
END;
//
DELIMITER ;






-- SQLINES DEMO *** per Data Modeler Summary Report: 
-- 
-- SQLINES DEMO ***                        13
-- SQLINES DEMO ***                         1
-- SQLINES DEMO ***                        31
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO *** DY                      0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         4
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***  TYPE                   0
-- SQLINES DEMO ***  TYPE                   0
-- SQLINES DEMO ***  TYPE BODY              0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO *** EGMENT                  0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO *** ED VIEW                 0
-- SQLINES DEMO *** ED VIEW LOG             0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- 
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
-- 
-- SQLINES DEMO ***                         0
-- 
-- SQLINES DEMO ***                         0
-- SQLINES DEMO *** A                       0
-- SQLINES DEMO *** T                       0
-- 
-- SQLINES DEMO ***                         0
-- SQLINES DEMO ***                         0
