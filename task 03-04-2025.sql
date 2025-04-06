CREATE database library_management_system;

use library_management_system;

CREATE TABLE members_info (
member_id INT PRIMARY KEY,
member_name VARCHAR(100),
dob DATE,
gender CHAR(1),
email VARCHAR(100),
phone VARCHAR(15),
address VARCHAR(255),
members_infohip_date DATE,
members_infohip_status VARCHAR(20),
total_books_issued INT);

ALTER TABLE members_info ADD CONSTRAINT mem_name_uni unique(member_name),
ADD CONSTRAINT email_uni unique(email);

ALTER TABLE members_info 
ADD CONSTRAINT gender_chk check(gender in ('M','F')),
ADD CONSTRAINT member_id_chk check(member_id>100),
ADD CONSTRAINT total_books_issued_chk check(total_books_issued<20) ;


INSERT INTO members_info VALUES (101, 'Sonal Vinod Karma', '2004-04-09', 'F', 'sonal.vinod.karma@gmail.com', '9739257715', '351, Koramangala, Bangalore', '2023-10-01', 'Inactive', 7);
INSERT INTO members_info VALUES (102, 'Saahil Vinod Karma', '2008-04-08', 'M', 'saahil.vinod.karma@gmail.com', '7408253746', '285, Indiranagar, Bangalore', '2023-07-05', 'Active', 15);
INSERT INTO members_info VALUES (103, 'Lakshmi Vinod', '1982-04-15', 'F', 'lakshmi.vinod@gmail.com', '8974526371', '537, Whitefield, Bangalore', '2023-08-01', 'Inactive', 11);
INSERT INTO members_info VALUES (104, 'Vinod Kumar', '1975-04-17', 'F', 'vinod.kumar@gmail.com', '8123694785', '786, Jayanagar, Bangalore', '2023-10-07', 'Active', 1);
INSERT INTO members_info VALUES (105, 'Vipin Raj', '1973-04-17', 'M', 'vipin.raj@gmail.com', '9534672190', '623, BTM Layout, Bangalore', '2023-04-25', 'Inactive', 5);
INSERT INTO members_info VALUES (106, 'Natasha Arya', '2007-04-09', 'F', 'natasha.arya@gmail.com', '7012658473', '139, HSR Layout, Bangalore', '2023-11-28', 'Inactive', 5);
INSERT INTO members_info VALUES (107, 'Vidya Aryattu', '1988-04-09', 'M', 'vidya.aryattu@gmail.com', '8887365902', '798, Rajajinagar, Bangalore', '2023-07-24', 'Active', 14);
INSERT INTO members_info VALUES (108, 'Akhil Suresh', '2000-04-10', 'F', 'akhil.suresh@gmail.com', '9632145780', '341, Basavanagudi, Bangalore', '2023-07-13', 'Active', 0);
INSERT INTO members_info VALUES (109, 'Amala Suresh', '1995-04-09', 'F', 'amala.suresh@gmail.com', '7403256981', '706, Marathahalli, Bangalore', '2023-08-04', 'Active', 10);
INSERT INTO members_info VALUES (110, 'Rahana Raj', '1999-04-09', 'M', 'rahana.raj@gmail.com', '8971542603', '139, Hebbal, Bangalore', '2023-01-25', 'Inactive', 4);
INSERT INTO members_info VALUES (111, 'Aswathy Balakrishnan', '2002-04-09', 'M', 'aswathy.balakrishnan@gmail.com', '9123745698', '439, Yelahanka, Bangalore', '2023-11-14', 'Active', 6);
INSERT INTO members_info VALUES (112, 'Rahul Ravindran', '1998-04-08', 'F', 'rahul.ravindran@gmail.com', '8765231409', '221, Malleshwaram, Bangalore', '2023-10-01', 'Inactive', 8);
INSERT INTO members_info VALUES (113, 'Kavya Ravindran', '1992-04-10', 'F', 'kavya.ravindran@gmail.com', '7402589143', '383, Banashankari, Bangalore', '2023-01-16', 'Active', 4);
INSERT INTO members_info VALUES (114, 'Chandrababu Sreekumar', '1998-04-08', 'F', 'chandrababu.sreekumar@gmail.com', '9823654710', '681, JP Nagar, Bangalore', '2023-05-25', 'Active', 1);
INSERT INTO members_info VALUES (115, 'Anil Kumar', '1996-04-09', 'M', 'anil.kumar@gmail.com', '7415698327', '834, Frazer Town, Bangalore', '2023-12-25', 'Inactive', 1);
INSERT INTO members_info VALUES (116, 'Amritha Suresh', '1999-04-09', 'M', 'amritha.suresh@gmail.com', '7003258741', '435, Ulsoor, Bangalore', '2023-06-01', 'Active', 3);
INSERT INTO members_info VALUES (117, 'Midhun Raj', '1996-04-09', 'M', 'midhun.raj@gmail.com', '8596327410', '408, KR Puram, Bangalore', '2023-07-14', 'Inactive', 1);
INSERT INTO members_info VALUES (118, 'Jithin Mohan', '1991-04-09', 'F', 'jithin.mohan@gmail.com', '7471259863', '992, Vijayanagar, Bangalore', '2023-10-12', 'Inactive', 15);
INSERT INTO members_info VALUES (119, 'Anjelina Rachel Jibu', '1995-04-09', 'M', 'anjelina.rachel.jibu@gmail.com', '9658741230', '574, MG Road, Bangalore', '2023-11-01', 'Inactive', 8);
INSERT INTO members_info VALUES (120, 'Aldrina Sarah Jibu', '2008-04-09', 'F', 'aldrina.sarah.jibu@gmail.com', '8756321490', '749, Electronic City, Bangalore', '2023-11-11', 'Active', 1);

