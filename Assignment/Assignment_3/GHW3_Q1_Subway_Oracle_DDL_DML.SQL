-- REPLACE ss_ to your initial. All tables must created with your initial

-- DDL 

CREATE TABLE jc_facility (
    facility_id   NUMBER(10) NOT NULL,
    facility_name VARCHAR2(20) NOT NULL
);

COMMENT ON COLUMN jc_facility.facility_id IS
    'THIS IS THE SUBWAY FACILITY ID';

COMMENT ON COLUMN jc_facility.facility_name IS
    'THIS IS THE NAME OF THE FACILITY';

ALTER TABLE jc_facility ADD CONSTRAINT facility_pk PRIMARY KEY ( facility_id );

CREATE TABLE jc_station (
    station_id      NUMBER(10) NOT NULL,
    station_name    VARCHAR2(20) NOT NULL,
    station_address VARCHAR2(30) NOT NULL,
    borough         VARCHAR2(20) NOT NULL,
    neighborhood    VARCHAR2(20) NOT NULL
);

COMMENT ON COLUMN jc_station.station_id IS
    'THIS SI THE ID OF THE STATION';

COMMENT ON COLUMN jc_station.station_name IS
    'THIS IS THE NAME OF THE STATION ';

COMMENT ON COLUMN jc_station.station_address IS
    'THIS IS THE ADDRESS OF THE STATION';

COMMENT ON COLUMN jc_station.borough IS
    'THIS IS THE NAME OF THE BOROUGH OF NYC';

COMMENT ON COLUMN jc_station.neighborhood IS
    'THIS IS THE NEIGHBORHOOD OF NYC';

ALTER TABLE jc_station ADD CONSTRAINT station_pk PRIMARY KEY ( station_id );

CREATE TABLE jc_station_facility (
    station_id         NUMBER(10) NOT NULL,
    facility_id        NUMBER(10) NOT NULL,
    number_of_facility NUMBER(10) NOT NULL
);

COMMENT ON COLUMN jc_station_facility.number_of_facility IS
    'THIS SI THE NUMBER OF FACILITIES AVAILABLE AT THE STATION ';

ALTER TABLE jc_station_facility ADD CONSTRAINT station_facility_pk PRIMARY KEY ( station_id,
                                                                                 facility_id );

CREATE TABLE jc_trainlines (
    train_id   VARCHAR2(1) NOT NULL,
    line_name  VARCHAR2(40) NOT NULL,
    division   VARCHAR2(5) NOT NULL,
    year_start NUMBER(10) NOT NULL
);

COMMENT ON COLUMN jc_trainlines.train_id IS
    'THIS IS THE TRAIN LINE ID';

COMMENT ON COLUMN jc_trainlines.line_name IS
    'THIS IS THE LINE NAME FOR THE SUBWAY';

COMMENT ON COLUMN jc_trainlines.division IS
    'THIS IS THE DIVSION OF THE SUBWAY';

COMMENT ON COLUMN jc_trainlines.year_start IS
    'THIS IS THE NUMBER OF YEARS THE TRAIN IN OPERATION ';

ALTER TABLE jc_trainlines ADD CONSTRAINT trainlines_pk PRIMARY KEY ( train_id );

CREATE TABLE jc_trainlines_station (
    train_run_id NUMBER(10) NOT NULL,
    train_id     VARCHAR2(1) NOT NULL,
    station_id   NUMBER(10) NOT NULL,
    arrival      DATE,
    departure    DATE,
    train_type   VARCHAR2(10) NOT NULL
);

COMMENT ON COLUMN jc_trainlines_station.train_run_id IS
    'THIS IS THE TRAIN RUN ID';

COMMENT ON COLUMN jc_trainlines_station.arrival IS
    'THIS IS THE ARRIVAL DATE AND TIME OF THE TRAIN ';

COMMENT ON COLUMN jc_trainlines_station.departure IS
    'THIS IS THE DEPARTURE DATE AND TIME OF THE TRAIN
';

COMMENT ON COLUMN jc_trainlines_station.train_type IS
    'THIS IS THE TRAIN TYPE- IF IT IS LOCAL, EXPRESS OR MIXED';

ALTER TABLE jc_trainlines_station ADD CONSTRAINT trainlines_station_pk PRIMARY KEY ( train_run_id );

ALTER TABLE jc_station_facility
    ADD CONSTRAINT station_facility_facility_fk FOREIGN KEY ( facility_id )
        REFERENCES jc_facility ( facility_id );

