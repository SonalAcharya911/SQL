CREATE TABLE furniture_info (
id INT,
name VARCHAR(30),
category VARCHAR(30),
material VARCHAR(20),
price DECIMAL(10,2),
stock INT,
brand VARCHAR(30),
weight DECIMAL(5,2),
warranty_period INT,
color VARCHAR(30));


INSERT INTO Furniture_info VALUES
(1, 'Table Lamp', 'Bedroom', 'Wood', 90.00, 10, 'Wayfair', 12.0, 24, 'Espresso'),
(2, 'Sofa', 'Living Room', 'Leather', 500.00, 5, 'Ashley', 40.0, 48, 'Grey'),
(3, 'Dining Table', 'Dining', 'Glass', 300.00, 4, 'Urban Ladder', 25.0, 24, 'Black'),
(4, 'Desk', 'Office', 'Wood', 220.00, 15, 'Steelcase', 30.0, 36, 'Cherry'),
(5, 'Recliner', 'Living Room', 'Leather', 450.00, 4, 'La-Z-Boy', 45.0, 48, 'Beige'),
(6, 'Bar Stool', 'Kitchen', 'Metal', 80.00, 14, 'Target', 9.0, 12, 'Silver'),
(7, 'Table', 'Dining', 'Wood', 150.00, 10, 'Ikea', 20.5, 24, 'Brown'),
(8, 'Coffee Table', 'Living Room', 'Metal', 100.00, 7, 'Pepperfry', 8.0, 18, 'Gold'),
(9, 'TV Stand', 'Living Room', 'Wood', 180.00, 9, 'HomeTown', 10.5, 36, 'Mahogany'),
(10, 'Wardrobe', 'Storage', 'Wood', 600.00, 3, 'Durian', 70.0, 60, 'Oak'),
(11, 'Chair', 'Office', 'Plastic', 50.00, 20, 'Herman Miller', 5.0, 36, 'Black'),
(12, 'Cupboard', 'Storage', 'Metal', 250.00, 12, 'Godrej', 35.0, 24, 'Brown'),
(13, 'Bed', 'Bedroom', 'Wood', 700.00, 8, 'Sleepwell', 60.0, 60, 'White'),
(14, 'Bookshelf', 'Storage', 'Wood', 120.00, 6, 'Ikea', 15.0, 12, 'Walnut'),
(15, 'Dresser', 'Bedroom', 'Wood', 350.00, 6, 'West Elm', 50.0, 48, 'Dark Brown');



CREATE TABLE Electronic_Gadgets (
id int not null unique,
name VARCHAR(20) NOT NULL UNIQUE,
category VARCHAR(50),
brand VARCHAR(30),
model VARCHAR(30),
price DECIMAL(10,2),
stock INT,
color VARCHAR(30),
battery_life INT,
warranty_period INT,
processor VARCHAR(30),
ram INT,
storage INT,
camera_quality VARCHAR(50),
operating_system VARCHAR(50));


