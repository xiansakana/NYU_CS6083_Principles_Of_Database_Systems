INSERT INTO jc_loc (loc_id, city, street, state, zipcode, phone_no) VALUES (1, 'Jersey City', '201 PROSPECT ST', 'NJ', '07306', '735-428-8435');
INSERT INTO jc_loc (loc_id, city, street, state, zipcode, phone_no) VALUES (2, 'Manhattan', '456 Elm Street', 'NY', '10013', '542-416-1864');
INSERT INTO jc_loc (loc_id, city, street, state, zipcode, phone_no) VALUES (3, 'San Diego', '3881 SEDGWICK AVE', 'CA', '92101', '743-410-3542');
INSERT INTO jc_loc (loc_id, city, street, state, zipcode, phone_no) VALUES (4, 'Modesto', '1 BARBARA RD', 'OH', '95354', '150-348-8020');
INSERT INTO jc_loc (loc_id, city, street, state, zipcode, phone_no) VALUES (5, 'Riverside', '107 CLARENDON RD', 'MN', '92501', '848-181-4610');
INSERT INTO jc_loc (loc_id, city, street, state, zipcode, phone_no) VALUES (6, 'Anaheim', '1 VERNON ST', 'GA', '92803', '105-543-3570');
INSERT INTO jc_loc (loc_id, city, street, state, zipcode, phone_no) VALUES (7, 'Irvine', '150 BRABANT ST', 'FL', '92612', '135-654-3418');
INSERT INTO jc_loc (loc_id, city, street, state, zipcode, phone_no) VALUES (8, 'Fresno', '6 W 107TH ST', 'CT', '93701', '843-420-2345');
INSERT INTO jc_loc (loc_id, city, street, state, zipcode, phone_no) VALUES (9, 'Long Beach', '35 TRENT CT', 'SD', '90801', '405-345-3458');
INSERT INTO jc_loc (loc_id, city, street, state, zipcode, phone_no) VALUES (10, 'Los Angeles', '13 Main Street', 'LA', '90802', '435-802-1505')


INSERT INTO jc_discount (discount_id, discount_type) VALUES (1, 'C');
INSERT INTO jc_discount (discount_id, discount_type) VALUES (2, 'C');
INSERT INTO jc_discount (discount_id, discount_type) VALUES (3, 'C');
INSERT INTO jc_discount (discount_id, discount_type) VALUES (4, 'C');
INSERT INTO jc_discount (discount_id, discount_type) VALUES (5, 'C');
INSERT INTO jc_discount (discount_id, discount_type) VALUES (6, 'C');
INSERT INTO jc_discount (discount_id, discount_type) VALUES (7, 'C');
INSERT INTO jc_discount (discount_id, discount_type) VALUES (8, 'C');
INSERT INTO jc_discount (discount_id, discount_type) VALUES (9, 'C');
INSERT INTO jc_discount (discount_id, discount_type) VALUES (10, 'C');
INSERT INTO jc_discount (discount_id, discount_type) VALUES (11, 'I');
INSERT INTO jc_discount (discount_id, discount_type) VALUES (12, 'I');
INSERT INTO jc_discount (discount_id, discount_type) VALUES (13, 'I');
INSERT INTO jc_discount (discount_id, discount_type) VALUES (14, 'I');
INSERT INTO jc_discount (discount_id, discount_type) VALUES (15, 'I');
INSERT INTO jc_discount (discount_id, discount_type) VALUES (16, 'I');
INSERT INTO jc_discount (discount_id, discount_type) VALUES (17, 'I');
INSERT INTO jc_discount (discount_id, discount_type) VALUES (18, 'I');
INSERT INTO jc_discount (discount_id, discount_type) VALUES (19, 'I');
INSERT INTO jc_discount (discount_id, discount_type) VALUES (20, 'I');


INSERT INTO discount_corp (discount_id, disc_perc, corp_name) VALUES (1, 10, 'Acme Corporation');
INSERT INTO discount_corp (discount_id, disc_perc, corp_name) VALUES (2, 15, 'Initech');
INSERT INTO discount_corp (discount_id, disc_perc, corp_name) VALUES (3, 20, 'Wayne Enterprises');
INSERT INTO discount_corp (discount_id, disc_perc, corp_name) VALUES (4, 25,  'LexCorp');
INSERT INTO discount_corp (discount_id, disc_perc, corp_name) VALUES (5, 30, 'Stark Industries');
INSERT INTO discount_corp (discount_id, disc_perc, corp_name) VALUES (6, 35, 'Umbrella Corporation');
INSERT INTO discount_corp (discount_id, disc_perc, corp_name) VALUES (7, 40, 'Google');
INSERT INTO discount_corp (discount_id, disc_perc, corp_name) VALUES (8, 45, 'Microsoft');
INSERT INTO discount_corp (discount_id, disc_perc, corp_name) VALUES (9, 50, 'Apple');
INSERT INTO discount_corp (discount_id, disc_perc, corp_name) VALUES (10, 55, 'Amazon');


