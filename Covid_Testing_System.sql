-- CS4400: Introduction to Database Systems
-- Fall 2020
-- Phase II Create Table and Insert Statements Template

-- Team 73
-- Ethan Roland (eroland3)
-- Apurv Priyam (apriyam3)
-- Lorenzo Guerrero (lguerrero9)
-- Jason Palmer (jpalmer48)

-- Directions:
-- Please follow all instructions from the Phase II assignment PDF.
-- This file must run without error for credit.
-- Create Table statements should be manually written, not taken from an SQL Dump.
-- Rename file to cs4400_phase2_teamX.sql before submission

-- CREATE TABLE STATEMENTS BELOW

DROP DATABASE IF EXISTS testing_system;
CREATE DATABASE IF NOT EXISTS testing_system;
USE testing_system;

DROP TABLE IF EXISTS User;
CREATE TABLE User (
  username char(16) NOT NULL,
  password char(16) NOT NULL,
  email char(25) NOT NULL,
  first_name char(10) NOT NULL,
  last_name char(20) NOT NULL,
  PRIMARY KEY (username),
  UNIQUE KEY (first_name, last_name),
  CONSTRAINT User_password_length CHECK (length(password) >= 8),
  CONSTRAINT User_email_length CHECK (length(email) >= 5)
) ENGINE=InnoDB;

INSERT INTO User VALUES
('jlionel666', 'password1', 'jlionel666@gatech.edu', 'John', 'Lionel'),
('mmoss7', 'password2', 'mmoss7@gatech.edu', 'Mark', 'Moss'),
('lchen27', 'password3', 'lchen27@gatech.edu', 'Liang', 'Chen'),
('jhilborn97', 'password4', 'jhilborn97@gatech.edu', 'Jack', 'Hilborn'),
('jhilborn98', 'password5', 'jhilborn98@gatech.edu', 'Jake', 'Hilborn'),
('ygao10', 'password6', 'ygao10@gatech.edu', 'Yuan', 'Gao'),
('jthomas520', 'password7', 'jthomas520@gatech.edu', 'James', 'Thomas'),
('cforte58', 'password8', 'cforte58@gatech.edu', 'Connor', 'Forte'),
('fdavenport49', 'password9', 'fdavenport49@gatech.edu', 'Felicia', 'Devenport'),
('hliu88', 'password10', 'hliu88@gatech.edu', 'Hang', 'Liu'),
('akarev16', 'password11', 'akarev16@gatech.edu', 'Alex', 'Karev'),
('jdoe381', 'password12', 'jdoe381@gatech.edu', 'Jane ', 'Doe'),
('sstrange11', 'password13', 'sstrange11@gatech.edu', 'Stephen', 'Strange'),
('dmcstuffins7', 'password14', 'dmcstuffins7@gatech.edu', 'Doc', 'Mcstuffins'),
('mgrey91', 'password15', 'mgrey91@gatech.edu', 'Meredith', 'Grey'),
('pwallace51', 'password16', 'pwallace51@gatech.edu', 'Penny', 'Wallace'),
('jrosario34', 'password17', 'jrosario34@gatech.edu', 'Jon', 'Rosario'),
('nshea230', 'password18', 'nshea230@gatech.edu', 'Nicholas', 'Shea'),
('mgeller3', 'password19', 'mgeller3@gatech.edu', 'Monica ', 'Geller'),
('rgeller9', 'password20', 'rgeller9@gatech.edu', 'Ross', 'Geller '),
('jtribbiani27', 'password21', 'jtribbiani27@gatech.edu', 'Joey ', 'Tribbiani'),
('pbuffay56', 'password22', 'pbuffay56@gatech.edu', 'Phoebe ', 'Buffay'),
('rgreen97', 'password23', 'rgreen97@gatech.edu', 'Rachel', 'Green'),
('cbing101', 'password24', 'cbing101@gatech.edu', 'Chandler ', 'Bing'),
('pbeesly61', 'password25', 'pbeesly61@gatech.edu', 'Pamela', 'Beesly'),
('jhalpert75', 'password26', 'jhalpert75@gatech.edu', 'Jim ', 'Halpert'),
('dschrute18', 'password27', 'dschrute18@gatech.edu', 'Dwight ', 'Schrute'),
('amartin365', 'password28', 'amartin365@gatech.edu', 'Angela ', 'Martin'),
('omartinez13', 'password29', 'omartinez13@gatech.edu', 'Oscar', 'Martinez'),
('mscott845', 'password30', 'mscott845@gatech.edu', 'Michael ', 'Scott'),
('abernard224', 'password31', 'abernard224@gatech.edu', 'Andy ', 'Bernard'),
('kkapoor155', 'password32', 'kkapoor155@gatech.edu', 'Kelly ', 'Kapoor'),
('dphilbin81', 'password33', 'dphilbin81@gatech.edu', 'Darryl ', 'Philbin'),
('sthefirst1', 'password34', 'sthefirst1@gatech.edu', 'Sofia', 'Thefirst'),
('gburdell1', 'password35', 'gburdell1@gatech.edu', 'George', 'Burdell'),
('dsmith102', 'password36', 'dsmith102@gatech.edu', 'Dani', 'Smith'),
('dbrown85', 'password37', 'dbrown85@gatech.edu', 'David', 'Brown'),
('dkim99', 'password38', 'dkim99@gatech.edu', 'Dave', 'Kim'),
('tlee984', 'password39', 'tlee984@gatech.edu', 'Tom', 'Lee'),
('jpark29', 'password40', 'jpark29@gatech.edu', 'Jerry', 'Park'),
('vneal101', 'password41', 'vneal101@gatech.edu', 'Vinay', 'Neal'),
('hpeterson55', 'password42', 'hpeterson55@gatech.edu', 'Haydn', 'Peterson'),
('lpiper20', 'password43', 'lpiper20@gatech.edu', 'Leroy', 'Piper'),
('mbob2', 'password44', 'mbob2@gatech.edu', 'Mary', 'Bob'),
('mrees785', 'password45', 'mrees785@gatech.edu', 'Marie', 'Rees'),
('wbryant23', 'password46', 'wbryant23@gatech.edu', 'William', 'Bryant'),
('aallman302', 'password47', 'aallman302@gatech.edu', 'Aiysha', 'Allman'),
('kweston85', 'password48', 'kweston85@gatech.edu', 'Kyle', 'Weston');


