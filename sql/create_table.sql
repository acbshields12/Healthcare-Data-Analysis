create database Healthcare_analysis;
use healthcare_analysis;

create table patients (
patient_id varchar(10) primary key,
name varchar(100),
age int,
gender varchar(10),
city varchar (100)
);

Create Table visits (
visit_id varchar(10) primary key,
patient_id varchar(10),
department varchar(100),
diagnosis varchar(100),
cost decimal(10,2),
visit_date date,
foreign key (patient_id) references patients (patient_id)
);