INSERT INTO discount_indi (discount_id, disc_perc, start_date, end_date) VALUES (11, 60, TO_DATE('08/01/2023', 'MM/DD/YYYY'), TO_DATE('11/21/2023', 'MM/DD/YYYY'));
INSERT INTO discount_indi (discount_id, disc_perc, start_date, end_date) VALUES (12, 65, TO_DATE('09/10/2023', 'MM/DD/YYYY'), TO_DATE('12/25/2023', 'MM/DD/YYYY'));
INSERT INTO discount_indi (discount_id, disc_perc, start_date, end_date) VALUES (13, 15, TO_DATE('10/01/2023', 'MM/DD/YYYY'), TO_DATE('11/18/2023', 'MM/DD/YYYY'));
INSERT INTO discount_indi (discount_id, disc_perc, start_date, end_date) VALUES (14, 25, TO_DATE('10/08/2023', 'MM/DD/YYYY'), TO_DATE('11/24/2023', 'MM/DD/YYYY'));
INSERT INTO discount_indi (discount_id, disc_perc, start_date, end_date) VALUES (15, 12, TO_DATE('10/15/2023', 'MM/DD/YYYY'), TO_DATE('11/25/2023', 'MM/DD/YYYY'));
INSERT INTO discount_indi (discount_id, disc_perc, start_date, end_date) VALUES (16, 35, TO_DATE('10/23/2023', 'MM/DD/YYYY'), TO_DATE('11/29/2023', 'MM/DD/YYYY'));
INSERT INTO discount_indi (discount_id, disc_perc, start_date, end_date) VALUES (17, 11, TO_DATE('11/01/2023', 'MM/DD/YYYY'), TO_DATE('01/21/2024', 'MM/DD/YYYY'));
INSERT INTO discount_indi (discount_id, disc_perc, start_date, end_date) VALUES (18, 18, TO_DATE('11/01/2023', 'MM/DD/YYYY'), TO_DATE('01/27/2024', 'MM/DD/YYYY'));
INSERT INTO discount_indi (discount_id, disc_perc, start_date, end_date) VALUES (19, 22, TO_DATE('11/01/2023', 'MM/DD/YYYY'), TO_DATE('01/25/2024', 'MM/DD/YYYY'));
INSERT INTO discount_indi (discount_id, disc_perc, start_date, end_date) VALUES (20, 16, TO_DATE('11/01/2023', 'MM/DD/YYYY'), TO_DATE('02/12/2024', 'MM/DD/YYYY'));



