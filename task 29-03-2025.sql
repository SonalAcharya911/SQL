

CREATE TABLE kabaddi_info(
pkl_id int primary key,
team_name varchar(30) not null,
player_name varchar(30) unique not null,
role varchar(20) not null,
total_points int not null,
matches_played int not null);

DROP TABLE kabaddi_info;

desc pkl_info;



CREATE TABLE pkl_info(
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

ALTER TABLE pkl_info modify column previous_match_date date unique;
ALTER TABLE pkl_info modify column no_of_players int not null;
desc pkl_info;

drop table pkl_info;

CREATE TABLE pkl_info (
pkl_id INT UNIQUE NOT NULL,              
team_name VARCHAR(30) NOT NULL unique,   
team_city VARCHAR(30) NOT NULL,          
home_stadium VARCHAR(50) UNIQUE NOT NULL,
no_of_players int,
total_titles int,
coach_name VARCHAR(50) NOT NULL,          
captain_name VARCHAR(50) UNIQUE NOT NULL,              
next_match_date DATE UNIQUE NOT NULL,
next_match_against varchar(30));

INSERT INTO pkl_info VALUES (1, 'Bengal Warriors', 'Kolkata', 'Netaji Indoor Stadium', 12, 1, 'BC Ramesh', 'Maninder Singh', '2025-04-06', 'Haryana Steelers');
INSERT INTO pkl_info VALUES (2, 'Dabang Delhi KC', 'Delhi', 'Thyagaraj Sports Complex', 12, 1, 'Krishan Kumar Hooda', 'Naveen Kumar', '2025-04-07', 'Puneri Paltan');
INSERT INTO pkl_info VALUES (3, 'U Mumba', 'Mumbai', 'Dome, NSCI', 12, 1, 'Anup Kumar', 'Surinder Singh', '2025-04-03', 'Jaipur Pink Panthers');
INSERT INTO pkl_info VALUES (4, 'Jaipur Pink Panthers', 'Jaipur', 'Sawai Mansingh Stadium', 12, 2, 'Sanjeev Baliyan', 'Sunil Kumar', '2025-04-04', 'Tamil Thalaivas');
INSERT INTO pkl_info VALUES (5, 'Tamil Thalaivas', 'Chennai', 'Jawaharlal Nehru Stadium', 12, 0, 'Ashan Kumar', 'Ajinkya Pawar', '2025-04-08', 'UP Yoddhas');
INSERT INTO pkl_info VALUES (6, 'Haryana Steelers', 'Haryana', 'Tau Devi Lal Stadium', 12, 0, 'Manpreet Singh', 'Joginder Narwal', '2025-04-11', 'Dabang Delhi');
INSERT INTO pkl_info VALUES (7, 'Bengaluru Bulls', 'Bengaluru', 'Sree Kanteerava Stadium', 12, 2, 'Randhir Singh', 'Mahender Singh', '2025-04-05', 'Gujarat Giants');
INSERT INTO pkl_info VALUES (8, 'Telugu Titans', 'Hyderabad', 'Gachibowli Indoor Stadium', 12, 0, 'Venkatesh Goud', 'Siddharth Desai', '2025-04-13', 'Jaipur Pink Panthers');
INSERT INTO pkl_info VALUES (9, 'UP Yoddhas', 'Lucknow', 'Babu Banarasi Das Stadium', 12, 0, 'Jasveer Singh', 'Pardeep Narwal', '2025-04-09', 'Bengaluru Bulls');
INSERT INTO pkl_info VALUES (10, 'Gujarat Giants', 'Ahmedabad', 'The Arena', 12, 0, 'Ram Mehar Singh', 'Chandran Ranjit', '2025-04-10', 'Telugu Titans');
INSERT INTO pkl_info VALUES (11, 'Patna Pirates', 'Patna', 'Patliputra Sports Complex', 12, 3, 'Rakesh Kumar', 'Neeraj Kumar', '2025-04-02', 'U Mumba');
INSERT INTO pkl_info VALUES (12, 'Puneri Paltan', 'Pune', 'Shree Shiv Chhatrapati Stadium', 12, 0, 'BC Ramesh', 'Aslam Inamdar', '2025-04-12', 'U Mumba');

INSERT INTO pkl_info VALUES (13, 'Pune Tigers', 'Pune', 'Balewadi Sports Complex', 11, 0, 'Arjun Singh', 'Sandeep Narwal', '2025-04-14', 'Bengaluru Bulls');
INSERT INTO pkl_info VALUES (14, 'Vizag Titans', 'Visakhapatnam', 'Vizag Indoor Stadium', 11, 0, 'Kiran More', 'Rohit Baliyan', '2025-04-15', 'Haryana Steelers');
INSERT INTO pkl_info VALUES (15, 'Delhi Dynamos Kabaddi', 'Delhi', 'Indira Gandhi Arena', 10, 0, 'Ravi Kumar', 'Surjeet Singh', '2025-04-16', 'UP Yoddhas');

INSERT INTO pkl_info VALUES (16, 'Mumbai Lions', 'Mumbai', 'Wankhede Indoor Arena', 11, 1, 'Anil Kumar', 'Rohit Kumar', '2025-04-17', 'Bengaluru Bulls');
INSERT INTO pkl_info VALUES (17, 'Rajasthan Riders', 'Jaipur', 'Jaipur Indoor Arena', 11, 0, 'Suresh Kumar', 'Mohit Chhillar', '2025-04-18', 'Haryana Steelers');
INSERT INTO pkl_info VALUES (18, 'Kolkata Kings', 'Kolkata', 'Kolkata Indoor Stadium', 10, 0, 'Rajesh Singh', 'Amit Hooda', '2025-04-19', 'UP Yoddhas');
INSERT INTO pkl_info VALUES (19, 'Ahmedabad Strikers', 'Ahmedabad', 'Gujarat Kabaddi Arena', 10, 0, 'Vikas Shetty', 'Sachin Tanwar', '2025-04-20', 'Mumbai Lions');
INSERT INTO pkl_info VALUES (20, 'Hyderabad Bulls', 'Hyderabad', 'Hyderabad Sports Arena', 10, 0, 'Rajkumar Gupta', 'Vishal Mane', '2025-04-21', 'Patna Pirates');


select * from pkl_info;
SELECT team_city, COUNT(team_name) as total_teams,total_titles
FROM pkl_info
GROUP BY team_city having total_titles=0;

SELECT team_city, SUM(no_of_players) as total_players
FROM pkl_info
GROUP BY team_city having team_city in('kolkata','delhi','mumbai','jaipur');

SELECT team_city, avg(no_of_players) as total_players
FROM pkl_info
GROUP BY team_city having team_city in('kolkata','delhi','mumbai','jaipur');

SELECT team_city, MIN(no_of_players) AS min_players
FROM pkl_info
GROUP BY team_city;

SELECT team_city, MAX(no_of_players) AS max_players
FROM pkl_info
GROUP BY team_city;

SELECT team_city, SUM(total_titles) AS total_titles
FROM pkl_info
GROUP BY team_city
HAVING SUM(total_titles) > 1;



CREATE TABLE movies_info(
movie_id int primary key,
title varchar(50) not null unique,
director varchar(30) not null,
producer varchar(30) not null,
release_date date unique not null,
language varchar(10),
lead_actor varchar(30),
budget bigint not null,
box_office bigint not null,
production_company varchar(30));


INSERT INTO movies_info VALUES
(1, 'The Dark Knight', 'Christopher Nolan', 'Emma Thomas', '2008-07-18', 'English', 'Christian Bale', 185000000, 1004558444, 'Warner Bros. Pictures');

INSERT INTO movies_info VALUES(2, 'Spider-Man: No Way Home', 'Jon Watts', 'Kevin Feige', '2021-12-17', 'English', 'Tom Holland', 200000000, 1850000000, 'Columbia Pictures');
INSERT INTO movies_info VALUES(3, 'Iron Man', 'Jon Favreau', 'Avi Arad', '2008-05-02', 'English', 'Robert Downey Jr.', 140000000, 585174222, 'Marvel Studios');
INSERT INTO movies_info VALUES(4, 'The Avengers', 'Joss Whedon', 'Kevin Feige', '2012-05-04', 'English', 'Robert Downey Jr.', 220000000, 1518812988, 'Marvel Studios');
INSERT INTO movies_info VALUES(5, 'Wonder Woman', 'Patty Jenkins', 'Chuck Roven', '2017-06-02', 'English', 'Gal Gadot', 149000000, 821847012, 'Warner Bros. Pictures');
INSERT INTO movies_info VALUES(6, 'Black Panther', 'Ryan Coogler', 'Kevin Feige', '2018-02-16', 'English', 'Chadwick Boseman', 200000000, 1346913161, 'Marvel Studios');
INSERT INTO movies_info VALUES(7, 'Thor: Ragnarok', 'Taika Waititi', 'Kevin Feige', '2017-11-03', 'English', 'Chris Hemsworth', 180000000, 850000000, 'Marvel Studios');
INSERT INTO movies_info VALUES(8, 'Captain America: Civil War', 'Anthony Russo, Joe Russo', 'Kevin Feige', '2016-04-12', 'English', 'Chris Evans', 250000000, 1153296293, 'Marvel Studios');
INSERT INTO movies_info VALUES(9, 'Justice League', 'Zack Snyder', 'Charles Roven', '2017-11-17', 'English', 'Ben Affleck', 300000000, 657924295, 'Warner Bros. Pictures');
INSERT INTO movies_info VALUES(10, 'Doctor Strange', 'Scott Derrickson', 'Kevin Feige', '2016-10-25', 'English', 'Benedict Cumberbatch', 165000000, 677718395, 'Marvel Studios');
INSERT INTO movies_info VALUES(11, 'Shazam!', 'David F. Sandberg', 'Peter Safran', '2019-04-05', 'English', 'Zachary Levi', 100000000, 366000000, 'Warner Bros. Pictures');
INSERT INTO movies_info VALUES(12, 'Deadpool', 'Tim Miller', 'Simon Kinberg', '2016-02-12', 'English', 'Ryan Reynolds', 58000000, 783112979, '20th Century Fox');
INSERT INTO movies_info VALUES(13, 'Aquaman', 'James Wan', 'Peter Safran', '2018-12-21', 'English', 'Jason Momoa', 160000000, 1148161807, 'Warner Bros. Pictures');
INSERT INTO movies_info VALUES(14, 'Batman Begins', 'Christopher Nolan', 'Emma Thomas', '2005-06-15', 'English', 'Christian Bale', 150000000, 373000000, 'Warner Bros. Pictures');
INSERT INTO movies_info VALUES(15, 'Man of Steel', 'Zack Snyder', 'Christopher Nolan', '2013-06-14', 'English', 'Henry Cavill', 225000000, 668045518, 'Warner Bros. Pictures');
INSERT INTO movies_info VALUES(16, 'Ra.One', 'Anubhav Sinha', 'Shahrukh Khan', '2011-10-26', 'Hindi', 'Shah Rukh Khan', 1500000000, 1900000000, 'Red Chillies Entertainment');
INSERT INTO movies_info VALUES(17, 'Krrish', 'Rakesh Roshan', 'Rakesh Roshan', '2006-06-23', 'Hindi', 'Hrithik Roshan', 450000000, 1100000000, 'Filmkraft Productions');
INSERT INTO movies_info VALUES(18, 'Eega', 'S. S. Rajamouli', 'Shobu Yarlagadda', '2012-10-12', 'Telugu', 'Sudeep', 300000000, 1000000000, 'Arka Media Works');
INSERT INTO movies_info VALUES(19, 'The Return of Hanuman', 'Saurabh Tiwari', 'Saurabh Tiwari', '2007-03-02', 'Hindi', 'Shakti Kapoor', 150000000, 200000000, 'Maya Digital Studios');
INSERT INTO movies_info VALUES(20, 'Venom', 'Ruben Fleischer', 'Avi Arad', '2018-10-05', 'English', 'Tom Hardy', 100000000, 856085151, 'Columbia Pictures');
INSERT INTO movies_info VALUES(21, 'The Incredibles', 'Brad Bird', 'John Walker', '2004-11-05', 'English', 'Craig T. Nelson', 92000000, 633019734, 'Pixar Animation Studios');
INSERT INTO movies_info VALUES(22, 'Big Hero 6', 'Don Hall', 'Roy Conli', '2014-11-07', 'English', 'Ryan Potter', 165000000, 657800000, 'Walt Disney Animation Studios');
INSERT INTO movies_info VALUES(23, 'X-Men: Days of Future Past', 'Bryan Singer', 'Simon Kinberg', '2014-05-23', 'English', 'Hugh Jackman', 200000000, 748000000, '20th Century Fox');

ALTER TABLE movies_info ADD COLUMN imdb_rating decimal(2,1);

select * from movies_info;

UPDATE movies_info set imdb_rating=9.0 where movie_id=1;
UPDATE movies_info set imdb_rating=8.2 where movie_id=2;
UPDATE movies_info set imdb_rating=7.9 where movie_id=3;
UPDATE movies_info set imdb_rating=8.0 where movie_id=4;
UPDATE movies_info set imdb_rating=7.4 where movie_id=5;
UPDATE movies_info set imdb_rating=7.3 where movie_id=6;
UPDATE movies_info set imdb_rating=7.9 where movie_id=7;
UPDATE movies_info set imdb_rating=7.8 where movie_id=8;
UPDATE movies_info set imdb_rating=6.1 where movie_id=9;
UPDATE movies_info set imdb_rating=7.5 where movie_id=10;
UPDATE movies_info set imdb_rating=7.0 where movie_id=11;
UPDATE movies_info set imdb_rating=8.0 where movie_id=12;
UPDATE movies_info set imdb_rating=6.8 where movie_id=13;
UPDATE movies_info set imdb_rating=8.2 where movie_id=14;
UPDATE movies_info set imdb_rating=7.0 where movie_id=15;
UPDATE movies_info set imdb_rating=4.6 where movie_id=16;
UPDATE movies_info set imdb_rating=6.4 where movie_id=17;
UPDATE movies_info set imdb_rating=7.7 where movie_id=18;
UPDATE movies_info set imdb_rating=5.5 where movie_id=19;
UPDATE movies_info set imdb_rating=6.7 where movie_id=20;
UPDATE movies_info set imdb_rating=8.0 where movie_id=21;
UPDATE movies_info set imdb_rating=7.8 where movie_id=22;
UPDATE movies_info set imdb_rating=7.9 where movie_id=23;

select * from movies_info;

SELECT production_company, COUNT(movie_id) AS total_movies
FROM movies_info
GROUP BY production_company
HAVING COUNT(movie_id) > 1;

SELECT production_company, SUM(budget) AS total_budget
FROM movies_info
GROUP BY production_company
HAVING SUM(budget) > 1000000000;

SELECT production_company, AVG(imdb_rating) AS avg_rating
FROM movies_info
GROUP BY production_company
HAVING AVG(imdb_rating) > 7.0;

SELECT production_company, MIN(box_office) AS min_box_office
FROM movies_info
GROUP BY production_company
HAVING MIN(box_office) > 500000000;

SELECT production_company, MAX(box_office) AS max_box_office
FROM movies_info
GROUP BY production_company
HAVING MAX(box_office) > 1000000000;

SELECT language, COUNT(movie_id) AS total_movies
FROM movies_info
GROUP BY language
HAVING COUNT(movie_id) > 2;

=================================================

CREATE TABLE cosmetics_info (
product_id INT PRIMARY KEY,               
name VARCHAR(50) NOT NULL UNIQUE,      
brand VARCHAR(30) NOT NULL,              
category VARCHAR(30) NOT NULL,             
price DECIMAL(10,2) NOT NULL,
manufacturing_date DATE NOT NULL,    
expiry_date DATE,                            
skin_type VARCHAR(30),                
organic BOOLEAN,                     
barcode VARCHAR(50) UNIQUE);

desc cosmetics_info;

INSERT INTO cosmetics_info VALUES
(1, 'BB Cream SPF 30', 'Garnier', 'BB Cream', 699.00, '2024-01-15', '2026-01-15', 'All', TRUE, '123456789021'),
(2, 'Shea Butter Hand Cream', 'L\'Occitane', 'Hand Cream', 999.50, '2023-12-10', '2026-12-10', 'All', TRUE, '123456789030'),
(3, 'Matte Perfection Foundation', 'Maybelline', 'Foundation', 799.50, '2023-10-15', '2025-10-15', 'Oily', FALSE, '123456789013'),
(4, 'Golden Glow Highlighter', 'Fenty Beauty', 'Highlighter', 1799.50, '2023-09-30', '2025-09-30', 'All', FALSE, '123456789019'),
(5, 'Hydrating Lip Balm', 'Nivea', 'Lip Balm', 299.00, '2023-11-18', '2025-11-18', 'All', TRUE, '123456789018'),
(6, 'SPF 50 Sunscreen', 'Biotique', 'Sunscreen', 599.99, '2023-09-15', '2025-09-15', 'All', TRUE, '123456789031'),
(7, 'Silky Touch Lipstick', 'MAC', 'Lipstick', 1299.99, '2024-01-05', '2026-01-05', 'All', FALSE, '123456789014'),
(8, 'Hydra Glow Moisturizer', 'L\'Oreal', 'Moisturizer', 599.99, '2024-02-01', '2026-02-01', 'Dry', TRUE, '123456789012'),
(9, 'Matte Liquid Eyeliner', 'Lakme', 'Eyeliner', 450.00, '2023-10-10', '2025-10-10', 'All', FALSE, '123456789022'),
(10, 'Herbal Hair Oil', 'Himalaya', 'Hair Oil', 349.99, '2023-12-01', '2026-12-01', 'All', TRUE, '123456789020'),
(11, 'Glow Serum', 'The Ordinary', 'Serum', 899.99, '2024-03-10', '2026-03-10', 'All', TRUE, '123456789016'),
(12, 'Rose Petal Toner', 'Plum', 'Toner', 599.50, '2024-03-01', '2026-03-01', 'All', TRUE, '123456789023'),
(13, 'Cushion Compact Powder', 'Chanel', 'Compact Powder', 2599.99, '2024-02-25', '2026-02-25', 'Combination', FALSE, '123456789017'),
(14, 'Voluminous Mascara', 'L\'Oreal', 'Mascara', 999.00, '2023-11-05', '2025-11-05', 'All', FALSE, '123456789024'),
(15, 'Refreshing Face Mist', 'The Body Shop', 'Face Mist', 849.00, '2023-10-25', '2025-10-25', 'All', TRUE, '123456789026'),
(16, 'Nail Polish Red', 'O.P.I.', 'Nail Polish', 599.50, '2023-11-10', '2026-11-10', 'All', FALSE, '123456789028'),
(17, 'Aqua Fresh Face Wash', 'Neutrogena', 'Face Wash', 499.00, '2023-12-20', '2025-12-20', 'Sensitive', TRUE, '123456789015'),
(18, 'Collagen Boost Night Cream', 'Estee Lauder', 'Night Cream', 3499.99, '2024-02-05', '2026-02-05', 'Dry', FALSE, '123456789029'),
(19, 'Matte Blush', 'Huda Beauty', 'Blush', 1199.99, '2023-12-15', '2025-12-15', 'All', FALSE, '123456789027'),
(20, 'Charcoal Detox Face Mask', 'Mamaearth', 'Face Mask', 749.99, '2024-02-20', '2026-02-20', 'Oily', TRUE, '123456789025'),
(21, 'Vitamin C Face Serum', 'The Derma Co.', 'Serum', 999.99, '2024-01-10', '2026-01-10', 'All', TRUE, '123456789032'),
(22, 'Satin Finish Lipstick', 'Revlon', 'Lipstick', 899.00, '2023-11-22', '2025-11-22', 'All', FALSE, '123456789033'),
(23, 'Anti-Aging Night Cream', 'Olay', 'Night Cream', 1999.99, '2024-01-30', '2026-01-30', 'All', FALSE, '123456789034'),
(24, 'Soft Touch Body Lotion', 'Vaseline', 'Body Lotion', 549.99, '2023-12-05', '2026-12-05', 'All', TRUE, '123456789035'),
(25, 'Pore Minimizer Primer', 'Smashbox', 'Primer', 1599.50, '2024-02-18', '2026-02-18', 'All', FALSE, '123456789036'),
(26, 'Deep Hydration Shampoo', 'Dove', 'Shampoo', 799.99, '2023-09-28', '2025-09-28', 'All', TRUE, '123456789037'),
(27, 'Extra Volume Hair Spray', 'TRESemmé', 'Hair Spray', 699.00, '2023-10-20', '2025-10-20', 'All', FALSE, '123456789038'),
(28, 'Green Tea Cleansing Gel', 'Innisfree', 'Face Wash', 799.99, '2024-02-12', '2026-02-12', 'Sensitive', TRUE, '123456789039'),
(29, 'Hydrating Aloe Vera Gel', 'Patanjali', 'Aloe Gel', 299.50, '2023-11-01', '2026-11-01', 'All', TRUE, '123456789040'),
(30, 'Whitening Under Eye Cream', 'Kiehl\'s', 'Eye Cream', 1799.99, '2024-01-25', '2026-01-25', 'All', FALSE, '123456789041');

ALTER TABLE cosmetics_info ADD COLUMN origin_country varchar(30);

UPDATE cosmetics_info set origin_country='France' where product_id=1;

UPDATE cosmetics_info set origin_country='France' where product_id=2;
UPDATE cosmetics_info set origin_country='USA' where product_id=3;
UPDATE cosmetics_info set origin_country='USA' where product_id=4;
UPDATE cosmetics_info set origin_country='Germany' where product_id=5;
UPDATE cosmetics_info set origin_country='India' where product_id=6;
UPDATE cosmetics_info set origin_country='USA' where product_id=7;
UPDATE cosmetics_info set origin_country='France' where product_id=8;
UPDATE cosmetics_info set origin_country='India' where product_id=9;
UPDATE cosmetics_info set origin_country='India' where product_id=10;
UPDATE cosmetics_info set origin_country='Canada' where product_id=11;
UPDATE cosmetics_info set origin_country='India' where product_id=12;
UPDATE cosmetics_info set origin_country='France' where product_id=13;
UPDATE cosmetics_info set origin_country='France' where product_id=14;
UPDATE cosmetics_info set origin_country='UK' where product_id=15;
UPDATE cosmetics_info set origin_country='USA' where product_id=16;
UPDATE cosmetics_info set origin_country='USA' where product_id=17;
UPDATE cosmetics_info set origin_country='USA' where product_id=18;
UPDATE cosmetics_info set origin_country='UAE' where product_id=19;
UPDATE cosmetics_info set origin_country='India' where product_id=20;
UPDATE cosmetics_info set origin_country='India' where product_id=21;
UPDATE cosmetics_info set origin_country='USA' where product_id=22;
UPDATE cosmetics_info set origin_country='USA' where product_id=23;
UPDATE cosmetics_info set origin_country='USA' where product_id=24;
UPDATE cosmetics_info set origin_country='USA' where product_id=25;
UPDATE cosmetics_info set origin_country='UK' where product_id=26;
UPDATE cosmetics_info set origin_country='USA' where product_id=27;
UPDATE cosmetics_info set origin_country='South Korea' where product_id=28;
UPDATE cosmetics_info set origin_country='India' where product_id=29;
UPDATE cosmetics_info set origin_country='USA' where product_id=30;


SELECT * FROM cosmetics_info;

SELECT brand, COUNT(*) AS total_products
FROM cosmetics_info
GROUP BY brand
HAVING COUNT(*) > 2;

SELECT category, AVG(price) AS avg_price
FROM cosmetics_info
GROUP BY category
HAVING AVG(price) > 1000;


SELECT skin_type, MAX(price) AS max_price
FROM cosmetics_info
GROUP BY skin_type
HAVING MAX(price) > 1500;

SELECT organic, COUNT(*) AS total_products
FROM cosmetics_info
GROUP BY organic
HAVING COUNT(*) > 5;

SELECT origin_country, SUM(price) AS total_price
FROM cosmetics_info
GROUP BY origin_country
HAVING SUM(price) > 5000;

SELECT category, MIN(price) AS min_price
FROM cosmetics_info
GROUP BY category
HAVING MIN(price) > 500;

SELECT YEAR(expiry_date) AS expiry_year, COUNT(*) AS total_products
FROM cosmetics_info
GROUP BY YEAR(expiry_date)
HAVING COUNT(*) > 3;

SELECT organic, AVG(price) AS avg_price
FROM cosmetics_info
GROUP BY organic
HAVING AVG(price) > 800;

SELECT origin_country, COUNT(*) AS total_products
FROM cosmetics_info
GROUP BY origin_country
HAVING COUNT(*) > 2;

SELECT brand, SUM(price) AS total_value
FROM cosmetics_info
GROUP BY brand
HAVING SUM(price) > 3000;



