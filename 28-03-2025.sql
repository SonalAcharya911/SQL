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
INSERT INTO country_info values(8,'United Kingdom','London','Europe','Pound Sterling','English');
INSERT INTO country_info values(9,'Germany','Berlin','Europe','Euro','German');
INSERT INTO country_info values(10,'France','Paris','Europe','Euro','French');
INSERT INTO country_info values(11,'Japan','Tokyo','Asia','Yen','Japanese');
INSERT INTO country_info values(12,'South Africa','Pretoria','Africa','South African Rand','Zulu');
INSERT INTO country_info values(13,'Russia','Moscow','Europe/Asia','Ruble','Russian');
INSERT INTO country_info values(14,'Mexico','Mexico City','North America','Peso','Spanish');
INSERT INTO country_info values(15,'Saudi Arabia','Riyadh','Asia','Saudi Riyal','Arabic');

TRUNCATE TABLE country_info;


SELECT * FROM country_info WHERE continent='Asia';
SELECT * FROM country_info WHERE continent='Asia' or currency='Egyptian Pound';
SELECT country_name,capital FROM country_info WHERE continent='Asia' or currency='Egyptian Pound';

SELECT * FROM country_info;

CREATE TABLE hospital_info(
hospital_id int,
hospital_name varchar(30),
location varchar(30),
state varchar(30),
specialization varchar(30),
contact_no bigint);

INSERT INTO hospital_info values (1,'Lotus Care Hospital','Ahmedabad','Gujarat','Cardiology',9876543210);
INSERT INTO hospital_info values(2,'Sunshine Multispecialty','Bangalore','Karnataka','Multi-specialty',9876543211);
INSERT INTO hospital_info values(3,'Rainbow Children Hospital','Hyderabad','Telangana','Pediatrics',9876543212);
INSERT INTO hospital_info values(4,'Aarogyam Eye Care','Jaipur','Rajasthan','Ophthalmology',9876543213);
INSERT INTO hospital_info values(5,'City Heart Institute','Pune','Maharashtra','Cardiology',9876543214);
INSERT INTO hospital_info values(6,'Greenleaf Ortho Center','Lucknow','Uttar Pradesh','Orthopedics',9876543215);
INSERT INTO hospital_info values(7,'Global Neuro Hospital','Kolkata','West Bengal','Neurology',9876543216);
INSERT INTO hospital_info values(8,'Serene Skin Clinic','Bhubaneswar','Odisha','Dermatology',9876543217);
INSERT INTO hospital_info values(9,'Medline Cancer Center','Chandigarh','Punjab','Oncology',9876543218);
INSERT INTO hospital_info values(10,'Harmony Kidney Hospital','Bhopal','Madhya Pradesh','Nephrology',9876543219);
INSERT INTO hospital_info values(11,'Tranquil Mind Psychiatry','Indore','Madhya Pradesh','Psychiatry',9876543220);
INSERT INTO hospital_info values(12,'Nova Women’s Health','Chennai','Tamil Nadu','Gynecology',9876543221);
INSERT INTO hospital_info values(13,'Healwell Gastro Clinic','Nagpur','Maharashtra','Gastroenterology',9876543222);
INSERT INTO hospital_info values(14,'Silverline Pulmonary Care','Kochi','Kerala','Pulmonology',9876543223);
INSERT INTO hospital_info values(15,'Evercare Trauma Center','Surat','Gujarat','Emergency & Trauma',9876543224);

SELECT * FROM hospital_info;

CREATE TABLE state_info(
state_id int,
state_name varchar(30),
capital varchar(30),
population bigint,
area_sq_km int,
official_language varchar(50),
literacy_rate decimal(5,2));