INSERT INTO jc_customer (cust_id, fname, lname, street, city, state, zipcode, phone_no, email, cust_type) VALUES (1, 'David', 'Doe', '123 Main Street', 'Los Angeles', 'CA', 14886, '123-456-7890', 'David.Doe@example.com', 'C');
INSERT INTO jc_customer (cust_id, fname, lname, street, city, state, zipcode, phone_no, email, cust_type) VALUES (2, 'Jane', 'Brown', '456 Elm Street', 'Jersey City', 'NJ', 59641, '987-654-3210', 'Jane.Brown@example.com', 'C');
INSERT INTO jc_customer (cust_id, fname, lname, street, city, state, zipcode, phone_no, email, cust_type) VALUES (3, 'Mary', 'Williams', '789 Oak Street', 'San Diego', 'CA', 23233, '987-453-3210', 'Mary.Williams@example.com', 'C');
INSERT INTO jc_customer (cust_id, fname, lname, street, city, state, zipcode, phone_no, email, cust_type) VALUES (4, 'Linda', 'Smith', '1 SAGE PL', 'Manhanttan', 'NY', 16642, '456-789-0183', 'Linda.Smith@example.com', 'C');
INSERT INTO jc_customer (cust_id, fname, lname, street, city, state, zipcode, phone_no, email, cust_type) VALUES (5, 'Patricia', 'Brown', '900 AVENUE C', 'Fresno', 'CA', 69840, '456-754-0123', 'Patricia.Brown@example.com', 'C');
INSERT INTO jc_customer (cust_id, fname, lname, street, city, state, zipcode, phone_no, email, cust_type) VALUES (6, 'Jane', 'Garcia', '301 HULSE LANDING RD', 'Modesto', 'CA', 54530, '987-654-8643', 'Jane.Garcia@example.com', 'C');
INSERT INTO jc_customer (cust_id, fname, lname, street, city, state, zipcode, phone_no, email, cust_type) VALUES (7, 'William', 'Williams', '1125 ROUTE 112', 'Riverside', 'CA', 84818, '789-012-3456', 'William.Williams@example.com', 'C');
INSERT INTO jc_customer (cust_id, fname, lname, street, city, state, zipcode, phone_no, email, cust_type) VALUES (8, 'David', 'Brown', '700 GARNSEY RD', 'Long Beach', 'CA', 90106, '789-012-8466', 'David.Brown@example.com', 'C');
INSERT INTO jc_customer (cust_id, fname, lname, street, city, state, zipcode, phone_no, email, cust_type) VALUES (9, 'Susan', 'Williams', '8 TWISTING DR', 'Anaheim', 'CA', 41109, '184-456-7890', 'Susan.Williams@example.com', 'C');
INSERT INTO jc_customer (cust_id, fname, lname, street, city, state, zipcode, phone_no, email, cust_type) VALUES (10, 'William', 'Jones', '9162 HIGH BRIDGE RD', 'Irvine', 'CA', 68815, '789-012-4256', 'William.Jones@example.com', 'C');
INSERT INTO jc_customer (cust_id, fname, lname, street, city, state, zipcode, phone_no, email, cust_type) VALUES (11, 'Emily', 'Davis', '2436 Naples Avenue', 'Panama City', 'FL', 32405, '133-456-7890', 'Emily.Davis@example.com', 'I');
INSERT INTO jc_customer (cust_id, fname, lname, street, city, state, zipcode, phone_no, email, cust_type) VALUES (12, 'Ryan', 'Mitchell', '1030 E Main St', 'Benton Harbor', 'MI', 49022, '438-654-3210', 'Ryan.Mitchell@example.com', 'I');
INSERT INTO jc_customer (cust_id, fname, lname, street, city, state, zipcode, phone_no, email, cust_type) VALUES (13, 'Olivia', 'Garcia', '244 W 109TH ST', 'Brooklyn', 'NY', 10025, '450-654-3210', 'Olivia.Garcia@example.com', 'I');
INSERT INTO jc_customer (cust_id, fname, lname, street, city, state, zipcode, phone_no, email, cust_type) VALUES (14, 'Ethan', 'Anderson', '1561 SHERIDAN AVE', 'Manhanttan', 'NY', 16642, '843-789-0123', 'Ethan.Anderson@example.com', 'I');
INSERT INTO jc_customer (cust_id, fname, lname, street, city, state, zipcode, phone_no, email, cust_type) VALUES (15, 'Ava', 'Taylor', '301 CAROLINE ST', 'Fresno', 'CA', 69840, '456-108-0123', 'Ava.Taylor@example.com', 'I');
INSERT INTO jc_customer (cust_id, fname, lname, street, city, state, zipcode, phone_no, email, cust_type) VALUES (16, 'Benjamin', 'Martinez', '5400 DUNNING AVE', 'Modesto', 'CA', 54530, '987-435-3210', 'Benjamin.Martinez@example.com', 'I');
INSERT INTO jc_customer (cust_id, fname, lname, street, city, state, zipcode, phone_no, email, cust_type) VALUES (17, 'Sophia', 'Brown', '73 LINDEN ST', 'Riverside', 'CA', 84818, '789-012-4851', 'Sophia.Brown@example.com', 'I');
INSERT INTO jc_customer (cust_id, fname, lname, street, city, state, zipcode, phone_no, email, cust_type) VALUES (18, 'Jackson', 'Wright', '30 SAINT JOHN ST', 'Long Beach', 'CA', 90106, '789-012-4350', 'Jackson.Wright@example.com', 'I');
INSERT INTO jc_customer (cust_id, fname, lname, street, city, state, zipcode, phone_no, email, cust_type) VALUES (19, 'Mia', 'Robinson', '482 VAN DUZER ST', 'Anaheim', 'CA', 41109, '123-456-1571', 'Mia.Robinson@example.com', 'I');
INSERT INTO jc_customer (cust_id, fname, lname, street, city, state, zipcode, phone_no, email, cust_type) VALUES (20, 'Noah', 'Adams', '723 BROWN ST', 'Irvine', 'CA', 68815, '789-012-4287', 'Noah.Adams@example.com', 'I');



