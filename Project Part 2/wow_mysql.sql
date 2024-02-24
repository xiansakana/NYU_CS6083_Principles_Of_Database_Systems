-- SQLINES DEMO *** le SQL Developer Data Modeler 23.1.0.087.0806
-- SQLINES DEMO *** -12-08 05:04:37 EST
-- SQLINES DEMO *** le Database 11g
-- SQLINES DEMO *** le Database 11g



-- SQLINES DEMO *** no DDL - MDSYS.SDO_GEOMETRY

-- SQLINES DEMO *** no DDL - XMLTYPE

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE corporate ( 
--  customer id
    cust_id   INT NOT NULL COMMENT 'customer id', 
-- SQLINES DEMO *** he customer who rents the car on a corporate account
    emp_id    INT NOT NULL COMMENT 'Employee ID of the customer who rents the car on a corporate account', 
-- SQLINES DEMO *** ration name
    corp_name VARCHAR(30) NOT NULL COMMENT 'details of corporation name', 
-- SQLINES DEMO *** ber of the corporation
    reg_no    VARCHAR(9) NOT NULL COMMENT 'registration number of the corporation'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN corporate.cust_id IS
    'customer id'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN corporate.emp_id IS
    'Employee ID of the customer who rents the car on a corporate account'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN corporate.corp_name IS
    'details of corporation name'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN corporate.reg_no IS
    'registration number of the corporation'; */

ALTER TABLE corporate ADD CONSTRAINT corporate_pk PRIMARY KEY ( cust_id );

ALTER TABLE corporate ADD CONSTRAINT corporate_pkv1 UNIQUE ( emp_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE discount_corp ( 
--  discount id
    discount_id INT NOT NULL COMMENT 'discount id', 
-- SQLINES DEMO *** scount offered for corporation
    disc_perc   DECIMAL(5, 2) NOT NULL COMMENT 'percentage of discount offered for corporation', 
--  corporation name
    corp_name   VARCHAR(30) NOT NULL COMMENT 'corporation name'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN discount_corp.discount_id IS
    'discount id'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN discount_corp.disc_perc IS
    'percentage of discount offered for corporation'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN discount_corp.corp_name IS
    'corporation name'; */

ALTER TABLE discount_corp ADD CONSTRAINT discount_corp_pk PRIMARY KEY ( discount_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE discount_indi ( 
--  discount id
    discount_id INT NOT NULL COMMENT 'discount id', 
-- SQLINES DEMO *** scount offered for individual
    disc_perc   DECIMAL(5, 2) NOT NULL COMMENT 'percentage of discount offered for individual', 
-- SQLINES DEMO *** start date
    start_date  DATETIME NOT NULL COMMENT 'discount coupon start date', 
-- SQLINES DEMO *** end date
    end_date    DATETIME NOT NULL COMMENT 'discount coupon end date'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN discount_indi.discount_id IS
    'discount id'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN discount_indi.disc_perc IS
    'percentage of discount offered for individual'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN discount_indi.start_date IS
    'discount coupon start date'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN discount_indi.end_date IS
    'discount coupon end date'; */

ALTER TABLE discount_indi ADD CONSTRAINT discount_indi_pk PRIMARY KEY ( discount_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE individual ( 
--  customer id
    cust_id        INT NOT NULL COMMENT 'customer id', 
-- SQLINES DEMO *** Number
    drv_license_no VARCHAR(12) NOT NULL COMMENT ' Driver License Number', 
-- SQLINES DEMO *** y Name
    ins_cmp_name   VARCHAR(30) NOT NULL COMMENT 'Insurance Company Name', 
-- SQLINES DEMO ***  Number
    ins_pol_no     VARCHAR(13) NOT NULL COMMENT 'Insurance Policy Number'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN individual.cust_id IS
    'customer id'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN individual.drv_license_no IS
    ' Driver License Number'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN individual.ins_cmp_name IS
    'Insurance Company Name'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN individual.ins_pol_no IS
    'Insurance Policy Number'; */

ALTER TABLE individual ADD CONSTRAINT individual_pk PRIMARY KEY ( cust_id );

ALTER TABLE individual ADD CONSTRAINT individual_pkv1 UNIQUE ( drv_license_no );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE jc_card_type ( 
--  CARD TYPE ID
    card_type_id INT NOT NULL COMMENT 'CARD TYPE ID', 
--  card type name
    type_name    VARCHAR(30) NOT NULL COMMENT 'card type name'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_card_type.card_type_id IS
    'CARD TYPE ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_card_type.type_name IS
    'card type name'; */

ALTER TABLE jc_card_type ADD CONSTRAINT jc_card_type_pk PRIMARY KEY ( card_type_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE jc_customer ( 
--  customer id
    cust_id   INT NOT NULL COMMENT 'customer id', 
-- SQLINES DEMO *** ame
    fname     VARCHAR(30) NOT NULL COMMENT 'customer first name', 
--  customer last name
    lname     VARCHAR(30) NOT NULL COMMENT 'customer last name', 
--  customer street
    street    VARCHAR(30) NOT NULL COMMENT 'customer street', 
--  customer city
    city      VARCHAR(20) NOT NULL COMMENT 'customer city', 
--  customer state
    state     VARCHAR(30) NOT NULL COMMENT 'customer state', 
--  customer zipcode
    zipcode   VARCHAR(10) NOT NULL COMMENT 'customer zipcode', 
-- SQLINES DEMO *** umber
    phone_no  VARCHAR(12) NOT NULL COMMENT 'customer phone number', 
--  customer email
    email     VARCHAR(50) NOT NULL COMMENT 'customer email', 
--  customer type
    cust_type VARCHAR(1) NOT NULL COMMENT 'customer type'
);

ALTER TABLE jc_customer
    ADD CONSTRAINT ch_inh_jc_customer CHECK ( cust_type IN ( 'C', 'I' ) );

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_customer.cust_id IS
    'customer id'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_customer.fname IS
    'customer first name'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_customer.lname IS
    'customer last name'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_customer.street IS
    'customer street'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_customer.city IS
    'customer city'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_customer.state IS
    'customer state'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_customer.zipcode IS
    'customer zipcode'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_customer.phone_no IS
    'customer phone number'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_customer.email IS
    'customer email'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_customer.cust_type IS
    'customer type'; */

ALTER TABLE jc_customer ADD CONSTRAINT jc_customer_pk PRIMARY KEY ( cust_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE jc_discount ( 
--  discount id
    discount_id   INT NOT NULL COMMENT 'discount id', 
--  discount type
    discount_type VARCHAR(1) NOT NULL COMMENT 'discount type'
);

ALTER TABLE jc_discount
    ADD CONSTRAINT ch_inh_jc_discount CHECK ( discount_type IN ( 'C', 'I' ) );

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_discount.discount_id IS
    'discount id'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_discount.discount_type IS
    'discount type'; */

ALTER TABLE jc_discount ADD CONSTRAINT jc_discount_pk PRIMARY KEY ( discount_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE jc_invoice ( 
--  Invoice id
    invoice_id     INT NOT NULL COMMENT 'Invoice id', 
--  INVOICE DATE
    invoice_date   DATETIME NOT NULL COMMENT 'INVOICE DATE', 
--  INVOICE AMOUNT
    invoice_amount DECIMAL(7, 2) NOT NULL COMMENT 'INVOICE AMOUNT', 
--  service id
    service_id     INT NOT NULL COMMENT 'service id'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_invoice.invoice_id IS
    'Invoice id'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_invoice.invoice_date IS
    'INVOICE DATE'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_invoice.invoice_amount IS
    'INVOICE AMOUNT'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_invoice.service_id IS
    'service id'; */

ALTER TABLE jc_invoice ADD CONSTRAINT jc_invoice_pk PRIMARY KEY ( invoice_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE jc_loc ( 
--  office location
    loc_id   SMALLINT NOT NULL COMMENT 'office location', 
-- SQLINES DEMO *** street
    street   VARCHAR(30) NOT NULL COMMENT 'office location street', 
-- SQLINES DEMO *** city
    city     VARCHAR(30) NOT NULL COMMENT 'office location city', 
--  location state
    state    VARCHAR(30) NOT NULL COMMENT 'office location state', 
-- SQLINES DEMO *** zipcode
    zipcode  VARCHAR(10) NOT NULL COMMENT 'office location zipcode', 
-- SQLINES DEMO *** ber
    phone_no VARCHAR(12) NOT NULL COMMENT 'office phone number'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_loc.loc_id IS
    'office location'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_loc.street IS
    'office location street'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_loc.city IS
    'office location city'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_loc.state IS
    'office location state'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_loc.zipcode IS
    'office location zipcode'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_loc.phone_no IS
    'office phone number'; */

ALTER TABLE jc_loc ADD CONSTRAINT jc_loc_pk PRIMARY KEY ( loc_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE jc_payment ( 
--  PAYMENT ID
    payment_id   INT NOT NULL COMMENT 'PAYMENT ID', 
--  PAYMENT DATE
    payment_date DATETIME NOT NULL COMMENT 'PAYMENT DATE', 
--  card number
    card_no      BIGINT NOT NULL COMMENT 'card number', 
--  invoice id
    invoice_id   INT NOT NULL COMMENT 'invoice id',
    cvv          SMALLINT NOT NULL COMMENT 'CVV', 
--  card type id
    card_type_id INT NOT NULL COMMENT 'card type id'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_payment.payment_id IS
    'PAYMENT ID'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_payment.payment_date IS
    'PAYMENT DATE'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_payment.card_no IS
    'card number'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_payment.invoice_id IS
    'invoice id'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_payment.cvv IS
    'CVV'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_payment.card_type_id IS
    'card type id'; */

ALTER TABLE jc_payment ADD CONSTRAINT jc_payment_pk PRIMARY KEY ( payment_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE jc_service ( 
--  rent service id
    service_id  INT NOT NULL COMMENT 'rent service id', 
-- SQLINES DEMO *** s number
    days_no     TINYINT NOT NULL COMMENT 'rent service days number', 
-- SQLINES DEMO *** rt odometer
    start_odo   INT NOT NULL COMMENT 'rent service start odometer', 
-- SQLINES DEMO ***  odometer
    end_odo     INT NOT NULL COMMENT 'rent service end odometer', 
--  pickup location
    pickup_loc  SMALLINT NOT NULL COMMENT 'pickup location', 
--  dropoff location
    dropoff_loc SMALLINT NOT NULL COMMENT 'dropoff location', 
--  discount id
    discount_id INT NOT NULL COMMENT 'discount id', 
--  customer id
    cust_id     INT NOT NULL
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_service.service_id IS
    'rent service id'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_service.days_no IS
    'rent service days number'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_service.start_odo IS
    'rent service start odometer'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_service.end_odo IS
    'rent service end odometer'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_service.pickup_loc IS
    'pickup location'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_service.dropoff_loc IS
    'dropoff location'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_service.discount_id IS
    'discount id'; */

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE UNIQUE INDEX jc_service__idx ON
    jc_service (
        discount_id
    ASC );

ALTER TABLE jc_service ADD CONSTRAINT jc_service_pk PRIMARY KEY ( service_id );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE jc_vehicle ( 
-- SQLINES DEMO *** cation Number
    vehicle_vin      VARCHAR(17) NOT NULL COMMENT 'Vehicle Identification Number', 
--  VEHICLE MAKE
    vehicle_make     VARCHAR(30) NOT NULL COMMENT 'VEHICLE MAKE', 
--  VEHICLE MODEL
    vehicle_model    VARCHAR(30) NOT NULL COMMENT 'VEHICLE MODEL', 
--  VEHICLE YEAR
    vehicle_year     SMALLINT NOT NULL COMMENT 'VEHICLE YEAR', 
-- SQLINES DEMO *** MBER
    license_plate_no VARCHAR(8) NOT NULL COMMENT 'LICENSE PLATE NUMBER', 
--  location id
    loc_id           SMALLINT NOT NULL COMMENT 'location id', 
--  vehicle id
    vehicle_id       INT NOT NULL COMMENT 'vehicle id'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_vehicle.vehicle_vin IS
    'Vehicle Identification Number'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_vehicle.vehicle_make IS
    'VEHICLE MAKE'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_vehicle.vehicle_model IS
    'VEHICLE MODEL'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_vehicle.vehicle_year IS
    'VEHICLE YEAR'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_vehicle.license_plate_no IS
    'LICENSE PLATE NUMBER'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_vehicle.loc_id IS
    'location id'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_vehicle.vehicle_id IS
    'vehicle id'; */

ALTER TABLE jc_vehicle ADD CONSTRAINT jc_vehicle_pk PRIMARY KEY ( vehicle_vin );

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE jc_vehicle_class ( 
--  vehicle class id
    vehicle_id        INT NOT NULL COMMENT 'vehicle class id', 
--  vehicle type
    vehicle_type      VARCHAR(30) NOT NULL COMMENT 'vehicle type', 
-- SQLINES DEMO *** day
    daily_rate        DECIMAL(5, 2) NOT NULL COMMENT 'rental rate per day', 
-- SQLINES DEMO *** leage per day
    over_mileage_rate DECIMAL(4, 2) NOT NULL COMMENT 'fees for over mileage per day', 
--  odometer limit
    odo_limit         SMALLINT NOT NULL COMMENT 'odometer limit', 
--  service id
    service_id        INT NOT NULL COMMENT 'service id'
);

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_vehicle_class.vehicle_id IS
    'vehicle class id'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_vehicle_class.vehicle_type IS
    'vehicle type'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_vehicle_class.daily_rate IS
    'rental rate per day'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_vehicle_class.over_mileage_rate IS
    'fees for over mileage per day'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_vehicle_class.odo_limit IS
    'odometer limit'; */

/* Moved to CREATE TABLE
COMMENT ON COLUMN jc_vehicle_class.service_id IS
    'service id'; */

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

-- SQLINES LICENSE FOR EVALUATION USE ONLY
DROP TRIGGER IF EXISTS arc_fkarc_4_discount_indi;

DELIMITER //

CREATE TRIGGER arc_fkarc_4_discount_indi BEFORE
    INSERT OR UPDATE OF discount_id ON discount_indi
    FOR EACH ROW
    DECLARE d VARCHAR(1);
BEGIN
    SELECT
        a.discount_type
    INTO d
    FROM
        jc_discount a
    WHERE
        a.discount_id = new.discount_id;

    IF ( d IS NULL OR d <> 'I' ) THEN
        raise_application_error(-20223, 'FK DISCOUNT_INDI_JC_DISCOUNT_FK in Table DISCOUNT_INDI violates Arc constraint on Table JC_DISCOUNT - discriminator column DISCOUNT_TYPE doesn''t have value ''I'''
        );
    END IF;

    DECLARE EXIT HANDLER FOR not found BEGIN
        NULL;
    END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN
        RESIGNAL;
    END;
END;
//

DELIMITER ;



-- SQLINES LICENSE FOR EVALUATION USE ONLY
DROP TRIGGER IF EXISTS arc_fkarc_4_discount_corp;

DELIMITER //

CREATE TRIGGER arc_fkarc_4_discount_corp BEFORE
    INSERT OR UPDATE OF discount_id ON discount_corp
    FOR EACH ROW
    DECLARE d VARCHAR(1);
BEGIN
    SELECT
        a.discount_type
    INTO d
    FROM
        jc_discount a
    WHERE
        a.discount_id = new.discount_id;

    IF ( d IS NULL OR d <> 'C' ) THEN
        raise_application_error(-20223, 'FK DISCOUNT_CORP_JC_DISCOUNT_FK in Table DISCOUNT_CORP violates Arc constraint on Table JC_DISCOUNT - discriminator column DISCOUNT_TYPE doesn''t have value ''C'''
        );
    END IF;

    DECLARE EXIT HANDLER FOR not found BEGIN
        NULL;
    END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN
        RESIGNAL;
    END;
END;
//

DELIMITER ;



-- SQLINES LICENSE FOR EVALUATION USE ONLY
DROP TRIGGER IF EXISTS arc_fkarc_3_corporate;

DELIMITER //

CREATE TRIGGER arc_fkarc_3_corporate BEFORE
    INSERT OR UPDATE OF cust_id ON corporate
    FOR EACH ROW
    DECLARE d VARCHAR(1);
BEGIN
    SELECT
        a.cust_type
    INTO d
    FROM
        jc_customer a
    WHERE
        a.cust_id = new.cust_id;

    IF ( d IS NULL OR d <> 'C' ) THEN
        raise_application_error(-20223, 'FK CORPORATE_JC_CUSTOMER_FK in Table CORPORATE violates Arc constraint on Table JC_CUSTOMER - discriminator column CUST_TYPE doesn''t have value ''C'''
        );
    END IF;

    DECLARE EXIT HANDLER FOR not found BEGIN
        NULL;
    END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN
        RESIGNAL;
    END;
END;
//

DELIMITER ;



-- SQLINES LICENSE FOR EVALUATION USE ONLY
DROP TRIGGER IF EXISTS arc_fkarc_3_individual;

DELIMITER //

CREATE TRIGGER arc_fkarc_3_individual BEFORE
    INSERT OR UPDATE OF cust_id ON individual
    FOR EACH ROW
    DECLARE d VARCHAR(1);
BEGIN
    SELECT
        a.cust_type
    INTO d
    FROM
        jc_customer a
    WHERE
        a.cust_id = new.cust_id;

    IF ( d IS NULL OR d <> 'I' ) THEN
        raise_application_error(-20223, 'FK INDIVIDUAL_JC_CUSTOMER_FK in Table INDIVIDUAL violates Arc constraint on Table JC_CUSTOMER - discriminator column CUST_TYPE doesn''t have value ''I'''
        );
    END IF;

    DECLARE EXIT HANDLER FOR not found BEGIN
        NULL;
    END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN
        RESIGNAL;
    END;
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