INSERT INTO state_info VALUES (1,'Maharashtra','Mumbai',124437000,307713,'Marathi',82.34);
INSERT INTO state_info VALUES (2,'Karnataka','Bangalore',69026000,191791,'Kannada',75.36);
INSERT INTO state_info VALUES (3,'Tamil Nadu','Chennai',77841200,130058,'Tamil',80.09);
INSERT INTO state_info VALUES (4,'Uttar Pradesh','Lucknow',241066000,243286,'Hindi',67.68);
INSERT INTO state_info VALUES (5,'Gujarat','Gandhinagar',71515000,196024,'Gujarati',78.03);
INSERT INTO state_info VALUES (6,'West Bengal','Kolkata',99609300,88752,'Bengali',77.08);
INSERT INTO state_info VALUES (7,'Rajasthan','Jaipur',81058700,342239,'Hindi',72.80);
INSERT INTO state_info VALUES (8,'Kerala','Thiruvananthapuram',35699400,38863,'Malayalam',94.00);
INSERT INTO state_info VALUES (9,'Punjab','Chandigarh',31244500,50362,'Punjabi',75.80);
INSERT INTO state_info VALUES (10,'Madhya Pradesh','Bhopal',86044200,308350,'Hindi',70.63);
INSERT INTO state_info VALUES (11,'Odisha','Bhubaneswar',45586000,155707,'Odia',72.87);
INSERT INTO state_info VALUES (12,'Telengana','Hyderabad',39837000,112077,'Telugu',72.80);
INSERT INTO state_info VALUES (13,'Haryana','Chandigarh',28904000,44212,'Hindi',76.64);
INSERT INTO state_info VALUES (14,'Assam','Dispur',35607000,78438,'Assamese',73.18);
INSERT INTO state_info VALUES (15,'Bihar','Patna',128477000,94163,'Hindi',63.82);

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



rollback;

DELETE FROM country_info_dup WHERE country_name='Japan';

DELETE FROM country_info_dup WHERE country_name='United Kingdom';

commit;

rollback;

CREATE TABLE cricket_info(
match_id int,
match_date date,
venue varchar(20),
team1 varchar(30),
team2 varchar(30),
total_score int,
top_scorer varchar(30),
man_of_the_match varchar(30),
best_bowler varchar(30),
winning_team varchar(30));

drop table cricket_info;

INSERT INTO cricket_info VALUES
(1,'2024-05-26','Chennai','Kolkata Knight Riders','Sunrisers Hyderabad',114,'Venkatesh Iyer','Mitchell Starc','Mitchell Starc','Kolkata Knight Riders'),
(2,'2024-05-24','Ahmedabad','Sunrisers Hyderabad','Rajasthan Royals',175,'Rahul Tripathi','Rahul Tripathi','Bhuvneshwar Kumar','Sunrisers Hyderabad'),
(3,'2024-05-21','Mumbai','Kolkata Knight Riders','Sunrisers Hyderabad',164,'Shreyas Iyer','Shreyas Iyer','Varun Chakravarthy','Kolkata Knight Riders'),
(4,'2024-05-19','Hyderabad','Sunrisers Hyderabad','Punjab Kings',215,'Aiden Markram','Aiden Markram','Umran Malik','Sunrisers Hyderabad'),
(5,'2024-05-15','Jaipur','Rajasthan Royals','Punjab Kings',144,'Sanju Samson','Liam Livingstone','Arshdeep Singh','Punjab Kings'),
(6,'2024-05-12','Chennai','Chennai Super Kings','Rajasthan Royals',145,'Ruturaj Gaikwad','Ruturaj Gaikwad','Deepak Chahar','Chennai Super Kings'),
(7,'2024-05-11','Mumbai','Mumbai Indians','Royal Challengers Bangalore',198,'Suryakumar Yadav','Suryakumar Yadav','Jasprit Bumrah','Mumbai Indians'),
(8,'2024-05-10','Delhi','Delhi Capitals','Lucknow Super Giants',172,'David Warner','David Warner','Anrich Nortje','Delhi Capitals'),
(9,'2024-05-09','Kolkata','Kolkata Knight Riders','Mumbai Indians',180,'Andre Russell','Andre Russell','Sunil Narine','Kolkata Knight Riders'),
(10,'2024-05-08','Bangalore','Royal Challengers Bangalore','Chennai Super Kings',190,'Virat Kohli','Virat Kohli','Harshal Patel','Royal Challengers Bangalore'),
(11,'2024-05-07','Lucknow','Lucknow Super Giants','Gujarat Titans',165,'KL Rahul','KL Rahul','Ravi Bishnoi','Lucknow Super Giants'),
(12,'2024-05-06','Ahmedabad','Gujarat Titans','Delhi Capitals',175,'Shubman Gill','Shubman Gill','Mohammed Shami','Gujarat Titans'),
(13,'2024-05-05','Hyderabad','Sunrisers Hyderabad','Chennai Super Kings',160,'Kane Williamson','Kane Williamson','T Natarajan','Sunrisers Hyderabad'),
(14,'2024-05-04','Mumbai','Mumbai Indians','Rajasthan Royals',185,'Ishan Kishan','Ishan Kishan','Jofra Archer','Mumbai Indians'),
(15,'2024-05-03','Chennai','Chennai Super Kings','Delhi Capitals',170,'MS Dhoni','MS Dhoni','Ravindra Jadeja','Chennai Super Kings'),
(16,'2024-05-02','Delhi','Delhi Capitals','Punjab Kings',155,'Prithvi Shaw','Prithvi Shaw','Kagiso Rabada','Delhi Capitals'),
(17,'2024-05-01','Jaipur','Rajasthan Royals','Royal Challengers Bangalore',175,'Jos Buttler','Jos Buttler','Yuzvendra Chahal','Rajasthan Royals'),
(18,'2024-04-30','Bangalore','Royal Challengers Bangalore','Lucknow Super Giants',180,'Faf du Plessis','Faf du Plessis','Josh Hazlewood','Royal Challengers Bangalore'),
(19,'2024-04-29','Ahmedabad','Gujarat Titans','Sunrisers Hyderabad',190,'Hardik Pandya','Hardik Pandya','Rashid Khan','Gujarat Titans'),
(20,'2024-04-28','Kolkata','Kolkata Knight Riders','Punjab Kings',200,'Nitish Rana','Nitish Rana','Pat Cummins','Kolkata Knight Riders');