INSERT INTO jc_service (service_id, days_no, start_odo, end_odo, pickup_loc, dropoff_loc, discount_id, cust_id) VALUES (1, 2, 10000, 10500, 1, 2, 1, 1);
INSERT INTO jc_service (service_id, days_no, start_odo, end_odo, pickup_loc, dropoff_loc, discount_id, cust_id) VALUES (2, 1, 12000, 12700, 3, 4, 2, 2);
INSERT INTO jc_service (service_id, days_no, start_odo, end_odo, pickup_loc, dropoff_loc, discount_id, cust_id) VALUES (3, 2, 14000, 14500, 5, 6, 3, 3);
INSERT INTO jc_service (service_id, days_no, start_odo, end_odo, pickup_loc, dropoff_loc, discount_id, cust_id) VALUES (4, 6, 16000, 16700, 7, 8, 4, 4);
INSERT INTO jc_service (service_id, days_no, start_odo, end_odo, pickup_loc, dropoff_loc, discount_id, cust_id) VALUES (5, 2, 18000, 18500, 9, 10, 5, 5);
INSERT INTO jc_service (service_id, days_no, start_odo, end_odo, pickup_loc, dropoff_loc, discount_id, cust_id) VALUES (6, 3, 20000, 20700, 1, 3, 6, 6);
INSERT INTO jc_service (service_id, days_no, start_odo, end_odo, pickup_loc, dropoff_loc, discount_id, cust_id) VALUES (7, 5, 22000, 22700, 3, 5, 7, 7);
INSERT INTO jc_service (service_id, days_no, start_odo, end_odo, pickup_loc, dropoff_loc, discount_id, cust_id) VALUES (8, 3, 24000, 24700, 5, 10, 8, 8);
INSERT INTO jc_service (service_id, days_no, start_odo, end_odo, pickup_loc, dropoff_loc, discount_id, cust_id) VALUES (9, 2, 26000, 26700, 7, 9, 9, 9);
INSERT INTO jc_service (service_id, days_no, start_odo, end_odo, pickup_loc, dropoff_loc, discount_id, cust_id) VALUES (10, 7, 28000, 29000, 4, 1, 10, 10);
INSERT INTO jc_service (service_id, days_no, start_odo, end_odo, pickup_loc, dropoff_loc, discount_id, cust_id) VALUES (11, 2, 30000, 30800, 5, 7, 11, 11);
INSERT INTO jc_service (service_id, days_no, start_odo, end_odo, pickup_loc, dropoff_loc, discount_id, cust_id) VALUES (12, 5, 50000, 52000, 2, 8, 12, 12);
INSERT INTO jc_service (service_id, days_no, start_odo, end_odo, pickup_loc, dropoff_loc, discount_id, cust_id) VALUES (13, 2, 58000, 58500, 9, 1, 13, 13);
INSERT INTO jc_service (service_id, days_no, start_odo, end_odo, pickup_loc, dropoff_loc, discount_id, cust_id) VALUES (14, 4, 84000, 86000, 8, 1, 14, 14);
INSERT INTO jc_service (service_id, days_no, start_odo, end_odo, pickup_loc, dropoff_loc, discount_id, cust_id) VALUES (15, 2, 95000, 96500, 4, 7, 15, 15);
INSERT INTO jc_service (service_id, days_no, start_odo, end_odo, pickup_loc, dropoff_loc, discount_id, cust_id) VALUES (16, 7, 18000, 19000, 10, 1, 16, 16);
INSERT INTO jc_service (service_id, days_no, start_odo, end_odo, pickup_loc, dropoff_loc, discount_id, cust_id) VALUES (17, 2, 10000, 10800, 5, 7, 17, 17);
INSERT INTO jc_service (service_id, days_no, start_odo, end_odo, pickup_loc, dropoff_loc, discount_id, cust_id) VALUES (18, 5, 20000, 22000, 2, 8, 18, 18);
INSERT INTO jc_service (service_id, days_no, start_odo, end_odo, pickup_loc, dropoff_loc, discount_id, cust_id) VALUES (19, 2, 78000, 78500, 9, 1, 19, 19);
INSERT INTO jc_service (service_id, days_no, start_odo, end_odo, pickup_loc, dropoff_loc, discount_id, cust_id) VALUES (20, 4, 64000, 66000, 8, 1, 20, 20);