DROP TABLE IF EXISTS Location;
CREATE TABLE Location(
  name char(4) NOT NULL,
  PRIMARY KEY (name)
) ENGINE=InnoDB;

INSERT INTO Location VALUES
('East'),
('West');

DROP TABLE IF EXISTS Student;
CREATE TABLE Student (
  username char(16) NOT NULL,
  house_type char(21) NOT NULL,
  located_in char(16) NOT NULL,
  PRIMARY KEY (username),
  CONSTRAINT Student_ibfk1 FOREIGN KEY (username) REFERENCES User (username),
  CONSTRAINT Student_ibfk6 FOREIGN KEY (located_in) REFERENCES Location (name)
) ENGINE=InnoDB;

INSERT INTO Student VALUES
('mgeller3', 'Off-campus Apartment', 'East'),
('rgeller9', 'Student Housing', 'East'),
('jtribbiani27', 'Greek Housing', 'West'),
('pbuffay56', 'Student Housing', 'East'),
('rgreen97', 'Student Housing', 'West'),
('cbing101', 'Greek Housing', 'East'),
('pbeesly61', 'Student Housing', 'West'),
('jhalpert75', 'Student Housing', 'East'),
('dschrute18', 'Student Housing', 'East'),
('amartin365', 'Greek Housing', 'East'),
('omartinez13', 'Student Housing', 'West'),
('mscott845', 'Student Housing', 'East'),
('abernard224', 'Greek Housing', 'West'),
('kkapoor155', 'Greek Housing', 'East'),
('dphilbin81', 'Greek Housing', 'West'),
('sthefirst1', 'Student Housing', 'West'),
('gburdell1', 'Student Housing', 'East'),
('dsmith102', 'Greek Housing', 'West'),
('dbrown85', 'Off-campus Apartment', 'East'),
('dkim99', 'Greek Housing', 'East'),
('tlee984', 'Student Housing', 'West'),
('jpark29', 'Student Housing', 'East'),
('vneal101', 'Student Housing', 'West'),
('hpeterson55', 'Greek Housing', 'East'),
('lpiper20', 'Student Housing', 'West'),
('mbob2', 'Student Housing', 'West'),
('mrees785', 'Off-campus House', 'West'),
('wbryant23', 'Greek Housing', 'East'),
('aallman302', 'Student Housing', 'West'),
('kweston85', 'Greek Housing', 'West');


