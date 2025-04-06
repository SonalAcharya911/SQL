CREATE TABLE intern_info(
intern_id int not null unique,
intern_name varchar(20) unique not null,
intern_company varchar(20) not null,
intern_role varchar(20) not null,
intern_age int not null,
stipend bigint,
ph_no bigint not null unique,
email_id varchar(30) not null unique,
check (intern_age>20 and intern_age<33));

drop table intern_info;
SELECT * FROM intern_info;

INSERT INTO intern_info VALUES (1,'Sonal Vinod Karma','Xworkz','Software Intern',21,0,7483420737,'sonalacharya911@gmail.com');

INSERT INTO intern_info VALUES (2,'Saahil Vinod Karma',null,null,30,9000,8971491121,'saahilkarma1705@gmail.com');

INSERT INTO intern_info VALUES (2,'Saahil Vinod Karma','QSpiders','Software Intern',18,0,8971491121,'saahilkarma1705@gmail.com');

INSERT INTO intern_info VALUES (2,'Saahil Vinod Karma','QSpiders','Software Intern',33,0,8971491121,'saahilkarma1705@gmail.com');

INSERT INTO intern_info VALUES (2,'Saahil Vinod Karma','QSpiders','Software Intern',22,9000,8971491121,'saahilkarma1705@gmail.com');





























