select * from members_info;

CREATE TABLE issued_books_info (
issue_id INT PRIMARY KEY,
member_id INT not null,
book_id INT not null,
issue_date DATE,
due_date DATE not null,
return_date DATE,
fine DECIMAL(5,2),
issue_status VARCHAR(20),
issued_by INT,
remarks VARCHAR(255),
FOREIGN KEY (member_id) REFERENCES members_info(member_id));

ALTER TABLE issued_books_info ADD CONSTRAINT fine_uni unique(fine),
ADD CONSTRAINT due_date_uni unique(due_date);

ALTER TABLE issued_books_info 
ADD CONSTRAINT issue_id_check check(issue_id>200),
ADD CONSTRAINT member_id_check check(member_id>100),
ADD CONSTRAINT issue_status_check check(issue_status in ('Returned','Issued'));

INSERT INTO issued_books_info VALUES (201, 101, 301, '2025-03-01', '2025-03-16', '2025-03-14', 0.00, 'Returned', 401, '');
INSERT INTO issued_books_info VALUES (202, 102, 302, '2025-03-05', '2025-03-20', '2025-03-25', 10.00, 'Returned', 402, 'Late return');
INSERT INTO issued_books_info VALUES (203, 103, 303, '2025-02-20', '2025-03-06', '2025-03-01', 12.00, 'Returned', 403, '');
INSERT INTO issued_books_info VALUES (204, 101, 304, '2025-03-10', '2025-03-25', '2025-03-24', 30.00, 'Returned', 404, '');
INSERT INTO issued_books_info VALUES (205, 104, 305, '2025-03-12', '2025-03-27', '2025-03-29', 5.00, 'Returned', 405, 'Late return');
INSERT INTO issued_books_info VALUES
(206, 106, 306, '2024-02-01', '2024-02-17', '2024-02-18', 14.00, 'Returned', 406, 'Late return'),
(207, 107, 307, '2024-02-10', '2024-02-25', NULL, 15.00, 'Issued', 407, ''),
(208, 108, 308, '2024-01-05', '2024-01-20', '2024-01-19', 16.00, 'Returned', 408, ''),
(209, 109, 309, '2024-02-15', '2024-03-01', '2024-03-02', 17.00, 'Returned', 409, 'Late return'),
(210, 110, 310, '2024-01-20', '2024-02-04', NULL, 100.00, 'Issued', 410, ''),
(211, 111, 311, '2024-03-01', '2024-03-16', '2024-03-16', 39.00, 'Returned', 411, ''),
(212, 112, 312, '2024-01-11', '2024-01-26', '2024-01-30', 20.00, 'Returned', 412, 'Late return'),
(213, 113, 313, '2024-02-25', '2024-03-11', NULL, 9.00, 'Issued', 413, ''),
(214, 114, 314, '2024-01-28', '2024-02-12', '2024-02-14', 101.00, 'Returned', 414, 'Late return'),
(215, 115, 315, '2024-02-05', '2024-02-20', NULL, 60.00, 'Issued', 415, ''),
(216, 116, 316, '2024-03-05', '2024-03-20', '2024-03-20', 40.00, 'Returned', 416, ''),
(217, 117, 317, '2024-02-17', '2024-03-03', '2024-03-04', 55.00, 'Returned', 417, 'Late return'),
(218, 118, 318, '2024-02-01', '2024-02-16', NULL, 90.00, 'Issued', 418, ''),
(219, 119, 319, '2024-01-18', '2024-02-02', '2024-02-01', 37.00, 'Returned', 419, ''),
(220, 120, 320, '2024-03-02', '2024-03-17', NULL, 29.00, 'Issued', 420, '');