/* 25-03-2025*/
upper
lower
concat
sum
count
avg
max
min

SELECT * FROM cricket_info;
SELECT count(match_id) as no_of_matches from cricket_info;

SELECT sum(total_score) as total_runs FROM cricket_info;

SELECT avg(total_score) as avg_score FROM cricket_info;

select max(total_score) as max_score FROM cricket_info;

SELECT match_date,UPPER(top_scorer) as top_scorer FROM cricket_info WHERE venue='Bangalore';

CREATE TABLE FootBall_info(
id int,
name varchar(20),
country varchar(20),
club varchar(20),
position varchar(20),
goal int,
matches int,
yellow_card int,
red_card int,
pass_accuracy float);

desc FootBall_info;

SELECT * FROM FootBall_info;
INSERT INTO FootBall_info VALUES(1,'Lionel Messi','Argentina','Inter Miami','Forward',850,750,45,2,89.4);
INSERT INTO FootBall_info VALUES(2,'Cristiano Ronaldo','Portugal',	'Al-Nassr',	'Forward',	900,850,60,5,86.2);
INSERT INTO FootBall_info VALUES(3,'Neymar Jr','Brazil','Al-Hilal','Forward',700,450,70,10,84.5);
INSERT INTO FootBall_info VALUES(4,'Kylian Mbappé','France','PSG',	'Forward',400,	320,30,1,87.2);
INSERT INTO FootBall_info VALUES(5,'Kevin De Bruyne','Belgium','Man City','Midfielder',600,150,25,0,90.5);
INSERT INTO FootBall_info VALUES(6,'Luka Modric','Croatia','Real Madrid','Midfielder',750,100,20,0,91.3);
INSERT INTO FootBall_info VALUES(7,'Robert Lewandowski','Poland','Barcelona','Forward',750,600,40,3,85.1);
INSERT INTO FootBall_info VALUES(8,'Mohamed Salah','Egypt','Liverpool','Forward',550,350,35,2,84.8);
INSERT INTO FootBall_info VALUES(9,'Karim Benzema','France','Al-Ittihad','Forward',800,500,50,4,87.0);
INSERT INTO FootBall_info VALUES(10,'Bruno Fernandes','Portugal','Man United','Midfielder',400,120,20,1,89.2);
INSERT INTO FootBall_info VALUES(11,'Joshua Kimmich','German','Bayern Munich','Midfielder',450,80,25,1,92.5);
INSERT INTO FootBall_info VALUES(12,'Casemiro','Brazil','Man United','Midfielder',500,70,45,4,88.9);
INSERT INTO FootBall_info VALUES(13,'Virgil van Dijk','Netherlands','Liverpool','Defender',480,40,50,2,86.7);
INSERT INTO FootBall_info VALUES(14,'Sergio Ramos','Spain','Sevilla','Defender',700,80,100,8,83.4);
INSERT INTO FootBall_info VALUES(15,'João Cancelo','Portugal','Barcelona','Defender',420,30,35,2,90.2);
INSERT INTO FootBall_info VALUES(16,'Achraf Hakimi','Morocco','PSG','Defender',350,25,30,1,89.7);

SELECT * FROM FootBall_info;

/*26-03-2025*/

group by
having
distinct

execution order: SELECT DISTINCT FROM WHERE GROUP BY HAVING

SELECT matches as no_of_matches,country FROM football_info GROUP BY country HAVING no_of_matches>600;