DROP TABLE IF EXISTS Admin;
CREATE TABLE Admin (
  username char(16) NOT NULL,
  PRIMARY KEY (username),
  CONSTRAINT Admin_ibfk2 FOREIGN KEY (username) REFERENCES User (username)
) ENGINE=InnoDB;

INSERT INTO Admin VALUES
('jlionel666'),
('mmoss7'),
('lchen27');

DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee (
  username char(16) NOT NULL,
  Phone_number decimal(10, 0) NOT NULL,
  PRIMARY KEY (username),
  CONSTRAINT Employee_ibfk3 FOREIGN KEY (username) REFERENCES User (username)
) ENGINE=InnoDB;


INSERT INTO Employee VALUES
('jhilborn97',4043802577),
('jhilborn98',4042201897),
('ygao10',7703928765),
('jthomas520',7705678943),
('cforte58', 4708623384),
('fdavenport49',7068201473),
('hliu88',4782809765),
('akarev16',9876543210),
('jdoe381',1237864230),
('sstrange11',6547891234),
('dmcstuffins7',1236549878),
('mgrey91',6458769523),
('pwallace51',3788612907),
('jrosario34',5926384247),
('nshea230',6979064501);


DROP TABLE IF EXISTS Lab_Technician;
CREATE TABLE Lab_Technician (
  username char(16) NOT NULL,
  PRIMARY KEY (username),
  CONSTRAINT Lab_Technician_ibfk4 FOREIGN KEY (username) REFERENCES Employee (username)
) ENGINE=InnoDB;

INSERT INTO Lab_Technician VALUES
('jhilborn97'),
('jhilborn98'),
('ygao10'),
('jthomas520'),
('cforte58'),
('fdavenport49'),
('hliu88');


DROP TABLE IF EXISTS Site_Tester ;
CREATE TABLE Site_Tester (
  username char(16) NOT NULL,
  PRIMARY KEY (username),
  CONSTRAINT Site_Tester_ibfk5 FOREIGN KEY (username) REFERENCES Employee (username)
) ENGINE=InnoDB;

INSERT INTO Site_Tester VALUES
('akarev16'),
('jdoe381'),
('sstrange11'),
('dmcstuffins7'),
('mgrey91'),
('pwallace51'),
('jrosario34'),
('nshea230');


DROP TABLE IF EXISTS Site;
CREATE TABLE Site (
  name char(30) NOT NULL,
  street char(50) NOT NULL,
  city char(30) NOT NULL,
  zip char(10) NOT NULL,
  state char(30) NOT NULL,
  located_in char(4) NOT NULL,
  PRIMARY KEY (name),
  CONSTRAINT Site_ibfk_7 FOREIGN KEY (located_in) REFERENCES Location (name)
) ENGINE=InnoDB;

INSERT INTO Site Values
('Fulton County Board of Health', '10 Park Place South SE', 'Atlanta', 'GA', '30303', 'East'),
('CCBOH WIC Clinic', '1895 Phoenix Blvd', 'College Park', 'GA', '30339', 'West'),
('Kennesaw State University ', '3305 Busbee Drive NW', 'Kennesaw', 'GA', '30144', 'West'),
('Stamps Health Services', '740 Ferst Drive ', 'Atlanta', 'GA', '30332', 'West'),
('Bobby Dodd Stadium', '150 Bobby Dodd Way NW', 'Atlanta', 'GA', '30332', 'East'),
('Caddell Building', '280 Ferst Drive NW', 'Atlanta', 'GA', '30332', 'West'),
('Coda Building', '760 Spring Street ', 'Atlanta', 'GA', '30332', 'East'),
('GT Catholic Center', '172 4th St NW', 'Atlanta', 'GA', '30313', 'East'),
('West Village', '532 8th St NW', 'Atlanta', 'GA', '30318', 'West'),
('GT Connector', '116 Bobby Dodd Way NW', 'Atlanta', 'GA', '30313', 'East'),
('Curran St Parking Deck', '564 8th St NW', 'Atlanta', 'GA', '30318', 'West'),
('North Avenue (Centenial Room)', '120 North Avenue NW', 'Atlanta', 'GA', '30313', 'East');