INSERT INTO Electronic_Gadgets VALUES
(1,'iPhone 13', 'Smartphone', 'Apple', 'A2633', 799.99, 50, 'Blue', 20, 12, 'A15 Bionic', 6, 128, '12MP', 'iOS'),
(2,'Galaxy S21', 'Smartphone', 'Samsung', 'SM-G991B', 699.99, 40, 'Phantom Gray', 22, 24, 'Exynos 2100', 8, 256, '64MP', 'Android'),
(3,'MacBook Air', 'Laptop', 'Apple', 'M1', 999.99, 30, 'Silver', 0, 36, 'M1', 8, 256, '720p', 'macOS'),
(4,'Dell XPS 13', 'Laptop', 'Dell', '9310', 1299.99, 25, 'White', 0, 24, 'Intel i7', 16, 512, '720p', 'Windows'),
(5,'iPad Pro', 'Tablet', 'Apple', 'M1', 1099.99, 20, 'Space Gray', 10, 12, 'M1', 8, 512, '12MP', 'iPadOS'),
(6,'Galaxy Tab S7', 'Tablet', 'Samsung', 'SM-T870', 649.99, 35, 'Mystic Black', 15, 24, 'Snapdragon 865+', 6, 128, '13MP', 'Android'),
(7,'PlayStation 5', 'Gaming Console', 'Sony', 'CFI-1015A', 499.99, 15, 'White', 0, 12, 'Custom AMD', 16, 825, 'N/A', 'Custom OS'),
(8,'Xbox Series X', 'Gaming Console', 'Microsoft', 'RRT-00010', 499.99, 10, 'Black', 0, 12, 'Custom AMD', 16, 1024, 'N/A', 'Custom OS'),
(9,'Bose QC 35', 'Headphones', 'Bose', 'QC35 II', 299.99, 50, 'Black', 30, 24, 'Custom', 0, 0, 'N/A', 'N/A'),
(10,'Sony WH-1000XM4', 'Headphones', 'Sony', 'WH1000XM4', 349.99, 45, 'Silver', 30, 24, 'Custom', 0, 0, 'N/A', 'N/A'),
(11,'Apple Watch 7', 'Smartwatch', 'Apple', 'A2473', 399.99, 60, 'Red', 18, 12, 'Custom', 1, 32, 'N/A', 'watchOS'),
(12,'Galaxy Watch 4', 'Smartwatch', 'Samsung', 'SM-R870', 249.99, 55, 'Green', 20, 24, 'Exynos W920', 1.5, 16, 'N/A', 'WearOS'),
(13,'Kindle Paperwhite', 'E-Reader', 'Amazon', '10th Gen', 129.99, 70, 'Black', 28, 12, 'Custom', 0.5, 8, 'N/A', 'Custom OS'),
(14,'GoPro Hero 9', 'Action Camera', 'GoPro', 'CHDHX-901', 399.99, 20, 'Black', 12, 12, 'Custom', 2, 64, '20MP', 'Custom OS'),
(15,'DJI Mini 2', 'Drone', 'DJI', 'MT2PD', 449.99, 15, 'Gray', 31, 12, 'Custom', 2, 32, '12MP', 'Custom OS');


CREATE TABLE Restaurant_info (
id int not null unique,
name VARCHAR(100),
location VARCHAR(100),
cuisine VARCHAR(50),
rating DECIMAL(3,2),
price_range VARCHAR(30),
phone_number VARCHAR(20),
opening_hours VARCHAR(50),
delivery_option BOOLEAN,
vegetarian_option BOOLEAN);