INSERT INTO corporate (cust_id, emp_id, corp_name, reg_no) VALUES (1, 101, 'Acme Corporation', '123456789');
INSERT INTO corporate (cust_id, emp_id, corp_name, reg_no) VALUES (2, 102, 'Initech', '987654321');
INSERT INTO corporate (cust_id, emp_id, corp_name, reg_no) VALUES (3, 103, 'Wayne Enterprises', '098765432');
INSERT INTO corporate (cust_id, emp_id, corp_name, reg_no) VALUES (4, 104, 'LexCorp', '321654987');
INSERT INTO corporate (cust_id, emp_id, corp_name, reg_no) VALUES (5, 105, 'Stark Industries', '765432198');
INSERT INTO corporate (cust_id, emp_id, corp_name, reg_no) VALUES (6, 106, 'Umbrella Corporation', '321456789');
INSERT INTO corporate (cust_id, emp_id, corp_name, reg_no) VALUES (7, 107, 'Google', '987321654');
INSERT INTO corporate (cust_id, emp_id, corp_name, reg_no) VALUES (8, 108, 'Microsoft', '098216543');
INSERT INTO corporate (cust_id, emp_id, corp_name, reg_no) VALUES (9, 109, 'Apple', '216549873');
INSERT INTO corporate (cust_id, emp_id, corp_name, reg_no) VALUES (10, 110, 'Amazon', '654321987');


INSERT INTO individual (cust_id, drv_license_no, ins_cmp_name, ins_pol_no) VALUES (11, '67890', 'American Family Insurance', '0165000498730');
INSERT INTO individual (cust_id, drv_license_no, ins_cmp_name, ins_pol_no) VALUES (12, '01234', 'Mercury Insurance', '0543000219870');
INSERT INTO individual (cust_id, drv_license_no, ins_cmp_name, ins_pol_no) VALUES (13, '56789', 'Nationwide General Insurance', '0894500061230');
INSERT INTO individual (cust_id, drv_license_no, ins_cmp_name, ins_pol_no) VALUES (14, '90123', 'Erie Insurance Exchange', '9076594643210');
INSERT INTO individual (cust_id, drv_license_no, ins_cmp_name, ins_pol_no) VALUES (15, '23456', 'SFMA Insurance Company', '1234567000890');
INSERT INTO individual (cust_id, drv_license_no, ins_cmp_name, ins_pol_no) VALUES (16, '78901', 'PM Insurance Company', '9076500043210');
INSERT INTO individual (cust_id, drv_license_no, ins_cmp_name, ins_pol_no) VALUES (17, '12340', 'GG Insurance Company', '0980650004320');
INSERT INTO individual (cust_id, drv_license_no, ins_cmp_name, ins_pol_no) VALUES (18, '67895', 'APC Insurance Company', '2105490008730');
INSERT INTO individual (cust_id, drv_license_no, ins_cmp_name, ins_pol_no) VALUES (19, '85231', 'USAAC Insurance Company', '6543219000870');
INSERT INTO individual (cust_id, drv_license_no, ins_cmp_name, ins_pol_no) VALUES (20, '23450', 'NM Insurance Company', '8894561200030');


INSERT INTO jc_vehicle_class (vehicle_id, vehicle_type, daily_rate, over_mileage_rate, odo_limit, service_id) VALUES (1, 'Economy', 50.00, 1.00, 100, 1);
INSERT INTO jc_vehicle_class (vehicle_id, vehicle_type, daily_rate, over_mileage_rate, odo_limit, service_id) VALUES (2, 'Compact', 40.00, 1.00, 150, 2);
INSERT INTO jc_vehicle_class (vehicle_id, vehicle_type, daily_rate, over_mileage_rate, odo_limit, service_id) VALUES (3, 'Midsize', 55.00, 2.00, 200, 3);
INSERT INTO jc_vehicle_class (vehicle_id, vehicle_type, daily_rate, over_mileage_rate, odo_limit, service_id) VALUES (4, 'Fullsize', 65.00, 2.00, 250, 4);
INSERT INTO jc_vehicle_class (vehicle_id, vehicle_type, daily_rate, over_mileage_rate, odo_limit, service_id) VALUES (5, 'SUV', 70.00, 2.00, 300, 5);
INSERT INTO jc_vehicle_class (vehicle_id, vehicle_type, daily_rate, over_mileage_rate, odo_limit, service_id) VALUES (6, 'Van', 50.00, 2.00, 350, 6);
INSERT INTO jc_vehicle_class (vehicle_id, vehicle_type, daily_rate, over_mileage_rate, odo_limit, service_id) VALUES (7, 'Luxury', 75.00, 3.00, 400, 7);
INSERT INTO jc_vehicle_class (vehicle_id, vehicle_type, daily_rate, over_mileage_rate, odo_limit, service_id) VALUES (8, 'Sports', 60.00, 1.00, 200, 8);
INSERT INTO jc_vehicle_class (vehicle_id, vehicle_type, daily_rate, over_mileage_rate, odo_limit, service_id) VALUES (9, 'Exotic', 70.00, 4.00, 500, 9);
INSERT INTO jc_vehicle_class (vehicle_id, vehicle_type, daily_rate, over_mileage_rate, odo_limit, service_id) VALUES (10, 'Unlimited', 50.00, 2.00, 200, 10);