ALTER TABLE jc_station_facility
    ADD CONSTRAINT station_facility_station_fk FOREIGN KEY ( station_id )
        REFERENCES jc_station ( station_id );

ALTER TABLE jc_trainlines_station
    ADD CONSTRAINT station_trainlines_fk FOREIGN KEY ( train_id )
        REFERENCES jc_trainlines ( train_id );

ALTER TABLE jc_trainlines_station
    ADD CONSTRAINT trainlines_station_fk FOREIGN KEY ( station_id )
        REFERENCES jc_station ( station_id );

-- GHW_Q1
-- RECORDS 
-- DML 

-- FACILITY TABLE RECORDS (7, since only 7 facilties as per business case)
INSERT INTO jc_facility (facility_id, facility_name) VALUES (1, 'Elevator');
INSERT INTO jc_facility (facility_id, facility_name) VALUES (2, 'Escalator');
INSERT INTO jc_facility (facility_id, facility_name) VALUES (3, 'Restroom');
INSERT INTO jc_facility (facility_id, facility_name) VALUES (4, 'Wheelchair');
INSERT INTO jc_facility (facility_id, facility_name) VALUES (5, 'Transfer Connection');
INSERT INTO jc_facility (facility_id, facility_name) VALUES (6, 'Bus Connection');
INSERT INTO jc_facility (facility_id, facility_name) VALUES (7, '24 Hr Booth');


-- STATION TABLE RECORDS (15)
INSERT INTO jc_station (station_id, station_name, station_address, borough, neighborhood) VALUES
(1, 'Times Sq - 42nd St', '234 W 42nd St', 'Manhattan', 'Times Square');


INSERT INTO jc_station (station_id, station_name, station_address, borough, neighborhood) VALUES
(2, 'Grand Central', '89 E 42nd St', 'Manhattan', 'Midtown East');


INSERT INTO jc_station (station_id, station_name, station_address, borough, neighborhood) VALUES
(3, 'Union Square', '145 E 14th St', 'Manhattan', 'Union Square');


INSERT INTO jc_station (station_id, station_name, station_address, borough, neighborhood) VALUES
(4, 'Brooklyn Bridge', '140 Centre Street', 'Manhattan', 'Civic Center');


INSERT INTO jc_station (station_id, station_name, station_address, borough, neighborhood) VALUES
(5, 'Jamaica Center', '153-01 Archer Avenue', 'Queens', 'Jamaica');


INSERT INTO jc_station (station_id, station_name, station_address, borough, neighborhood) VALUES
(6, '125th Street', '35 West 125th Street', 'Manhattan', 'Harlem');


INSERT INTO jc_station (station_id, station_name, station_address, borough, neighborhood) VALUES
(7, 'Atlantic Avenue', '620 Atlantic Avenue', 'Brooklyn', 'Prospect Heights');


INSERT INTO jc_station (station_id, station_name, station_address, borough, neighborhood) VALUES
(8, 'Astoria', '31st Street & 31st Avenue', 'Queens', 'Astoria');


INSERT INTO jc_station (station_id, station_name, station_address, borough, neighborhood) VALUES
(9, 'Canal Street', '495 Broadway', 'Manhattan', 'SoHo');


INSERT INTO jc_station (station_id, station_name, station_address, borough, neighborhood) VALUES
(10, 'Fordham Road', '1 Fordham Plaza', 'Bronx', 'Fordham');

INSERT INTO jc_station (station_id, station_name, station_address, borough, neighborhood) VALUES
(11, 'Coney Island', '1901 Surf Avenue', 'Brooklyn', 'Coney Island');


INSERT INTO jc_station (station_id, station_name, station_address, borough, neighborhood) VALUES
(12, 'Flushing', '40-01 Main Street', 'Queens', 'Flushing');


INSERT INTO jc_station (station_id, station_name, station_address, borough, neighborhood) VALUES
(13, 'Grand Concourse', '149th Street & Grand Concourse', 'Bronx', 'Concourse Village');


INSERT INTO jc_station (station_id, station_name, station_address, borough, neighborhood) VALUES
(14, 'Rockaway Park', 'Beach 116th Street', 'Queens', 'Rockaway Park');

INSERT INTO jc_station (station_id, station_name, station_address, borough, neighborhood) VALUES
(15, 'W 4th Street', '137 West 3rd Street', 'Manhattan', 'Greenwich Village');