INSERT INTO Restaurant_info VALUES
(1,'The Leela Palace', 'Old Airport Road, Bangalore', 'Multicuisine', 4.8, '$$$$', '+91 80 2521 2345', '24 Hours', TRUE, TRUE),
(2,'Taj West End', 'Race Course Road, Bangalore', 'Indian, Continental', 4.7, '$$$$', '+91 80 6660 5600', '24 Hours', TRUE, TRUE),
(3,'The Ritz-Carlton', 'Residency Road, Bangalore', 'European, Asian', 4.6, '$$$$', '+91 80 4914 8000', '24 Hours', TRUE, FALSE),
(4,'ITC Gardenia', 'Residency Road, Bangalore', 'Indian, Italian', 4.5, '$$$$', '+91 80 2211 8000', '24 Hours', TRUE, TRUE),
(5,'Shangri-La Hotel', 'Vasanth Nagar, Bangalore', 'Asian, European', 4.7, '$$$$', '+91 80 4512 6120', '24 Hours', TRUE, TRUE),
(6,'JW Marriott Hotel', 'Vittal Mallya Road, Bangalore', 'Multicuisine', 4.6, '$$$$', '+91 80 6718 0000', '24 Hours', TRUE, TRUE),
(7,'Radisson Blu', 'Marathahalli, Bangalore', 'Indian, Continental', 4.4, '$$$', '+91 80 4510 1234', '24 Hours', TRUE, TRUE),
(8,'The Oberoi', 'MG Road, Bangalore', 'Indian, Italian', 4.8, '$$$$', '+91 80 2558 5858', '24 Hours', TRUE, TRUE),
(9,'Lalit Ashok', 'Kumara Krupa Road, Bangalore', 'Indian, Asian', 4.3, '$$$', '+91 80 3051 8700', '24 Hours', TRUE, TRUE),
(10,'Bangalore Palace Hotel', 'Vasanth Nagar, Bangalore', 'Continental, Indian', 4.4, '$$$', '+91 80 2235 3720', '24 Hours', TRUE, TRUE),
(11,'The Chancery Pavilion', 'Residency Road, Bangalore', 'Indian, Continental', 4.2, '$$$', '+91 80 4122 2200', '24 Hours', TRUE, TRUE),
(12,'Le Meridien', 'MG Road, Bangalore', 'Multicuisine', 4.6, '$$$$', '+91 80 4250 3333', '24 Hours', TRUE, TRUE),
(13,'Lemon Tree Premier', 'Whitefield, Bangalore', 'Indian, Continental', 4.5, '$$$', '+91 80 6601 1000', '24 Hours', TRUE, TRUE),
(14,'Movenpick Hotel', 'Hebbal, Bangalore', 'European, Indian', 4.7, '$$$$', '+91 80 6679 0000', '24 Hours', TRUE, FALSE),
(15,'Golden Tulip Bangalore', 'Jayanagar, Bangalore', 'Indian, Continental', 4.3, '$$', '+91 80 6666 5500', '24 Hours', TRUE, TRUE);

CREATE TABLE Olympics_info (
id int not null unique,
year INT,
city VARCHAR(100),
country VARCHAR(100),
sport VARCHAR(50),
event_name VARCHAR(100),
gold_medals INT,
silver_medals INT,
bronze_medals INT,
total_medals INT);


INSERT INTO Olympics_info VALUES
(1, 1980, 'Moscow', 'Soviet Union', 'Fencing', 'Men\'s Individual Sabre', 1, 0, 0, 1),
(2, 2020, 'Tokyo', 'Japan', 'Swimming', '100m Freestyle Women', 1, 1, 0, 2),
(3, 2016, 'Rio de Janeiro', 'Brazil', 'Gymnastics', 'Vault Men', 1, 1, 1, 3),
(4, 2008, 'Beijing', 'China', 'Basketball', 'Men\'s Basketball Final', 1, 0, 0, 1),
(5, 2000, 'Sydney', 'Australia', 'Tennis', 'Singles Men', 1, 0, 1, 2),
(6, 1984, 'Los Angeles', 'United States', 'Volleyball', 'Men\'s Final', 1, 0, 1, 2),
(7, 1992, 'Barcelona', 'Spain', 'Basketball', 'Women\'s Final', 1, 0, 0, 1),
(8, 1996, 'Atlanta', 'United States', 'Athletics', '400m Men', 1, 0, 0, 1),
(9, 1976, 'Montreal', 'Canada', 'Weightlifting', 'Men\'s Heavyweight', 1, 1, 0, 2),
(10, 1988, 'Seoul', 'South Korea', 'Table Tennis', 'Men\'s Singles', 1, 0, 0, 1),
(11, 2004, 'Athens', 'Greece', 'Football', 'Men\'s Final', 1, 1, 0, 2),
(12, 1992, 'Barcelona', 'Spain', 'Football', 'Men\'s Final', 1, 1, 1, 3),
(13, 1972, 'Munich', 'Germany', 'Football', 'Men\'s Final', 1, 1, 1, 3),
(14, 2024, 'Paris', 'France', 'Athletics', '100m Men', 1, 0, 0, 1),
(15, 1968, 'Mexico City', 'Mexico', 'Athletics', '200m Women', 1, 0, 1, 2);
