INSERT INTO jc_vehicle (vehicle_vin, vehicle_make, vehicle_model, vehicle_year, license_plate_no, loc_id, vehicle_id) VALUES ('34645433723964390', 'Toyota', 'Elantra', 2023, 'JKL04420', 2, 9);
INSERT INTO jc_vehicle (vehicle_vin, vehicle_make, vehicle_model, vehicle_year, license_plate_no, loc_id, vehicle_id) VALUES ('64548180238807220', 'Toyota', 'Camry', 2020, 'DEF45600', 1, 1);
INSERT INTO jc_vehicle (vehicle_vin, vehicle_make, vehicle_model, vehicle_year, license_plate_no, loc_id, vehicle_id) VALUES ('25242520074326360', 'Honda', 'Elantra', 2023, 'JKL01200', 3, 3);
INSERT INTO jc_vehicle (vehicle_vin, vehicle_make, vehicle_model, vehicle_year, license_plate_no, loc_id, vehicle_id) VALUES ('20635667483605990', 'Toyota', 'Camry', 2023, 'GHI78900', 4, 6);
INSERT INTO jc_vehicle (vehicle_vin, vehicle_make, vehicle_model, vehicle_year, license_plate_no, loc_id, vehicle_id) VALUES ('77807017992587660', 'Honda', 'Accord', 2022, 'ABC12300', 1, 2);
INSERT INTO jc_vehicle (vehicle_vin, vehicle_make, vehicle_model, vehicle_year, license_plate_no, loc_id, vehicle_id) VALUES ('93972144626475160', 'Honda', 'Accord', 2021, 'GHI74055', 1, 4);
INSERT INTO jc_vehicle (vehicle_vin, vehicle_make, vehicle_model, vehicle_year, license_plate_no, loc_id, vehicle_id) VALUES ('93630501216869070', 'Hyundai', 'Altima', 2020, 'JKL00570', 3, 5);
INSERT INTO jc_vehicle (vehicle_vin, vehicle_make, vehicle_model, vehicle_year, license_plate_no, loc_id, vehicle_id) VALUES ('38068192468764550', 'Honda', 'Elantra', 2022, 'GHI74020', 2, 4);
INSERT INTO jc_vehicle (vehicle_vin, vehicle_make, vehicle_model, vehicle_year, license_plate_no, loc_id, vehicle_id) VALUES ('96000604123026110', 'Toyota', 'Altima', 2021, 'JKL04050', 1, 6);
INSERT INTO jc_vehicle (vehicle_vin, vehicle_make, vehicle_model, vehicle_year, license_plate_no, loc_id, vehicle_id) VALUES ('88558226746779550', 'Honda', 'Elantra', 2021, 'JKL05000', 4, 5);
INSERT INTO jc_vehicle (vehicle_vin, vehicle_make, vehicle_model, vehicle_year, license_plate_no, loc_id, vehicle_id) VALUES ('84759324439018280', 'Honda', 'Camry', 2022, 'ABC17600', 4, 1);
INSERT INTO jc_vehicle (vehicle_vin, vehicle_make, vehicle_model, vehicle_year, license_plate_no, loc_id, vehicle_id) VALUES ('18802705293939440', 'Nissan', 'Altima', 2023, 'JKL04100', 2, 10);
INSERT INTO jc_vehicle (vehicle_vin, vehicle_make, vehicle_model, vehicle_year, license_plate_no, loc_id, vehicle_id) VALUES ('70108202227182780', 'Nissan', 'Camry', 2022, 'DEF50542', 1, 5);
INSERT INTO jc_vehicle (vehicle_vin, vehicle_make, vehicle_model, vehicle_year, license_plate_no, loc_id, vehicle_id) VALUES ('56473604679613320', 'Honda', 'Accord', 2022, 'DEF18105', 3, 7);
INSERT INTO jc_vehicle (vehicle_vin, vehicle_make, vehicle_model, vehicle_year, license_plate_no, loc_id, vehicle_id) VALUES ('91044619254230110', 'Hyundai', 'Camry', 2021, 'DEF40273', 5, 6);
INSERT INTO jc_vehicle (vehicle_vin, vehicle_make, vehicle_model, vehicle_year, license_plate_no, loc_id, vehicle_id) VALUES ('96476313716194310', 'Honda', 'Altima', 2023, 'ABC10573', 3, 1);
INSERT INTO jc_vehicle (vehicle_vin, vehicle_make, vehicle_model, vehicle_year, license_plate_no, loc_id, vehicle_id) VALUES ('56710278506513240', 'Hyundai', 'Accord', 2023, 'GHI46020', 4, 2);
INSERT INTO jc_vehicle (vehicle_vin, vehicle_make, vehicle_model, vehicle_year, license_plate_no, loc_id, vehicle_id) VALUES ('36417030095670650', 'Toyota', 'Elantra', 2020, 'GHI71010', 2, 2);
INSERT INTO jc_vehicle (vehicle_vin, vehicle_make, vehicle_model, vehicle_year, license_plate_no, loc_id, vehicle_id) VALUES ('40061061306428900', 'Toyota', 'Elantra', 2021, 'ABC18800', 2, 8);
INSERT INTO jc_vehicle (vehicle_vin, vehicle_make, vehicle_model, vehicle_year, license_plate_no, loc_id, vehicle_id) VALUES ('39787974838173440', 'Hyundai', 'Accord', 2020, 'JKL02400', 3, 7);