-- STATION_FACILITY TABLE RECORDS(35, can add more for every station_id)
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (1, 1, 3);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (1, 2, 4);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (1, 3, 6);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (1, 4, 2);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (1, 5, 4);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (1, 6, 6);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (1, 7, 2);

INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (2, 1, 0);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (2, 2, 5);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (2, 3, 3);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (2, 4, 2);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (2, 5, 0);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (2, 6, 0);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (2, 7, 0);

INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (3, 1, 1);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (3, 2, 0);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (3, 3, 3);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (3, 4, 0);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (3, 5, 2);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (3, 6, 0);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (3, 7, 0);

INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (4, 1, 2);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (4, 2, 1);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (4, 3, 4);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (4, 4, 0);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (4, 5, 1);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (4, 6, 0);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (4, 7, 1);

INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (5, 1, 0);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (5, 2, 2);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (5, 3, 0);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (5, 4, 1);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (5, 5, 0);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (5, 6, 0);
INSERT INTO jc_station_facility (station_id, facility_id, number_of_facility) VALUES (5, 7, 2);

-- TRAINLINES TABLE RECORDS (15)
INSERT INTO jc_trainlines (train_id, line_name, division, year_start) VALUES ('A', 'Eighth Avenue Express', 'BMT', 1932);
INSERT INTO jc_trainlines (train_id, line_name, division, year_start) VALUES ('B', 'Sixth Avenue Express', 'IND', 1967);
INSERT INTO jc_trainlines (train_id, line_name, division, year_start) VALUES ('C', 'Eighth Avenue Local', 'IND', 1933);
INSERT INTO jc_trainlines (train_id, line_name, division, year_start) VALUES ('D', 'Sixth Avenue Express', 'IND', 1936);
INSERT INTO jc_trainlines (train_id, line_name, division, year_start) VALUES ('E', 'Eighth Avenue Local', 'IND', 1936);
INSERT INTO jc_trainlines (train_id, line_name, division, year_start) VALUES ('F', 'Queens Boulevard Express', 'IND', 1940);
INSERT INTO jc_trainlines (train_id, line_name, division, year_start) VALUES ('G', 'Brooklyn-Queens Crosstown', 'IND', 1937);
INSERT INTO jc_trainlines (train_id, line_name, division, year_start) VALUES ('J', 'Nassau Street Express', 'BMT', 1913);
INSERT INTO jc_trainlines (train_id, line_name, division, year_start) VALUES ('L', 'Fourteenth Street-Canarsie', 'BMT', 1924);
INSERT INTO jc_trainlines (train_id, line_name, division, year_start) VALUES ('M', 'Queens Boulevard Local', 'IND', 1936);
INSERT INTO jc_trainlines (train_id, line_name, division, year_start) VALUES ('N', 'Broadway Express', 'BMT', 1915);
INSERT INTO jc_trainlines (train_id, line_name, division, year_start) VALUES ('Q', 'Second Avenue/Broadway Express', 'IND', 1937);
INSERT INTO jc_trainlines (train_id, line_name, division, year_start) VALUES ('R', 'Broadway Local', 'BMT', 1916);
INSERT INTO jc_trainlines (train_id, line_name, division, year_start) VALUES ('W', 'Broadway Local', 'BMT', 1917);
INSERT INTO jc_trainlines (train_id, line_name, division, year_start) VALUES ('Z', 'Nassau Street Local', 'BMT', 1916);

-- TRAINLINES_STATION TABLE RECORDS (40)
INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (1, 'A', 1, TO_DATE('2023-10-14 08:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-14 08:02:45', 'YYYY-MM-DD HH24:MI:SS'), 'Local');


INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (2, 'B', 2, TO_DATE('2023-10-14 09:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-14 09:03:37', 'YYYY-MM-DD HH24:MI:SS'), 'Express');


INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (3, 'C', 3, TO_DATE('2023-10-14 10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-14 10:05:56', 'YYYY-MM-DD HH24:MI:SS'), 'Mixed');


INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (4, 'D', 4, TO_DATE('2023-10-14 11:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-14 11:01:46', 'YYYY-MM-DD HH24:MI:SS'), 'Express');


INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (5, 'E', 5, TO_DATE('2023-10-14 12:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-14 12:07:01', 'YYYY-MM-DD HH24:MI:SS'), 'Local');


INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (6, 'F', 6, TO_DATE('2023-10-14 13:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-14 13:04:33', 'YYYY-MM-DD HH24:MI:SS'), 'Express');


INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (7, 'G', 7, TO_DATE('2023-10-14 14:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-14 14:02:47', 'YYYY-MM-DD HH24:MI:SS'), 'Mixed');


INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (8, 'J', 8, TO_DATE('2023-10-14 15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-14 15:03:33', 'YYYY-MM-DD HH24:MI:SS'), 'Local');


INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (9, 'L', 9, TO_DATE('2023-10-14 16:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-14 16:01:59', 'YYYY-MM-DD HH24:MI:SS'), 'Express');

INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (10, 'M', 10, TO_DATE('2023-10-14 17:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-14 17:32:35', 'YYYY-MM-DD HH24:MI:SS'), 'Local');


INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (11, 'N', 11, TO_DATE('2023-10-14 18:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-14 18:37', 'YYYY-MM-DD HH24:MI:SS'), 'Express');


INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (12, 'Q', 12, TO_DATE('2023-10-14 19:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-14 19:35:23', 'YYYY-MM-DD HH24:MI:SS'), 'Express');


INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (13, 'R', 13, TO_DATE('2023-10-14 20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-14 20:32:39', 'YYYY-MM-DD HH24:MI:SS'), 'Local');


INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (14, 'W', 14, TO_DATE('2023-10-14 21:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-14 21:33:36', 'YYYY-MM-DD HH24:MI:SS'), 'Local');


INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (15, 'Z', 15, TO_DATE('2023-10-14 22:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-14 22:31:51', 'YYYY-MM-DD HH24:MI:SS'), 'Local');

INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (16, 'A', 1, TO_DATE('2023-10-15 08:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-15 08:33:34', 'YYYY-MM-DD HH24:MI:SS'), 'Local');

INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (17, 'B', 2, TO_DATE('2023-10-15 09:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-15 09:34:38', 'YYYY-MM-DD HH24:MI:SS'), 'Express');

INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (18, 'C', 3, TO_DATE('2023-10-15 10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-15 10:32:39', 'YYYY-MM-DD HH24:MI:SS'), 'Mixed');

INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (19, 'D', 4, TO_DATE('2023-10-15 11:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-15 11:34:12', 'YYYY-MM-DD HH24:MI:SS'), 'Express');

INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (20, 'E', 5, TO_DATE('2023-10-15 12:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-15 12:31:55', 'YYYY-MM-DD HH24:MI:SS'), 'Local');

INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (21, 'F', 6, TO_DATE('2023-10-15 13:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-15 13:33:19', 'YYYY-MM-DD HH24:MI:SS'), 'Express');

INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (22, 'G', 7, TO_DATE('2023-10-15 14:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-15 14:33:27', 'YYYY-MM-DD HH24:MI:SS'), 'Mixed');

INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (23, 'J', 8, TO_DATE('2023-10-15 15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-15 15:31:58', 'YYYY-MM-DD HH24:MI:SS'), 'Local');

INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (24, 'L', 9, TO_DATE('2023-10-15 16:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-15 16:35:09', 'YYYY-MM-DD HH24:MI:SS'), 'Express');

INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (25, 'M', 10, TO_DATE('2023-10-15 17:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-15 17:36:03', 'YYYY-MM-DD HH24:MI:SS'), 'Local');

INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (26, 'N', 11, TO_DATE('2023-10-15 18:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-15 18:32:44', 'YYYY-MM-DD HH24:MI:SS'), 'Express');

INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (27, 'Q', 12, TO_DATE('2023-10-15 19:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-15 19:33:37', 'YYYY-MM-DD HH24:MI:SS'), 'Express');

INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (28, 'R', 13, TO_DATE('2023-10-15 20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-15 20:34:12', 'YYYY-MM-DD HH24:MI:SS'), 'Local');

INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (29, 'W', 14, TO_DATE('2023-10-15 21:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-15 21:33:23', 'YYYY-MM-DD HH24:MI:SS'), 'Local');

INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (30, 'Z', 15, TO_DATE('2023-10-15 22:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-15 22:32:48', 'YYYY-MM-DD HH24:MI:SS'), 'Local');

INSERT INTO jc_trainlines_station (train_run_id, train_id, station_id, arrival, departure, train_type)
VALUES (31, 'A', 1, TO_DATE('2023-10-16 07:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-14 07:03:25', 'YYYY-MM-DD HH24:MI:SS'), 'Local');