DROP TABLE IF EXISTS Appointment;
CREATE TABLE Appointment (
  name char(30) NOT NULL,
  date date,
  time time(0),
  scheduled_by char(16),
  PRIMARY KEY (name, date, time),
  CONSTRAINT Appointment_ibfk_11 FOREIGN KEY (name) REFERENCES Site (name),
  CONSTRAINT Appointment_ibfk_13 FOREIGN KEY (scheduled_by) REFERENCES Student (username)
) ENGINE=InnoDB;

INSERT INTO Appointment VALUES
('Fulton County Board of Health', '2020-09-16', '08:00:00', null),
('CCBOH WIC Clinic', '2020-09-16', '09:00:00', null),
('Kennesaw State University ', '2020-09-16', '10:00:00', null),
('Stamps Health Services', '2020-09-16', '11:00:00', null),
('Bobby Dodd Stadium', '2020-09-16', '12:00:00', null),
('Caddell Building', '2020-09-16', '13:00:00', null),
('Coda Building', '2020-09-16', '14:00:00', null),
('GT Catholic Center', '2020-09-16', '15:00:00', null),
('GT Connector', '2020-10-01', '17:00:00', null),
('Curran St Parking Deck', '2020-10-01', '08:00:00', null),
('North Avenue (Centenial Room)', '2020-10-01', '09:00:00', null),
('Fulton County Board of Health', '2020-10-01', '17:00:00', null),
('CCBOH WIC Clinic', '2020-10-01', '08:00:00', null),
('Kennesaw State University ', '2020-10-01', '09:00:00', null),
('Stamps Health Services', '2020-10-01', '10:00:00', null),
('Bobby Dodd Stadium', '2020-10-01', '11:00:00', null),
('Caddell Building', '2020-10-02', '12:00:00', null),
('Coda Building', '2020-10-02', '13:00:00', null),
('GT Catholic Center', '2020-10-02', '14:00:00', null),
('West Village', '2020-10-02', '15:00:00', null),
('GT Connector', '2020-10-02', '16:00:00', null),
('Curran St Parking Deck', '2020-10-02', '17:00:00', null),
('North Avenue (Centenial Room)', '2020-10-06', '08:00:00', null),
('Fulton County Board of Health', '2020-10-06', '09:00:00', null),
('CCBOH WIC Clinic', '2020-10-06', '10:00:00', null),
('Kennesaw State University ', '2020-10-06', '11:00:00', null),
('Stamps Health Services', '2020-10-06', '12:00:00', null),
('Bobby Dodd Stadium', '2020-10-07', '13:00:00', null),
('Caddell Building', '2020-10-07', '14:00:00', null),
('Coda Building', '2020-10-07', '15:00:00', null),
('GT Catholic Center', '2020-10-07', '16:00:00', null),
('West Village', '2020-10-07', '17:00:00', null),
('GT Connector', '2020-10-07', '08:00:00', null),
('Curran St Parking Deck', '2020-10-07', '09:00:00', null),
('North Avenue (Centenial Room)', '2020-10-07', '10:00:00', null),
('Fulton County Board of Health', '2020-09-01', '08:00:00',  'mgeller3'),
('Bobby Dodd Stadium', '2020-09-01', '09:00:00',  'rgeller9'),
('Caddell Building', '2020-09-01', '10:00:00',  'jtribbiani27'),
('GT Catholic Center', '2020-09-01', '11:00:00',  'pbuffay56'),
('West Village', '2020-09-01', '12:00:00',  'rgreen97'),
('GT Catholic Center', '2020-09-01', '13:00:00',  'cbing101'),
('West Village', '2020-09-01', '14:00:00',  'pbeesly61'),
('North Avenue (Centenial Room)', '2020-09-01', '15:00:00',  'jhalpert75'),
('North Avenue (Centenial Room)', '2020-09-01', '16:00:00',  'dschrute18'),
('Curran St Parking Deck', '2020-09-03', '08:00:00',  'omartinez13'),
('Bobby Dodd Stadium', '2020-09-03', '09:00:00',  'mscott845'),
('Stamps Health Services', '2020-09-03', '10:00:00',  'abernard224'),
('GT Catholic Center', '2020-09-03', '11:00:00',  'kkapoor155'),
('West Village', '2020-09-03', '12:00:00',  'dphilbin81'),
('Caddell Building', '2020-09-03', '13:00:00',  'sthefirst1'),
('Coda Building', '2020-09-03', '14:00:00',  'gburdell1'),
('Stamps Health Services', '2020-09-03', '15:00:00',  'dsmith102'),
('CCBOH WIC Clinic', '2020-09-03', '16:00:00',  'dbrown85'),
('GT Connector', '2020-09-03', '17:00:00',  'dkim99'),
('Curran St Parking Deck', '2020-09-04', '08:00:00',  'tlee984'),
('GT Connector', '2020-09-04', '09:00:00',  'jpark29'),
('Curran St Parking Deck', '2020-09-04', '10:00:00',  'vneal101'),
('Bobby Dodd Stadium', '2020-09-04', '11:00:00',  'hpeterson55'),
('Caddell Building', '2020-09-04', '12:00:00',  'lpiper20'),
('Stamps Health Services', '2020-09-04', '13:00:00',  'mbob2'),
('Kennesaw State University ', '2020-09-04', '14:00:00',  'mrees785'),
('GT Catholic Center', '2020-09-04', '15:00:00',  'wbryant23'),
('West Village', '2020-09-04', '16:00:00',  'aallman302'),
('West Village', '2020-09-04', '17:00:00',  'kweston85'),
('Fulton County Board of Health', '2020-09-04', '08:00:00',  'mgeller3'),
('Bobby Dodd Stadium', '2020-09-04', '09:00:00',  'rgeller9'),
('Caddell Building', '2020-09-04', '10:00:00',  'jtribbiani27'),
('Bobby Dodd Stadium', '2020-09-10', '11:00:00',  'pbuffay56'),
('Caddell Building', '2020-09-10', '12:00:00',  'rgreen97'),
('GT Catholic Center', '2020-09-10', '13:00:00',  'cbing101'),
('West Village', '2020-09-10', '14:00:00',  'pbeesly61'),
('Coda Building', '2020-09-10', '15:00:00',  'jhalpert75'),
('Coda Building', '2020-09-10', '16:00:00',  'dschrute18'),
('Coda Building', '2020-09-10', '17:00:00',  'amartin365'),
('Stamps Health Services', '2020-09-10', '08:00:00',  'omartinez13'),
('Bobby Dodd Stadium', '2020-09-10', '09:00:00',  'mscott845'),
('West Village', '2020-09-10', '10:00:00',  'abernard224'),
('GT Connector', '2020-09-10', '11:00:00',  'kkapoor155'),
('Curran St Parking Deck', '2020-09-10', '12:00:00',  'dphilbin81'),
('Curran St Parking Deck', '2020-09-10', '13:00:00',  'sthefirst1'),
('North Avenue (Centenial Room)', '2020-09-10', '14:00:00',  'gburdell1'),
('Caddell Building', '2020-09-10', '15:00:00',  'dsmith102'),
('CCBOH WIC Clinic', '2020-09-10', '16:00:00',  'dbrown85'),
('Bobby Dodd Stadium', '2020-09-10', '17:00:00',  'dkim99'),
('West Village', '2020-09-10', '08:00:00',  'tlee984'),
('GT Catholic Center', '2020-09-10', '09:00:00',  'jpark29'),
('Curran St Parking Deck', '2020-09-13', '10:00:00',  'vneal101'),
('Coda Building', '2020-09-13', '11:00:00',  'hpeterson55'),
('Stamps Health Services', '2020-09-13', '12:00:00',  'lpiper20'),
('Curran St Parking Deck', '2020-09-13', '13:00:00',  'mbob2'),
('CCBOH WIC Clinic', '2020-09-13', '14:00:00',  'mrees785'),
('North Avenue (Centenial Room)', '2020-09-16', '15:00:00',  'wbryant23'),
('West Village', '2020-09-16', '16:00:00',  'aallman302'),
('Caddell Building', '2020-09-16', '17:00:00',  'kweston85');


