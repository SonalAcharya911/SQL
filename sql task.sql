CREATE TABLE country_info(
country_id int, 
country_name varchar(30),
capital varchar(30),
population bigint,
continent varchar(30));

ALTER TABLE country_info DROP population;
SELECT * FROM country_info;

ALTER TABLE country_info ADD COLUMN currency varchar(20);

ALTER TABLE country_info ADD COLUMN language varchar(20);


INSERT INTO country_info values(1,'India','New Delhi','Asia','Rupee','Hindi');
INSERT INTO country_info values(2,'China','Beinjing','Asia','Yuan','Mandarin');
INSERT INTO country_info values(3,'Afghanistan','Kabul','Asia','Afghani Afghan','Urdu');
INSERT INTO country_info values(4,'Australia','Canberra','Australia','Dollar','English');
INSERT INTO country_info values(5,'Brazil','Brasilia','South America','Brazilian Real','English');
INSERT INTO country_info values(6,'Egypt','Cairo','Africa','Egyptian Pound','Arabic');
INSERT INTO country_info values(7,'Canada','Ottawa','North America','Dollar','English');
INSERT INTO country_info values(8,'United Kingdom','London','Europe', 'Pound Sterling', 'English');
INSERT INTO country_info values(9,'Germany', 'Berlin','Europe', 'Euro', 'German');
INSERT INTO country_info values(10,'France', 'Paris','Europe', 'Euro', 'French');
INSERT INTO country_info values(11,'Japan', 'Tokyo', 'Asia', 'Yen', 'Japanese');
INSERT INTO country_info values(12,'South Africa', 'Pretoria', 'Africa', 'South African Rand', 'Zulu');
INSERT INTO country_info values(13,'Russia', 'Moscow', 'Europe/Asia', 'Ruble', 'Russian');
INSERT INTO country_info values(14,'Mexico', 'Mexico City', 'North America', 'Peso', 'Spanish');
INSERT INTO country_info values(15,'Saudi Arabia', 'Riyadh', 'Asia', 'Saudi Riyal', 'Arabic');

TRUNCATE TABLE country_info;


SELECT * FROM country_info WHERE continent='Asia';
SELECT * FROM country_info WHERE continent='Asia' or currency='Egyptian Pound';
SELECT country_name, capital FROM country_info WHERE continent='Asia' or currency='Egyptian Pound';

SELECT * FROM country_info;

CREATE TABLE hospital_info(
hospital_id int, 
hospital_name varchar(30), 
location varchar(30), 
state varchar(30), 
specialization varchar(30), 
contact_no bigint);

INSERT INTO hospital_info values (1, 'Lotus Care Hospital', 'Ahmedabad', 'Gujarat', 'Cardiology', 9876543210);
INSERT INTO hospital_info values(2, 'Sunshine Multispecialty', 'Bangalore', 'Karnataka', 'Multi-specialty', 9876543211);
INSERT INTO hospital_info values(3, 'Rainbow Children Hospital', 'Hyderabad', 'Telangana', 'Pediatrics', 9876543212);
INSERT INTO hospital_info values(4, 'Aarogyam Eye Care', 'Jaipur', 'Rajasthan', 'Ophthalmology', 9876543213);
INSERT INTO hospital_info values(5, 'City Heart Institute', 'Pune', 'Maharashtra', 'Cardiology', 9876543214);
INSERT INTO hospital_info values(6, 'Greenleaf Ortho Center', 'Lucknow', 'Uttar Pradesh', 'Orthopedics', 9876543215);
INSERT INTO hospital_info values(7, 'Global Neuro Hospital', 'Kolkata', 'West Bengal', 'Neurology', 9876543216);
INSERT INTO hospital_info values(8, 'Serene Skin Clinic', 'Bhubaneswar', 'Odisha', 'Dermatology', 9876543217);
INSERT INTO hospital_info values(9, 'Medline Cancer Center', 'Chandigarh', 'Punjab', 'Oncology', 9876543218);
INSERT INTO hospital_info values(10, 'Harmony Kidney Hospital', 'Bhopal', 'Madhya Pradesh', 'Nephrology', 9876543219);
INSERT INTO hospital_info values(11, 'Tranquil Mind Psychiatry', 'Indore', 'Madhya Pradesh', 'Psychiatry', 9876543220);
INSERT INTO hospital_info values(12, 'Nova Women’s Health', 'Chennai', 'Tamil Nadu', 'Gynecology', 9876543221);
INSERT INTO hospital_info values(13, 'Healwell Gastro Clinic', 'Nagpur', 'Maharashtra', 'Gastroenterology', 9876543222);
INSERT INTO hospital_info values(14, 'Silverline Pulmonary Care', 'Kochi', 'Kerala', 'Pulmonology', 9876543223);
INSERT INTO hospital_info values(15, 'Evercare Trauma Center', 'Surat', 'Gujarat', 'Emergency & Trauma', 9876543224);

