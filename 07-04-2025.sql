CREATE TABLE bank_info(
bank_id int primary key,
bank_name varchar(20), 
bank_loc varchar(20), 
ifsc_code varchar(11),
no_of_cust int);

INSERT INTO bank_info VALUES
(101, 'State Bank', 'Koramangala', 'STATKORA52', 246),
(102, 'ICICI', 'MG Road', 'ICICMG R91', 67),
(103, 'HDFC', 'Indiranagar', 'HDFCINDI10', 475),
(104, 'Axis', 'Jayanagar', 'AXISJAYA95', 339),
(105, 'Canara', 'Whitefield', 'CANAWHIT79', 51),
(106, 'BOB', 'BTM', 'BOBBTM 81', 429),
(107, 'IDBI', 'Electronic City', 'IDBIELEC83', 234),
(108, 'PNB', 'Rajajinagar', 'PNBRAJA85', 144),
(109, 'Union Bank', 'Banashankari', 'UNIOBANA55', 122),
(110, 'Karnataka Bank', 'Yeshwanthpur', 'KARNYESH63', 372),
(111, 'South Indian Bank', 'Hebbal', 'SOUTHEBB96', 398),
(112, 'Federal Bank', 'Malleshwaram', 'FEDEMALL88', 157),
(113, 'SBI', 'Ulsoor', 'SBIU LSO12', 226),
(114, 'RBL Bank', 'HSR Layout', 'RBLH SRA71', 295),
(115, 'Yes Bank', 'RT Nagar', 'YESR TNA40', 482),
(116, 'Kotak', 'Kalyan Nagar', 'KOTAKALY89', 361),
(117, 'UCO Bank', 'JP Nagar', 'UCOJPN A43', 274),
(118, 'Indian Bank', 'Shivajinagar', 'INDISHIV50', 453),
(119, 'Bank of India', 'Basavanagudi', 'BANKBASA11', 322),
(120, 'IndusInd', 'Domlur', 'INDUDOML36', 116);



CREATE TABLE cust_info(
cust_id int primary key, 
cust_name varchar(20), 
acc_no varchar(20), 
bank_id int ,
balance bigint,
foreign key (bank_id) references bank_info(bank_id));

INSERT INTO cust_info VALUES
(2001, 'Sonal Vinod Karma', 'ACCT2001XYZ', 101, 150000),
(2002, 'Saahil Vinod Karma', 'ACCT2002XYZ', 102, 123000),
(2003, 'Lakshmi Vinod', 'ACCT2003XYZ', 103, 178000),
(2004, 'Vinod Kumar', 'ACCT2004XYZ', 101, 134500),
(2005, 'Vipin Raj', 'ACCT2005XYZ', 104, 167800),
(2006, 'Natasha Arya', 'ACCT2006XYZ', 105, 95000),
(2007, 'Vidya Aryattu', 'ACCT2007XYZ', 106, 113000),
(2008, 'Akhil Suresh', 'ACCT2008XYZ', 107, 102500),
(2009, 'Amala Suresh', 'ACCT2009XYZ', 108, 91000),
(2010, 'Rahana Raj', 'ACCT2010XYZ', 101, 120000),
(2011, 'Aswathy Balakrishnan', 'ACCT2011XYZ', 109, 131000),
(2012, 'Rahul Ravindran', 'ACCT2012XYZ', 102, 145000),
(2013, 'Kavya Ravindran', 'ACCT2013XYZ', 103, 99000),
(2014, 'Chandrababu Srikumar', 'ACCT2014XYZ', 110, 122000),
(2015, 'Anil Kumar', 'ACCT2015XYZ', 106, 109000),
(2016, 'Amritha Suresh', 'ACCT2016XYZ', 111, 158000),
(2017, 'Midhun Raj', 'ACCT2017XYZ', 112, 139500),
(2018, 'Jithin Mohan', 'ACCT2018XYZ', 107, 126000),
(2019, 'Anjelina Rachel Jibu', 'ACCT2019XYZ', 104, 102300),
(2020, 'Aldrina Sarah Jibu', 'ACCT2020XYZ', 113, 117800);



CREATE TABLE loan_info(loan_id int primary key, 
loan_name varchar(20), 
bank_id int, 
cust_id int, 
loan_amount bigint,
foreign key (bank_id) references bank_info(bank_id),
foreign key (cust_id) references cust_info(cust_id));

INSERT INTO loan_info VALUES
(3001, 'Home Loan', 101, 2001, 500000),
(3002, 'Car Loan', 102, 2002, 300000),
(3003, 'Education Loan', 103, 2003, 400000),
(3004, 'Business Loan', 101, 2004, 650000),
(3005, 'Personal Loan', 104, 2005, 200000),
(3006, 'Home Loan', 105, 2006, 450000),
(3007, 'Car Loan', 106, 2007, 350000),
(3008, 'Business Loan', 107, 2008, 700000),
(3009, 'Education Loan', 108, 2009, 300000),
(3010, 'Personal Loan', 101, 2010, 250000),
(3011, 'Home Loan', 109, 2011, 480000),
(3012, 'Car Loan', 102, 2012, 370000),
(3013, 'Education Loan', 103, 2013, 410000),
(3014, 'Business Loan', 110, 2014, 660000),
(3015, 'Home Loan', 106, 2015, 390000),
(3016, 'Car Loan', 111, 2016, 320000),
(3017, 'Business Loan', 112, 2017, 710000),
(3018, 'Personal Loan', 107, 2018, 270000),
(3019, 'Education Loan', 104, 2019, 360000),
(3020, 'Home Loan', 113, 2020, 495000);



CREATE TABLE insurance_info(
insr_id int primary key, 
insr_type varchar(20), 
policy_no varchar(30), 
bank_id int,
cust_id int,
loan_id int,
foreign key (bank_id) references bank_info(bank_id),
foreign key (cust_id) references cust_info(cust_id),
foreign key (loan_id) references loan_info(loan_id));

INSERT INTO insurance_info VALUES
(4001, 'Health', 'POL4001ABC', 101, 2001, 3001),
(4002, 'Life', 'POL4002DEF', 102, 2002, 3002),
(4003, 'Vehicle', 'POL4003GHI', 103, 2003, 3003),
(4004, 'Property', 'POL4004JKL', 101, 2004, 3004),
(4005, 'Life', 'POL4005MNO', 104, 2005, 3005),
(4006, 'Health', 'POL4006PQR', 105, 2006, 3006),
(4007, 'Vehicle', 'POL4007STU', 106, 2007, 3007),
(4008, 'Life', 'POL4008VWX', 107, 2008, 3008),
(4009, 'Health', 'POL4009YZA', 108, 2009, 3009),
(4010, 'Property', 'POL4010BCD', 101, 2010, 3010),
(4011, 'Life', 'POL4011EFG', 109, 2011, 3011),
(4012, 'Health', 'POL4012HIJ', 102, 2012, 3012),
(4013, 'Vehicle', 'POL4013KLM', 103, 2013, 3013),
(4014, 'Property', 'POL4014NOP', 110, 2014, 3014),
(4015, 'Health', 'POL4015QRS', 106, 2015, 3015),
(4016, 'Life', 'POL4016TUV', 111, 2016, 3016),
(4017, 'Property', 'POL4017WXY', 112, 2017, 3017),
(4018, 'Vehicle', 'POL4018ZAB', 107, 2018, 3018),
(4019, 'Health', 'POL4019CDE', 104, 2019, 3019),
(4020, 'Life', 'POL4020FGH', 113, 2020, 3020);