DROP TABLE IF EXISTS Pool;
CREATE TABLE Pool(
id decimal(5,0) NOT NULL,
date date,
status char(8) NOT NULL,
processed_by char(16),
PRIMARY KEY(id),
CONSTRAINT processed_by_ibfk_10 FOREIGN KEY(processed_by) REFERENCES Lab_Technician (username)
)ENGINE=InnoDB;

INSERT INTO Pool VALUES
(1, '2020-09-02', 'negative', 'jhilborn97'),
(2, '2020-09-04', 'positive', 'jhilborn98'),
(3, '2020-09-06', 'positive', 'ygao10'),
(4, '2020-09-05', 'positive', 'jthomas520'),
(5, '2020-09-07', 'negative', 'fdavenport49'),
(6, '2020-09-05', 'positive', 'hliu88'),
(7, '2020-09-11', 'negative', 'cforte58'),
(8, '2020-09-11', 'positive', 'ygao10'),
(9, null, 'pending', null),
(10, null, 'pending', null),
(11, null, 'pending', null),
(12, null, 'pending', null),
(13, null, 'pending', null);

DROP TABLE IF EXISTS Test;
CREATE TABLE Test (
  id decimal (6, 0) NOT NULL,
  status char (8) NOT NULL,
  name char (30) NOT  NULL,
  date date NOT NULL,
  time time(0) NOT NULL,
  contains decimal (5,0),
  PRIMARY KEY (id),
  CONSTRAINT Test_ibfk_12 FOREIGN KEY (name, date, time) REFERENCES Appointment (name, date, time),
  CONSTRAINT Test_ibfk_14 FOREIGN KEY (contains) REFERENCES Pool (id)
)ENGINE=InnoDB;