CREATE TABLE books_info (
book_id INT PRIMARY KEY,
issue_id INT not null,
member_id INT not null,
title VARCHAR(100),
author VARCHAR(100) not null,
genre VARCHAR(50),
ISBN VARCHAR(30),
published_year INT,
total_copies INT,
available_copies INT,
shelf_location VARCHAR(50),
FOREIGN KEY (issue_id) REFERENCES issued_books_info(issue_id),
FOREIGN KEY (member_id) REFERENCES members_info(member_id));

ALTER TABLE books_info 
ADD CONSTRAINT title_uni unique(title),
ADD CONSTRAINT ISBN_uni unique(ISBN);

ALTER TABLE books_info 
ADD CONSTRAINT pub_year_chk check(published_year>1800),
ADD CONSTRAINT available_copies_chk check(available_copies>=1),
ADD CONSTRAINT book_id_chk check(book_id >300);

select * from books_info;

INSERT INTO books_info VALUES (301, 201, 101, 'Hamlet', 'William Shakespeare', 'Tragedy', '978-3-5625048', 1962, 5, 3, 'S-1');
INSERT INTO books_info VALUES (302, 202, 102, 'The Jungle Book', 'Rudyard Kipling', 'Adventure', '978-3-6789012', 1975, 4, 2, 'S-2');
INSERT INTO books_info VALUES (303, 203, 103, 'Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 'Fantasy', '978-3-2345678', 1998, 6, 4, 'S-5');
INSERT INTO books_info VALUES (304, 204, 101, 'Malgudi Days', 'R.K. Narayan', 'Fiction', '978-3-4567890', 1987, 3, 1, 'S-4');
INSERT INTO books_info VALUES (305, 205, 104, 'Five Point Someone', 'Chetan Bhagat', 'Drama', '978-3-8901234', 2004, 5, 2, 'S-3');
INSERT INTO books_info VALUES
(306, 206, 106, 'Kim', 'Rudyard Kipling', 'Fiction', '978-76543219', 1901, 5, 3, 'S-3'),
(307, 207, 107, 'Harry Potter and the Chamber of Secrets', 'J.K. Rowling', 'Fantasy', '978-12349876', 1998, 7, 2, 'S-5'),
(308, 208, 108, 'The Guide', 'R.K. Narayan', 'Fiction', '978-65439871', 1958, 4, 1, 'S-4'),
(309, 209, 109, 'Two States', 'Chetan Bhagat', 'Romance', '978-32456987', 2009, 6, 4, 'S-7'),
(310, 210, 110, 'Leaves of Grass', 'Walt Whitman', 'Poetry', '978-65741289', 1855, 3, 1, 'S-6'),
(311, 211, 111, 'Romeo and Juliet', 'William Shakespeare', 'Tragedy', '978-32147865', 1597, 4, 2, 'S-1'),
(312, 212, 112, 'The White Tiger', 'Aravind Adiga', 'Drama', '978-23459876', 2008, 5, 2, 'S-3'),
(313, 213, 113, 'The Casual Vacancy', 'J.K. Rowling', 'Fiction', '978-54321876', 2012, 6, 4, 'S-8'),
(314, 214, 114, 'The Merchant of Venice', 'William Shakespeare', 'Drama', '978-89765432', 1605, 7, 5, 'S-2'),
(315, 215, 115, 'Interpreter of Maladies', 'Jhumpa Lahiri', 'Short Stories', '978-98234123', 1999, 5, 3, 'S-4'),
(316, 216, 116, 'Just Married, Please Excuse', 'Yashodhara Lal', 'Comedy', '978-23098765', 2012, 4, 2, 'S-5'),
(317, 217, 117, 'Train to Pakistan', 'Khushwant Singh', 'Historical Fiction', '978-19876543', 1956, 6, 4, 'S-6'),
(318, 218, 118, 'Half Girlfriend', 'Chetan Bhagat', 'Romance', '978-12897654', 2014, 7, 3, 'S-7'),
(319, 219, 119, 'The Palace of Illusions', 'Chitra Banerjee Divakaruni', 'Mythology', '978-65781234', 2008, 4, 2, 'S-9'),
(320, 220, 120, 'Gitanjali', 'Rabindranath Tagore', 'Poetry', '978-21983476', 1910, 5, 2, 'S-2');

alter table books_info drop constraint pub_year_chk;

CREATE TABLE librarians_info (
librarian_id INT PRIMARY KEY,
name VARCHAR(100) not null unique,
email VARCHAR(100) not null unique,
phone VARCHAR(15) not null unique,
designation VARCHAR(50),
hire_date DATE,
salary DECIMAL(10,2),
shift VARCHAR(20),
member_id INT,    
issue_id INT,
book_id INT,
FOREIGN KEY (member_id) REFERENCES members_info(member_id),
FOREIGN KEY (issue_id) REFERENCES issued_books_info(issue_id),
FOREIGN KEY (book_id) REFERENCES books_info(book_id)
);

ALTER TABLE librarians_info 
ADD CONSTRAINT librarian_id_chk check(librarian_id>400),
ADD CONSTRAINT salary_chk check(salary>30000.00),
ADD CONSTRAINT shift_chk check(shift in('Morning','Evening','Full Day'));


INSERT INTO librarians_info VALUES (401, 'Meera Krishnan', 'meera.k@library.com', '9739257715', 'Senior Librarian', '2016-06-15', 55000.00, 'Morning', 101, 201, 301);
INSERT INTO librarians_info VALUES (402, 'Ravi Nair', 'ravi.n@library.com', '7408253746', 'Assistant Librarian', '2018-08-10', 45000.00, 'Evening', 102, 202, 302);
INSERT INTO librarians_info VALUES (403, 'Priya Suresh', 'priya.s@library.com', '8974526371', 'Senior Librarian', '2015-04-21', 52000.00, 'Morning', 103, 203, 303);
INSERT INTO librarians_info VALUES (404, 'Anil Kumar', 'anil.k@library.com', '8123694785', 'Chief Librarian', '2012-11-30', 60000.00, 'Full Day', 101, 204, 304);
INSERT INTO librarians_info VALUES (405, 'Sneha Reddy', 'sneha.r@library.com', '9534672190', 'Assistant Librarian', '2020-01-25', 42000.00, 'Evening', 104, 205, 305);
INSERT INTO librarians_info VALUES
(406, 'Librarian 406', 'lib406@library.com', '9731001006', 'Assistant Librarian', '2016-04-12', 45000.00, 'Morning', 106, 206, 306),
(407, 'Librarian 407', 'lib407@library.com', '9731001007', 'Senior Librarian', '2015-05-09', 52000.00, 'Evening', 107, 207, 307),
(408, 'Librarian 408', 'lib408@library.com', '9731001008', 'Assistant Librarian', '2017-06-11', 47000.00, 'Morning', 108, 208, 308),
(409, 'Librarian 409', 'lib409@library.com', '9731001009', 'Head Librarian', '2014-07-03', 58000.00, 'Evening', 109, 209, 309),
(410, 'Librarian 410', 'lib410@library.com', '9731001010', 'Junior Librarian', '2018-08-14', 43000.00, 'Morning', 110, 210, 310),
(411, 'Librarian 411', 'lib411@library.com', '9731001011', 'Assistant Librarian', '2019-09-18', 44000.00, 'Evening', 111, 211, 311),
(412, 'Librarian 412', 'lib412@library.com', '9731001012', 'Senior Librarian', '2013-10-22', 50000.00, 'Morning', 112, 212, 312),
(413, 'Librarian 413', 'lib413@library.com', '9731001013', 'Assistant Librarian', '2016-11-26', 46000.00, 'Evening', 113, 213, 313),
(414, 'Librarian 414', 'lib414@library.com', '9731001014', 'Head Librarian', '2012-12-30', 60000.00, 'Morning', 114, 214, 314),
(415, 'Librarian 415', 'lib415@library.com', '9731001015', 'Junior Librarian', '2020-01-10', 42000.00, 'Evening', 115, 215, 315),
(416, 'Librarian 416', 'lib416@library.com', '9731001016', 'Assistant Librarian', '2015-02-15', 45000.00, 'Morning', 116, 216, 316),
(417, 'Librarian 417', 'lib417@library.com', '9731001017', 'Senior Librarian', '2011-03-20', 53000.00, 'Evening', 117, 217, 317),
(418, 'Librarian 418', 'lib418@library.com', '9731001018', 'Junior Librarian', '2019-04-25', 41000.00, 'Morning', 118, 218, 318),
(419, 'Librarian 419', 'lib419@library.com', '9731001019', 'Assistant Librarian', '2010-05-30', 46000.00, 'Evening', 119, 219, 319),
(420, 'Librarian 420', 'lib420@library.com', '9731001020', 'Head Librarian', '2009-06-15', 62000.00, 'Morning', 120, 220, 320);


CREATE TABLE branches_info (
branch_id INT PRIMARY KEY,
branch_name VARCHAR(20),
address VARCHAR(50),
city VARCHAR(20),
state VARCHAR(30),
zip_code VARCHAR(10),
phone VARCHAR(15),
email VARCHAR(30),
member_id INT,
issue_id INT,
book_id INT,
librarian_id INT,
FOREIGN KEY (member_id) REFERENCES members_info(member_id),
FOREIGN KEY (issue_id) REFERENCES issued_books_info(issue_id),
FOREIGN KEY (book_id) REFERENCES books_info(book_id),
FOREIGN KEY (librarian_id) REFERENCES librarians_info(librarian_id));

Alter table branches_info 
modify branch_name VARCHAR(100) not null,
modify address varchar(50) not null,
modify state varchar(20) not null;

Alter table branches_info
add constraint phone_uni unique(phone),
add constraint email_uni unique(email),
add constraint branch_name_uni unique(branch_name),
add constraint city_chk check(city='Bangalore'),
add constraint state_chk check(state='Karnataka');

Alter table branches_info add constraint email_chk check(email like '%.com');

INSERT INTO branches_info VALUES (501, 'Indiranagar Branch', '12 MG Road', 'Bangalore', 'Karnataka', '560038', '9739257715', 'indira@library.com', 101, 201, 301, 401);
INSERT INTO branches_info VALUES (502, 'Koramangala Branch', '5th Block Street 22', 'Bangalore', 'Karnataka', '560034', '7408253746', 'kora@library.com', 102, 202, 302, 402);
INSERT INTO branches_info VALUES (503, 'Whitefield Branch', 'Lakeview Road 18', 'Bangalore', 'Karnataka', '560066', '8974526371', 'whitefield@library.com', 103, 203, 303, 403);
INSERT INTO branches_info VALUES (504, 'Jayanagar Branch', '7th Block 19th Cross', 'Bangalore', 'Karnataka', '560041', '8123694785', 'jayanagar@library.com', 101, 204, 304, 404);
INSERT INTO branches_info VALUES (505, 'Malleshwaram Branch', '21 Sampige Road', 'Bangalore', 'Karnataka', '560003', '9534672190', 'mallesh@library.com', 104, 205, 305, 405);
INSERT INTO branches_info VALUES
(506, 'Branch 506', '6th Cross Rd, Indiranagar', 'Bangalore', 'Karnataka', '560038', '9731002006', 'branch506@library.com', 106, 206, 306, 406),
(507, 'Branch 507', 'BTM Layout 2nd Stage', 'Bangalore', 'Karnataka', '560076', '9731002007', 'branch507@library.com', 107, 207, 307, 407),
(508, 'Branch 508', 'Rajajinagar', 'Bangalore', 'Karnataka', '560010', '9731002008', 'branch508@library.com', 108, 208, 308, 408),
(509, 'Branch 509', 'HSR Layout', 'Bangalore', 'Karnataka', '560102', '9731002009', 'branch509@library.com', 109, 209, 309, 409),
(510, 'Branch 510', 'Jayanagar', 'Bangalore', 'Karnataka', '560041', '9731002010', 'branch510@library.com', 110, 210, 310, 410),
(511, 'Branch 511', 'Koramangala', 'Bangalore', 'Karnataka', '560034', '9731002011', 'branch511@library.com', 111, 211, 311, 411),
(512, 'Branch 512', 'Yelahanka New Town', 'Bangalore', 'Karnataka', '560064', '9731002012', 'branch512@library.com', 112, 212, 312, 412),
(513, 'Branch 513', 'Whitefield', 'Bangalore', 'Karnataka', '560066', '9731002013', 'branch513@library.com', 113, 213, 313, 413),
(514, 'Branch 514', 'Banashankari', 'Bangalore', 'Karnataka', '560070', '9731002014', 'branch514@library.com', 114, 214, 314, 414),
(515, 'Branch 515', 'Malleshwaram', 'Bangalore', 'Karnataka', '560003', '9731002015', 'branch515@library.com', 115, 215, 315, 415),
(516, 'Branch 516', 'JP Nagar', 'Bangalore', 'Karnataka', '560078', '9731002016', 'branch516@library.com', 116, 216, 316, 416),
(517, 'Branch 517', 'Electronic City Phase 1', 'Bangalore', 'Karnataka', '560100', '9731002017', 'branch517@library.com', 117, 217, 317, 417),
(518, 'Branch 518', 'Hebbal', 'Bangalore', 'Karnataka', '560024', '9731002018', 'branch518@library.com', 118, 218, 318, 418),
(519, 'Branch 519', 'Marathahalli', 'Bangalore', 'Karnataka', '560037', '9731002019', 'branch519@library.com', 119, 219, 319, 419),
(520, 'Branch 520', 'Basavanagudi', 'Bangalore', 'Karnataka', '560004', '9731002020', 'branch520@library.com', 120, 220, 320, 420);