SELECT matches as no_of_matches,country FROM football_info WHERE matches>=400 group by country;

SELECT DISTINCT red_card FROM football_info;

SELECT DISTINCT red_card,country,id FROM football_info;


CREATE TABLE bmtc_details(
bus_id  int,
bus_number varchar(5),
source varchar(30),
src_arrival time,
src_departure time,
destination varchar(30),
reaching_time time,
ticket_charge int,
travel_time int,
no_of_buses int);

drop table bmtc_deatils;

SELECT * FROM bmtc_details;

INSERT INTO bmtc_details VALUES(1,'335E','Majestic','06:00:00','06:10:00','Brookefield','07:30:00',35,80,10);

INSERT INTO bmtc_details VALUES(2,'500D','Silk Board','07:00:00','07:10:00','CV Raman Nagar','08:15:00',30,75,8);
INSERT INTO bmtc_details VALUES(3,'201R','HSR Layout','07:30:00','07:40:00','Malleshpalya','08:50:00',25,70,6);
INSERT INTO bmtc_details VALUES(4,'411G','Jalahalli','06:45:00','06:55:00','HAL','08:00:00',40,85,7);
INSERT INTO bmtc_details VALUES(5,'500CA','BTM Layout','08:00:00','08:10:00','Jeevan Bhima Nagar','09:05:00',28,55,5);
INSERT INTO bmtc_details VALUES(6,'356C','Majestic','06:30:00','06:40:00','Silk Board','07:50:00',32,70,9);
INSERT INTO bmtc_details VALUES(7,'KBS-9','CV Raman Nagar','07:15:00','07:25:00','HSR Layout','08:45:00',30,80,4);
INSERT INTO bmtc_details VALUES(8,'500E','Brookefield','08:20:00','08:30:00','BTM Layout','09:50:00',34,80,6);
INSERT INTO bmtc_details VALUES(9,'201K','Jeevan Bhima Nagar','07:40:00','07:50:00','Jalahalli','09:20:00',38,90,3);
INSERT INTO bmtc_details VALUES(10,'411C','HAL','06:20:00','06:30:00','Majestic','07:40:00',42,70,5);
INSERT INTO bmtc_details VALUES(11,'330','HAL','13:30:00','13:40:00','Shivaji Nagar','14:40:00',30,60,15);

INSERT INTO bmtc_details VALUES  
(12,'201C','C.V. Raman Nagar','07:00:00','07:05:00','Majestic','08:15:00',25,70,5), 
(13,'500F','Brookefield','08:00:00','08:10:00','Silk Board','09:00:00',30,50,6), 
(14,'335E','HAL','06:30:00','06:35:00','Majestic','07:45:00',35,75,4), 
(15,'201R','Jeevan Bhima Nagar','09:15:00','09:20:00','BTM','10:00:00',30,40,3), 
(16,'500CA','Malleshpalya','07:45:00','07:50:00','HSR Layout','08:30:00',28,40,5), 
(17,'600D','BTM','10:30:00','10:35:00','Jalahalli','11:45:00',40,70,2), 
(18,'500A','Silk Board','12:00:00','12:05:00','Marathahalli','12:40:00',25,35,4), 
(19,'500CA','HSR Layout','13:20:00','13:25:00','Brookefield','14:10:00',35,45,3), 
(20,'258C','Majestic','15:00:00','15:05:00','Jalahalli','15:45:00',20,40,6);

INSERT INTO bmtc_details VALUES (21,'600F','Banshankari','16:30:00','16:35:00','Elcetronic city','17:50:00',50,75,15);

CREATE TABLE tourist_info(
tourist_id int,
tourist_name varchar(30),
tourist_contact bigint,
age int,
state varchar(20),
place varchar(30),
no_of_days_visiting int,
hotel_name varchar(20),
room_no int,
guide_name varchar(30));

SELECT * FROM tourist_info;
INSERT INTO tourist_info VALUES (1,"Sonal Vinod Karma",9739257715,21,'Karnataka','Mysore',3,'Hotel Blue Sky',203,'Chirag');

INSERT INTO tourist_info VALUES (2,"Saahil Vinod Karma",7408253746,17,'Karnataka','Hampi',2,'Hotel Vijayanagara',101,'Ramesh Gowda');
INSERT INTO tourist_info VALUES (3,"Lakshmi Vinod",8974526371,43,'Karnataka','Coorg',4,'Rainforest Retreat',305,'Sandeep Bhat');
INSERT INTO tourist_info VALUES (4,"Vinod Kumar",8123694785,50,'Karnataka','Gokarna',3,'Om Beach Resort',402,'Manoj Shetty');
INSERT INTO tourist_info VALUES (5,"Vipin Raj",9534672190,52,'Karnataka','Chikmagalur',3,'Coffee County',212,'Chirag Rao');
INSERT INTO tourist_info VALUES (6,"Natasha Arya",7012658473,18,'Karnataka','Badami',2,'Heritage Stay',307,'Harish Desai');