INSERT INTO jc_invoice (invoice_id, invoice_date, invoice_amount, service_id) VALUES (1, TO_DATE('11/1/2023', 'MM/DD/YYYY'), 286.05, 20);
INSERT INTO jc_invoice (invoice_id, invoice_date, invoice_amount, service_id) VALUES (2, TO_DATE('11/1/2023', 'MM/DD/YYYY'), 260.32, 18);
INSERT INTO jc_invoice (invoice_id, invoice_date, invoice_amount, service_id) VALUES (3, TO_DATE('11/2/2023', 'MM/DD/YYYY'), 458.65, 19);
INSERT INTO jc_invoice (invoice_id, invoice_date, invoice_amount, service_id) VALUES (4, TO_DATE('11/3/2023', 'MM/DD/YYYY'), 364.14, 1);
INSERT INTO jc_invoice (invoice_id, invoice_date, invoice_amount, service_id) VALUES (5, TO_DATE('11/5/2023', 'MM/DD/YYYY'), 176.61, 2);
INSERT INTO jc_invoice (invoice_id, invoice_date, invoice_amount, service_id) VALUES (6, TO_DATE('11/5/2023', 'MM/DD/YYYY'), 412.26, 17);
INSERT INTO jc_invoice (invoice_id, invoice_date, invoice_amount, service_id) VALUES (7, TO_DATE('11/7/2023', 'MM/DD/YYYY'), 424.74, 16);
INSERT INTO jc_invoice (invoice_id, invoice_date, invoice_amount, service_id) VALUES (8, TO_DATE('11/7/2023', 'MM/DD/YYYY'), 120.17, 3);
INSERT INTO jc_invoice (invoice_id, invoice_date, invoice_amount, service_id) VALUES (9, TO_DATE('11/7/2023', 'MM/DD/YYYY'), 365.60, 4);
INSERT INTO jc_invoice (invoice_id, invoice_date, invoice_amount, service_id) VALUES (10, TO_DATE('11/8/2023', 'MM/DD/YYYY'), 401.10, 15);
INSERT INTO jc_invoice (invoice_id, invoice_date, invoice_amount, service_id) VALUES (11, TO_DATE('11/9/2023', 'MM/DD/YYYY'), 491.33, 9);
INSERT INTO jc_invoice (invoice_id, invoice_date, invoice_amount, service_id) VALUES (12, TO_DATE('11/10/2023', 'MM/DD/YYYY'), 390.93, 5);
INSERT INTO jc_invoice (invoice_id, invoice_date, invoice_amount, service_id) VALUES (13, TO_DATE('11/10/2023', 'MM/DD/YYYY'), 486.97, 6);
INSERT INTO jc_invoice (invoice_id, invoice_date, invoice_amount, service_id) VALUES (14, TO_DATE('11/10/2023', 'MM/DD/YYYY'), 351.70, 13);
INSERT INTO jc_invoice (invoice_id, invoice_date, invoice_amount, service_id) VALUES (15, TO_DATE('11/11/2023', 'MM/DD/YYYY'), 251.70, 14);
INSERT INTO jc_invoice (invoice_id, invoice_date, invoice_amount, service_id) VALUES (16, TO_DATE('11/12/2023', 'MM/DD/YYYY'), 428.99, 7);
INSERT INTO jc_invoice (invoice_id, invoice_date, invoice_amount, service_id) VALUES (17, TO_DATE('11/13/2023', 'MM/DD/YYYY'), 183.92, 8);
INSERT INTO jc_invoice (invoice_id, invoice_date, invoice_amount, service_id) VALUES (18, TO_DATE('11/14/2023', 'MM/DD/YYYY'), 114.53, 12) ;
INSERT INTO jc_invoice (invoice_id, invoice_date, invoice_amount, service_id) VALUES (19, TO_DATE('11/14/2023', 'MM/DD/YYYY'), 362.90, 11);
INSERT INTO jc_invoice (invoice_id, invoice_date, invoice_amount, service_id) VALUES (20, TO_DATE('11/15/2023', 'MM/DD/YYYY'), 172.14, 10);


