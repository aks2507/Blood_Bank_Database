create table blood_bank(
    state varchar(10),
    city varchar(10),
    blood_bank_id  varchar(10) primary key);
insert into blood_bank values('Telangana','Hyderabad','h1');
insert into blood_bank values('Telangana','Kazipet','k1');
insert into blood_bank values('Telangana','Warangal','w1');
insert into blood_bank values('Telangana','Rajamudhry','r1');
insert into blood_bank values('Telangana','Khammam','kh1');
insert into blood_bank values('Telangana','Secunderabad','s1');
-- alter table blood_bank modify city varchar(30);

create table equipment(
    Remarks varchar(10),
    Date_of_purchase date,
    Maintainance_due varchar(10),
    equipment_id varchar(4) primary key,
    blood_bank_id  varchar(10),
    eqpmnt_name varchar(40),
    price integer,
    foreign key(blood_bank_id) references blood_bank(blood_bank_id));
alter table equipment modify equipment_id varchar(24);
select * from equipment;
-- ((((This values are not entered)))
insert into equipment values('working','2000-08-23','770','eq1','h1','Hematology Analyzer',18899);
insert into equipment values('working','2000-08-24','1000','eq2','k1','Centrifuge machine','19286');
insert into equipment values('working','2000-08-25','233','eq3','r1','Rh view box','16286');
insert into equipment values('working','2007-10-23','455','eq4','kh1','Storage Refrigerator','19286');
insert into equipment values('working','2012-11-23','466','eq5','s1','Plasma Expressor','8286');
insert into equipment values('working','2013-07-23','855','eq6','w1','Storage Refrigerator','6286');


select * from blood_bank;

create table donor(
    donor_name varchar(20),
    donor_id varchar(10) primary key,
    gender varchar(10),
    blood_group  varchar(10),
    date_of_birth date,
    donation_date_time timestamp,
    city varchar(10),
    phone_number varchar(10),
    blood_bank_id  varchar(10),
    foreign key(blood_bank_id) references blood_bank(blood_bank_id));

insert into donor values('Abin','d101','M','O+','2000-11-12','2020-09-10 00:01:23','Hyderabad','234567891','h1');
insert into donor values('Srija','d102','F','B+','2000-10-12','2020-09-10 00:02:23','Warangal','244567891','h1');
insert into donor values('Allen','d103','M','AB-','2000-09-12','2020-09-10 00:03:12','Ongole','235567891','k1');
insert into donor values('PND','d104','M','A+','2001-11-22','2020-09-10 11:01:23','Madras','234567591','kh1');
insert into donor values('Joanna','d105','F','O-','2000-01-12','2020-08-10 00:01:23','Pali','124567891','w1');
insert into donor values('Jovita','d106','F','AB+','2002-11-12','2020-08-10 05:01:23','Thalli','345567891','s1');
insert into donor values('Somal','d107','M','A+','2005-11-14','2020-12-10 15:01:23','Kolkata','569567891','r1');
insert into donor values('Ballu','d108','M','B+','2000-10-12','2020-09-10 12:01:23','Khammam','784567891','s1');
insert into donor values('Bhandi','d109','F','O+','2012-11-12','2020-04-10 23:01:23','Vizag','268367891','w1');
create table blood(
    blood_group varchar(10),
    quantity_mL integer,
    donor_id varchar(10),
    primary key(donor_id,blood_group,quantity_mL),
    foreign key(donor_id) references donor(donor_id));
insert into blood values('O+',100,'d101');
insert into blood values('B+',200,'d102');
insert into blood values('AB-',300,'d103');
insert into blood values('A+',100,'d104');
insert into blood values('O-',200,'d105');
insert into blood values('AB+',300,'d106');
insert into blood values('A+',100,'d107');
insert into blood values('B+',200,'d108');
insert into blood values('O+',300,'d109');
create  table Employee(
    Employee_id int primary key,
    E_mail varchar(30),
    Phone_no int,
    Employee_Name varchar(30),
    Salary int,
    Joining_date date,
    blood_bank_id varchar(10),
    foreign key (blood_bank_id) references blood_bank(blood_bank_id));
insert into Employee values(1001,'Mayank@gmail.com','Mayank',50000,'2000-08-23','h1');
insert into Employee values(1002,'Raman@gmail.com','Raman',40000,'2000-07-23','r1');
insert into Employee values(1003,'Sagar@gmail.com','Sagar',48000,'2000-08-13','k1');
insert into Employee values(1004,'Mukesh@gmail.com','Mukesh',79000,'2001-08-23','kh1');
insert into Employee values(1005,'Mayank@gmail.com','Mayank',56000,'2020-08-23','w1');
insert into Employee values(1006,'Harshit@gmail.com','Harshit',44000,'2000-08-17','w1');
insert into Employee values(1007,'Ravi@gmail.com','Ravi',23000,'2002-08-23','h1');
insert into Employee values(1008,'Vanshi@gmail.com','Vanshika',100000,'2000-05-10','r1');

create table Employee_Phone 
(Phone_No varchar(11),
employee_id int,
primary key(Phone_no,Employee_id),
foreign key(employee_id) references Employee(employee_id));
insert into Employee_Phone values('9354354',1001);
insert into Employee_Phone values('9824424',1002);
insert into Employee_Phone values('9357242',1003);
insert into Employee_Phone values('9656644',1004);
insert into Employee_Phone values('9423955',1005);
insert into Employee_Phone values('9987732',1006);
insert into Employee_Phone values('9123224',1007);
insert into Employee_Phone values('9098087',1008);
insert into Employee_Phone values('9324423',1005);
insert into Employee_Phone values('9563446',1006);
insert into Employee_Phone values('9778664',1007);
insert into Employee_Phone values('9853442',1008);
create table hospital (
    hospital_id int primary key,
    hospital_name varchar(30),
    street varchar(20),
    city varchar(40));
alter table hospital add city varchar(20);
insert into Hospital values(101,'Lifeline','Ramnagar','Hyderabad');
insert into Hospital values(102,'SaveIn','APJColony','Secundarabad');
insert into Hospital values(103,'AIIMS','GandhiNagar','Rajamudhry');
insert into Hospital values(104,'Rohini','Hanamkonda1','Warangal');
insert into Hospital values(105,'JeevanJyoti','Hanamkonda2','Kazipet');
insert into Hospital values(106,'OneBlood','KakatiyaColony','Khammam');
create table Patient(
    patient_id int primary key,
    Patient_Name varchar(30),
    Date_of_birth date,
    blood_group varchar(5),
    Gender varchar(5),
    house_no int,
    Street varchar(30),
    city varchar (30),
    State varchar(30),
    quantity int,
    date_of_receiving date,
    blood_bank_id varchar(10),
    admission_time timestamp,
    discharge_time timestamp,
    hospital_id int,
    foreign key (blood_bank_id) references Blood_bank(blood_bank_id),
    foreign key(hospital_id) references hospital(hospital_id));
insert into patient values(1,'Ramesh','1984-06-21','O+','M','4','st21','Hyderabad','Telangana',
500,'2016-07-14','h1','2016-07-14 18:30:00',NULL,101);
insert into patient values(2,'Rakesh','1981-07-13','AB+','M','12','14avenue','Hyderabad','Telangana',
350,'2014-08-08','h1','2014-08-08 10:12:00','2014-08-11 14:50:00',101);
insert into patient values(3,'Vidyavati','1991-04-24','A+','F','19','19thSt','Secunderabad','Telangana',
260,'2015-11-19','s1','2015-11-19 14:30:00','2015-11-26 16:25:00',102);
insert into patient values(4,'Lokesh','1968-11-09','B+','M','6','18thSt','Secunderabad','Telangana',
750,'2016-07-16','s1','2016-07-16 19:44:00',NULL,102);
insert into patient values(5,'Ritika','1994-12-16','A+','F','10','Ramnagar','Warangal','Telangana',
400,'2015-09-11','w1','2015-09-11 11:16:00','2015-09-22',104);
insert into patient values(6,'Rakhi','1978-09-13','AB-','F','11','ShivNagar','Warangal','Telangana',
325,'2016-07-15','w1','2016-07-15 06:54:00',NULL,104);
insert into patient values(7,'Sai Pavan','1972-02-29','O+','M','17','Karimnagar','Rajamudhry','Telangana',
600,'2014-10-01','r1','2014-10-01 11:45:00','2014-10-09',103);
insert into patient values(8,'Rajesh','1995-03-06','AB+','M','20','St06','Rajamudhry','Telangana',
650,'2016-07-16','r1','2016-07-16 17:13:00',NULL,103);
insert into patient values(9,'Ayushi','1967-05-29','A+','F','18','Station_Road','Kazipet','Telangana',
250,'2015-10-25','k1','2015-10-25 09:19:00','2015-10-28 09:44:00',105);
insert into patient values(10,'Nikhil','1968-02-18','AB+','M','01','PostOfficeRoad','Kazipet','Telangana',
600,'2016-07-15','k1','2016-07-15 12:08:00',NULL,105);
insert into patient values(11,'Somal','1977-01-14','B+','M','19','St11','Khammam','Telangana',
550,'2015-12-16','kh1','2015-12-15 15:19:00','2015-12-24 22:10:00',106);
insert into patient values(12,'Kushagra','1979-06-19','O+','M','13','St14','Khammam','Telangana',
440,'2014-08-24','kh1','2014-08-24 19:23:00','2014-08-29 20:35:00',106);
create table Volunteer (
    Volunteer_id int primary key,
    Volunteer_Name varchar(30),
    Service_start date,
    Service_end date,
    E_mail varchar(30),
    blood_bank_id varchar(10),
    foreign key(blood_bank_id) references Blood_Bank(blood_bank_id));
insert into Volunteer values(101,'Prashant','2014-01-12',NULL,'pr@gmail.com','h1');
insert into Volunteer values(102,'Bhushan','2014-02-24',NULL,'bhu@gmail.com','h1');
insert into Volunteer values(103,'Naman','2015-01-12',NULL,'nmn@gmail.com','w1');
insert into Volunteer values(104,'Ratan','2015-01-12',NULL,'rt@gmail.com','w1');
insert into Volunteer values(105,'Kushagra','2014-01-12',NULL,'kk@gmail.com','k1');
insert into Volunteer values(106,'Somal','2014-01-12',NULL,'sm@gmail.com','k1');
insert into Volunteer values(107,'Ankit','2016-01-12',NULL,'an@gmail.com','kh1');
insert into Volunteer values(108,'Abhishek','2016-01-12',NULL,'abh@gmail.com','kh1');
insert into Volunteer values(109,'Tushar','2017-01-12',NULL,'tu@gmail.com','r1');
insert into Volunteer values(110,'Bhaskar','2017-01-12',NULL,'bh@gmail.com','r1');
insert into Volunteer values(111,'Tushant','2018-01-12',NULL,'ts@gmail.com','s1');
insert into Volunteer values(112,'Ambaani','2018-01-12',NULL,'am@gmail.com','s1');
create table Volunteer_Phone_no(
    Phone_no_1 varchar(11),
    Phone_no_2 varchar(11),
    Volunteer_id int,
    primary key(Volunteer_id,Phone_no_1),
    foreign key (Volunteer_id) references Volunteer(Volunteer_id));
insert into Volunteer_Phone_no values('9711828998','9698521478',101);
insert into Volunteer_Phone_no values('9123654789','9369852147',101);
insert into Volunteer_Phone_no values('9823654789','9969852147',102);
insert into Volunteer_Phone_no values('9723654789','9769852147',102);
insert into Volunteer_Phone_no values('9623654785','9669852145',103);
insert into Volunteer_Phone_no values('9123654782','9369852142',103);
insert into Volunteer_Phone_no values('9523654789','9369852145',104);
insert into Volunteer_Phone_no values('9163654789','9369852146',104);
insert into Volunteer_Phone_no values('9177654789','9369852149',105);
insert into Volunteer_Phone_no values('9103654789','9369852141',105);
insert into Volunteer_Phone_no values('9193654789','9369852117',106);
insert into Volunteer_Phone_no values('9133654789','9369852167',106);
insert into Volunteer_Phone_no values('9711928998','9698527478',107);
insert into Volunteer_Phone_no values('9123854789','9369856147',108);
insert into Volunteer_Phone_no values('9823754789','9969855147',109);
insert into Volunteer_Phone_no values('9723654789','9769854147',110);
insert into Volunteer_Phone_no values('9623554785','9669853145',111);
insert into Volunteer_Phone_no values('9123454782','9369850142',112);
-- select blood_group,sum(quantity_mL) from blood group by blood_group order by blood_group;
-- select * from patient;