INSERT INTO tourist_info VALUES (7,"Vidya Aryattu",8887365902,37,'Kerala','Munnar',5,'Tea Garden Resort',504,'Santhosh Menon');
INSERT INTO tourist_info VALUES (8,"Akhil Varma",9632145780,25,'Kerala','Alleppey',3,'Houseboat Stay',115,'Rajan Nair');
INSERT INTO tourist_info VALUES (9,"Archana Rajendran",7403256981,30,'Kerala','Kumarakom',4,'Lakeside View',208,'Vinod Kurup');
INSERT INTO tourist_info VALUES (10,"Rahana Raj",8971542603,26,'Kerala','Kovalam',2,'Beachside Retreat',303,'Deepak Varma');
INSERT INTO tourist_info VALUES (11,"Aswathy Balakrishnan",9123745698,23,'Kerala','Wayanad',3,'Green Hills Resort',412,'Praveen Pillai');

INSERT INTO tourist_info VALUES (12,"Vishnu B",8765231409,27,'Uttar Pradesh','Varanasi',3,'Ganga View Hotel',102,'Ravi Tiwari');
INSERT INTO tourist_info VALUES (13,"Rahul Ravindran",7402589143,33,'Uttar Pradesh','Agra',2,'Taj Heritage Inn',205,'Manish Sharma');
INSERT INTO tourist_info VALUES (14,"Kavya Ravindran",9823654710,27,'Uttar Pradesh','Prayagraj',3,'Sangam Residency',312,'Amit Verma');
INSERT INTO tourist_info VALUES (15,"Chandrababu Sreekumar",7415698327,29,'Uttar Pradesh','Lucknow',4,'Nawab Palace',110,'Suresh Gupta');

INSERT INTO tourist_info VALUES (16,"Anil Kumar",7003258741,26,'Delhi','New Delhi',3,'Capital Heights',408,'Vikram Singh');

INSERT INTO tourist_info VALUES (17,"Amritha Suresh",8596327410,29,'Tamil Nadu','Ooty',4,'Hilltop Lodge',209,'Karthik Rajan');
INSERT INTO tourist_info VALUES (18,"Midhun Raj",7471259863,34,'Tamil Nadu','Kanyakumari',2,'Seaview Hotel',311,'Arun Kumar');

INSERT INTO tourist_info VALUES (19,"Jithin Mohan",9658741230,30,'Maharashtra','Mumbai',3,'Marine Drive Inn',405,'Rajesh Patil');

INSERT INTO tourist_info VALUES (20,"Anjelina Rachel Jibu",8756321490,16,'Rajasthan','Jaipur',5,'Rajputana Haveli',506,'Mahesh Singh');

INSERT INTO tourist_info VALUES (21,"Aldrina Sarah Jibu",7012349856,12,'Andhra Pradesh','Visakhapatnam',3,'Bayview Resort',303,'Akshay Reddy');
INSERT INTO tourist_info VALUES (22,"Sonal Vinod Karma",8912345076,21,'Telangana','Hyderabad',4,'Charminar Residency',114,'Mallikarjuna Reddy');

SELECT * FROM tourist_info;


SELECT state,tourist_name, no_of_days_visiting from tourist_info group by state;
SELECT tourist_name, MAX(age), no_of_days_visiting from tourist_info group by state having no_of_days_visiting>3;

SELECT count(tourist_name) as no_of_tourists,state,age from tourist_info group by state having age>20;

SELECT state,sum(no_of_days_visiting) from tourist_info group by state;
SELECT state,avg(no_of_days_visiting) from tourist_info group by state;
SELECT state,min(age) from tourist_info group by state;

CREATE TABLE kabaddi_info(
pkl_id int unique not null,
team_name varchar(30) unique not null,
team_city varchar(30) unique not null,
team_home_stadium varchar(30) unique not null,
no_of_players int,
previous_match_date date,
previous_match_team varchar(30),
previous_match_winner varchar(30),
next_match_with varchar(30),
next_match_date date unique);

CREATE TABLE pkl_info(
pkl_id int unique primary key