INSERT INTO jc_card_type (card_type_id, type_name) VALUES (1, 'Visa'); 
INSERT INTO jc_card_type (card_type_id, type_name) VALUES (2, 'Mastercard'); 
INSERT INTO jc_card_type (card_type_id, type_name) VALUES (3, 'American Express'); 
INSERT INTO jc_card_type (card_type_id, type_name) VALUES (4, 'Discover'); 
INSERT INTO jc_card_type (card_type_id, type_name) VALUES (5, 'JCB'); 
INSERT INTO jc_card_type (card_type_id, type_name) VALUES (6, 'Diners Club'); 
INSERT INTO jc_card_type (card_type_id, type_name) VALUES (7, 'Carte Blanche'); 
INSERT INTO jc_card_type (card_type_id, type_name) VALUES (8, 'China UnionPay'); 
INSERT INTO jc_card_type (card_type_id, type_name) VALUES (9, 'Maestro'); 
INSERT INTO jc_card_type (card_type_id, type_name) VALUES (10, 'Electron');




INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (1, STR_TO_DATE('11/1/2023', '%m/%d/%Y'), '5592056333172992', 1, 123, 4);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (2, STR_TO_DATE('11/12/2023', '%m/%d/%Y'), '6544036909269729', 2, 456, 5);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (3, STR_TO_DATE('11/07/2023', '%m/%d/%Y'), '5901389979804023', 3, 789, 3);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (4, STR_TO_DATE('11/12/2023', '%m/%d/%Y'), '7101689179311568', 4, 167, 1);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (5, STR_TO_DATE('11/10/2023', '%m/%d/%Y'), '1765842134041871', 5, 943, 2);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (6, STR_TO_DATE('11/08/2023', '%m/%d/%Y'), '6624503305630504', 6, 640, 4);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (7, STR_TO_DATE('11/09/2023', '%m/%d/%Y'), '4722663911676210', 7, 701, 5);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (8, STR_TO_DATE('11/12/2023', '%m/%d/%Y'), '9279689068045021', 8, 940, 3);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (9, STR_TO_DATE('11/11/2023', '%m/%d/%Y'), '4002158299984822', 9, 852, 2);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (10, STR_TO_DATE('11/13/2023', '%m/%d/%Y'), '5769850775546851', 10, 744, 2);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (11, STR_TO_DATE('11/16/2023', '%m/%d/%Y'), '1635375209274466', 11, 726, 5);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (12, STR_TO_DATE('11/19/2023', '%m/%d/%Y'), '7967389041059884', 12, 127, 5);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (13, STR_TO_DATE('11/20/2023', '%m/%d/%Y'), '3252814464085864', 13, 712, 6);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (14, STR_TO_DATE('11/21/2023', '%m/%d/%Y'), '1575499649453264', 14, 987, 4);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (15, STR_TO_DATE('11/16/2023', '%m/%d/%Y'), '8407612688356883', 15, 554, 5);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (16, STR_TO_DATE('11/18/2023', '%m/%d/%Y'), '7483665849065060', 16, 637, 8);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (17, STR_TO_DATE('11/17/2023', '%m/%d/%Y'), '7728705484790868', 17, 998, 5);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (18, STR_TO_DATE('11/20/2023', '%m/%d/%Y'), '9414730357026336', 18, 734, 3);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (19, STR_TO_DATE('11/16/2023', '%m/%d/%Y'), '2495898899739702', 19, 100, 7);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (20, STR_TO_DATE('11/17/2023', '%m/%d/%Y'), '7173884435759535', 20, 855, 5);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (21, STR_TO_DATE('11/18/2023', '%m/%d/%Y'), '9816574641576445', 15, 633, 7);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (22, STR_TO_DATE('11/19/2023', '%m/%d/%Y'), '5378327876357835', 18, 348, 8);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (23, STR_TO_DATE('11/20/2023', '%m/%d/%Y'), '7837453787534873', 19, 168, 5);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (24, STR_TO_DATE('11/21/2023', '%m/%d/%Y'), '7832453787537837', 20, 866, 9);
INSERT INTO jc_payment (payment_id, payment_date, card_no, invoice_id, CVV, card_type_id) VALUES (25, STR_TO_DATE('11/22/2023', '%m/%d/%Y'), '7854563783735743', 20, 597, 5);