INSERT INTO Test VALUES
('100001', 'negative', 'Fulton County Board of Health', '2020-09-01', '08:00:00', '1'),
('100002', 'negative', 'Bobby Dodd Stadium', '2020-09-01', '09:00:00', '1'),
('100003', 'negative', 'Caddell Building', '2020-09-01', '10:00:00', '1'),
('100004', 'negative', 'GT Catholic Center', '2020-09-01', '11:00:00', '1'),
('100005', 'negative', 'West Village', '2020-09-01', '12:00:00', '1'),
('100006', 'negative', 'GT Catholic Center', '2020-09-01', '13:00:00', '1'),
('100007', 'negative', 'West Village', '2020-09-01', '14:00:00', '1'),
('100008', 'negative', 'North Avenue (Centenial Room)', '2020-09-01', '15:00:00', '2'),
('100009', 'positive', 'North Avenue (Centenial Room)', '2020-09-01', '16:00:00', '2'),
('100011', 'negative', 'Curran St Parking Deck', '2020-09-03', '08:00:00', '2'),
('100012', 'positive', 'Bobby Dodd Stadium', '2020-09-03', '09:00:00', '2'),
('100013', 'positive', 'Stamps Health Services', '2020-09-03', '10:00:00', '2'),
('100014', 'negative', 'GT Catholic Center', '2020-09-03', '11:00:00', '2'),
('100015', 'negative', 'West Village', '2020-09-03', '12:00:00', '3'),
('100016', 'positive', 'Caddell Building', '2020-09-03', '13:00:00', '3'),
('100017', 'negative', 'Coda Building', '2020-09-03', '14:00:00', '3'),
('100018', 'negative', 'Stamps Health Services', '2020-09-03', '15:00:00', '3'),
('100019', 'positive', 'CCBOH WIC Clinic', '2020-09-03', '16:00:00', '3'),
('100020', 'negative', 'GT Connector', '2020-09-03', '17:00:00', '4'),
('100021', 'negative', 'Curran St Parking Deck', '2020-09-04', '08:00:00', '4'),
('100022', 'negative', 'GT Connector', '2020-09-04', '09:00:00', '4'),
('100023', 'negative', 'Curran St Parking Deck', '2020-09-04', '10:00:00', '4'),
('100024', 'positive', 'Bobby Dodd Stadium', '2020-09-04', '11:00:00', '4'),
('100025', 'negative', 'Caddell Building', '2020-09-04', '12:00:00', '5'),
('100026', 'negative', 'Stamps Health Services', '2020-09-04', '13:00:00', '5'),
('100027', 'negative', 'Kennesaw State University ', '2020-09-04', '14:00:00', '5'),
('100028', 'negative', 'GT Catholic Center', '2020-09-04', '15:00:00', '5'),
('100029', 'negative', 'West Village', '2020-09-04', '16:00:00', '5'),
('100030', 'negative', 'West Village', '2020-09-04', '17:00:00', '5'),
('100031', 'positive', 'Fulton County Board of Health', '2020-09-04', '08:00:00', '6'),
('100032', 'positive', 'Bobby Dodd Stadium', '2020-09-04', '09:00:00', '6'),
('100033', 'negative', 'Caddell Building', '2020-09-04', '10:00:00', '7'),
('100034', 'negative', 'Bobby Dodd Stadium', '2020-09-10', '11:00:00', '7'),
('100035', 'negative', 'Caddell Building', '2020-09-10', '12:00:00', '7'),
('100036', 'negative', 'GT Catholic Center', '2020-09-10', '13:00:00', '7'),
('100037', 'negative', 'West Village', '2020-09-10', '14:00:00', '7'),
('100038', 'negative', 'Coda Building', '2020-09-10', '15:00:00', '7'),
('100039', 'negative', 'Coda Building', '2020-09-10', '16:00:00', '8'),
('100040', 'positive', 'Coda Building', '2020-09-10', '17:00:00', '8'),
('100041', 'negative', 'Stamps Health Services', '2020-09-10', '08:00:00', '8'),
('100042', 'pending', 'Bobby Dodd Stadium', '2020-09-10', '09:00:00', '9'),
('100043', 'pending', 'West Village', '2020-09-10', '10:00:00', '9'),
('100044', 'pending', 'GT Connector', '2020-09-10', '11:00:00', '9'),
('100045', 'pending', 'Curran St Parking Deck', '2020-09-10', '12:00:00', '9'),
('100046', 'pending', 'Curran St Parking Deck', '2020-09-10', '13:00:00', '9'),
('100047', 'pending', 'North Avenue (Centenial Room)', '2020-09-10', '14:00:00', '9'),
('100048', 'pending', 'Caddell Building', '2020-09-10', '15:00:00', '9'),
('100049', 'pending', 'CCBOH WIC Clinic', '2020-09-10', '16:00:00', '10'),
('100050', 'pending', 'Bobby Dodd Stadium', '2020-09-10', '17:00:00', '11'),
('100051', 'pending', 'West Village', '2020-09-10', '08:00:00', '11'),
('100052', 'pending', 'GT Catholic Center', '2020-09-10', '09:00:00', '11'),
('100053', 'pending', 'Curran St Parking Deck', '2020-09-13', '10:00:00', '11'),
('100054', 'pending', 'Coda Building', '2020-09-13', '11:00:00', '11'),
('100055', 'pending', 'Stamps Health Services', '2020-09-13', '12:00:00', '12'),
('100056', 'pending', 'Curran St Parking Deck', '2020-09-13', '13:00:00', '12'),
('100057', 'pending', 'CCBOH WIC Clinic', '2020-09-13', '14:00:00', '12'),
('100058', 'pending', 'North Avenue (Centenial Room)', '2020-09-16', '15:00:00', '12'),
('100059', 'pending', 'West Village', '2020-09-16', '16:00:00', '13'),
('100060', 'pending', 'Caddell Building', '2020-09-16', '17:00:00', '13');

