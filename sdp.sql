create database sdp;
use sdp;
DROP TABLE IF EXISTS ADMIN;
DROP TABLE IF EXISTS DOCS;
DROP TABLE IF EXISTS HOSPITALS;

CREATE TABLE ADMIN (
    id     INTEGER NOT NULL AUTO_INCREMENT,
    name        VARCHAR(128) UNIQUE,
    PRIMARY KEY(id)
);
desc admin;

CREATE TABLE DOCS (
    d_id     INTEGER NOT NULL AUTO_INCREMENT,
    name         VARCHAR(128) UNIQUE,
    age      INTEGER,
    sex      char,
    type         VARCHAR(60),
    PRIMARY KEY(d_id)
);
desc docs;

CREATE TABLE HOSPITALS (
    h_id       INTEGER,
    id         INTEGER,
    d_id       INTEGER,
    name       Varchar(30),
    password   Varchar(30),
    city       varchar(30),
    state      varchar(30),
    mobile_no  bigint,
    email_id   varchar(30),
    CONSTRAINT FOREIGN KEY (id) REFERENCES ADMIN (id)
      ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FOREIGN KEY (d_id) REFERENCES DOCS (d_id)
       ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (h_id)
);
desc hospitals;
insert into docs values( 1001, 'P Dinesh Kumar', 40, 'M','ent');
insert into docs values( 1002, 'Supraja Rani', 38, 'F','surgeon');
insert into docs values( 1003, 'Susanth Reddy',35, 'M','surgeon');
insert into docs values( 1004, 'Ram Murty', 45, 'M','dentist');
insert into docs values( 1005, 'Radha Jalan', 38, 'F','cardiology');
insert into docs values( 1006, 'Kanya Kumari', 40, 'F','Paediatrician');
#select * from docs;
INSERT INTO hospitals (h_id, name, password, city, state, mobile_no, email_id) VALUES ('801', 'Appolo', 'vsk', 'eluru', 'andhra pradesh', '9875463210', 'vinay@gmail.com');
INSERT INTO hospitals (h_id, name, password, city, state, mobile_no, email_id) VALUES ('802', 'Orange', 'gov', 'vijayawada', 'andhra pradesh', '9874563210', 'govindh@gmail.com');
INSERT INTO hospitals (h_id, name, password, city, state, mobile_no, email_id) VALUES ('803', 'Sunshine', 'jay', 'hyderabad', 'telengana', '7895463210', 'jaydeep@gmail.com');
INSERT INTO hospitals (h_id, name, password, city, state, mobile_no, email_id) VALUES ('804', 'lohitha', 'loh', 'kurnool', 'andhra pradesh', '9874564568', 'lohit@gmail.com');
INSERT INTO hospitals (h_id, name, password, city, state, mobile_no, email_id) VALUES ('805', 'gopi clinic', 'gop', 'hyderabad', 'telengana', '3215469872', 'gopi@gmail.com');
INSERT INTO hospitals (h_id, name, password, city, state, mobile_no, email_id) VALUES ('806', 'KlU', 'shk', 'bhimavaram', 'andhra pradesh', '4647895620', 'shekar@gmail.com');
INSERT INTO hospitals (h_id, name, password, city, state, mobile_no, email_id) VALUES ('807', 'mukesh clinic', 'muk', 'vijayawada', 'andhra pradesh', '9456213987', 'mukesh@gmail.com');
INSERT INTO hospitals (h_id, name, password, city, state, mobile_no, email_id) VALUES ('808', 'prabhakar', 'praba', 'bhimavaram', 'andhra pradesh', '5468971235', 'praba@gmail.com');
INSERT INTO hospitals (h_id, name, password, city, state, mobile_no, email_id) VALUES ('809', 'venkatesh', 'venky', 'hyderabad', 'telengana', '9874563254', 'venky@gmail.com');
INSERT INTO hospitals (h_id, name, password, city, state, mobile_no, email_id) VALUES ('810', 'Kalki', 'mukul', 'vijayawada', 'andhra pradesh', '8795462135', 'mukundh@gmail.com');
#select * from hospitals;