SELECT * FROM hospital_info;

CREATE TABLE state_info(
state_id int,
state_name varchar(30),
capital varchar(30),
population bigint,
area_sq_km int,
official_language varchar(50),
literacy_rate decimal(5,2));

INSERT INTO state_info VALUES (1,'Maharashtra','Mumbai', 124437000, 307713, 'Marathi', 82.34);
INSERT INTO state_info VALUES (2,'Karnataka','Bangalore', 69026000, 191791, 'Kannada', 75.36);
INSERT INTO state_info VALUES (3,'Tamil Nadu','Chennai', 77841200, 130058, 'Tamil', 80.09);
INSERT INTO state_info VALUES (4,'Uttar Pradesh','Lucknow', 241066000, 243286, 'Hindi', 67.68);
INSERT INTO state_info VALUES (5,'Gujarat','Gandhinagar', 71515000, 196024, 'Gujarati', 78.03);
INSERT INTO state_info VALUES (6,'West Bengal','Kolkata', 99609300, 88752, 'Bengali', 77.08);
INSERT INTO state_info VALUES (7,'Rajasthan','Jaipur', 81058700, 342239, 'Hindi', 72.80);
INSERT INTO state_info VALUES (8,'Kerala','Thiruvananthapuram', 35699400, 38863, 'Malayalam', 94.00);
INSERT INTO state_info VALUES (9,'Punjab','Chandigarh', 31244500, 50362, 'Punjabi', 75.80);
INSERT INTO state_info VALUES (10,'Madhya Pradesh','Bhopal', 86044200, 308350, 'Hindi', 70.63);
INSERT INTO state_info VALUES (11,'Odisha','Bhubaneswar', 45586000, 155707, 'Odia', 72.87);
INSERT INTO state_info VALUES (12,'Telengana','Hyderabad', 39837000, 112077, 'Telugu', 72.80);
INSERT INTO state_info VALUES (13,'Haryana','Chandigarh', 28904000, 44212, 'Hindi', 76.64);
INSERT INTO state_info VALUES (14,'Assam','Dispur', 35607000, 78438, 'Assamese', 73.18);
INSERT INTO state_info VALUES (15,'Bihar','Patna', 128477000, 94163, 'Hindi', 63.82);

SELECT * FROM state_info;

SELECT * FROM state_info WHERE capital='Chandigarh' or official_language='Hindi';
SELECT * FROM state_info WHERE capital='Chandigarh' AND literacy_rate>80;

SELECT * FROM hospital_info WHERE specialization IN ('Ophthalmology','Dermatology','Oncology','Gynecology');
SELECT * FROM hospital_info WHERE specialization NOT IN ('Ophthalmology','Dermatology','Oncology','Gynecology');

SELECT * FROM state_info WHERE literacy_rate BETWEEN 70 AND 80;
SELECT * FROM state_info WHERE literacy_rate NOT BETWEEN 70 AND 80;

ALTER TABLE country_info ADD COLUMN independence int;

SELECT * FROM country_info;

UPDATE country_info set independence=1947 where country_id=1;
UPDATE country_info set independence=1949 where country_id=2;
UPDATE country_info set independence=1919 where country_id=3;
UPDATE country_info set independence=1901 where country_id=4;
UPDATE country_info set independence=1822 where country_id=5;
UPDATE country_info set independence=1922 where country_id=6;
UPDATE country_info set independence=1867 where country_id=7;
UPDATE country_info set independence=1990 where country_id=9;

UPDATE country_info set independence=1961 where country_id=12;
UPDATE country_info set independence=1991 where country_id=13;
UPDATE country_info set independence=1810 where country_id=14;
UPDATE country_info set independence=1932 where country_id=15;

SELECT * FROM country_info WHERE independence BETWEEN 1950 AND 1980;
SELECT * FROM country_info WHERE independence NOT BETWEEN 1950 AND 1980;

SELECT * FROM country_info WHERE independence=1947 AND country_id=1;
SELECT * FROM country_info WHERE independence=1947 OR country_id=7;

SELECT * FROM country_info WHERE independence IN (1947,1990,1810,1867);
SELECT * FROM country_info WHERE independence NOT IN (1947,1990,1810,1867);

SELECT * FROM hospital_info;

SELECT * FROM country_info;

CREATE TABLE country_info_dup as SELECT * FROM country_info;

SELECT * FROM country_info_dup;

DELETE FROM country_info_dup WHERE 