DROP TABLE IF EXISTS works_in;
CREATE TABLE works_in (
  username char(16) NOT NULL,
  name char(30),
  UNIQUE KEY (username, name),
  CONSTRAINT works_in_ibfk8 FOREIGN KEY (username) REFERENCES Site_Tester (username),
  CONSTRAINT works_in_ibfk9 FOREIGN KEY (name) REFERENCES Site (name)
) ENGINE=InnoDB;

INSERT INTO Works_in VALUES
('akarev16', 'Fulton County Board of Health'),
('akarev16', 'CCBOH WIC Clinic'),
('akarev16', 'Kennesaw State University'),
('akarev16', 'Stamps Health Services'),
('jdoe381', 'Curran St Parking Deck'),
('jdoe381', 'North Avenue (Centenial Room)'),
('jdoe381', 'Fulton County Board of Health'),
('jdoe381', 'CCBOH WIC Clinic'),
('sstrange11', 'Coda Building'),
('sstrange11', 'GT Catholic Center'),
('sstrange11', 'West Village'),
('sstrange11', 'GT Connector'),
('sstrange11', 'Curran St Parking Deck'),
('sstrange11', 'North Avenue (Centenial Room)'),
('dmcstuffins7', 'Bobby Dodd Stadium'),
('dmcstuffins7', 'Caddell Building'),
('dmcstuffins7', 'Coda Building'),
('dmcstuffins7', 'GT Catholic Center'),
('dmcstuffins7', 'West Village'),
('dmcstuffins7', 'GT Connector'),
('mgrey91', 'Kennesaw State University'),
('mgrey91', 'Stamps Health Services'),
('mgrey91', 'Bobby Dodd Stadium'),
('mgrey91', 'Caddell Building'),
('pwallace51', 'Coda Building'),
('jrosario34', null),
('nshea230', null);
