CREATE DATABASE Medical_DB
use Medical_DB
go
---SCHEMA must be at the first of query(error appeared)
create schema pharma
go 
 --------             CREATE TABLES          -----------------

---   Doctor table  ---------
CREATE TABLE pharma.Doctor (
		phys_id          INT  IDENTITY (1, 1)PRIMARY KEY,
		first_name       VARCHAR(55) NOT NULL,
		last_name        VARCHAR(55)   NOT NULL,
		speciality       VARCHAR(60)   NOT NULL,
);
-----STATEMENT(1)--------
ALTER TABLE pharma.Doctor
ADD email VARCHAR(200)

ALTER TABLE pharma.Doctor
DROP COLUMN email;
---patient table---------
--- one identity for each table(error appeared)

CREATE TABLE pharma.Patient(
		patient_id        INT IDENTITY (1,1)PRIMARY KEY,
		first_name        VARCHAR(40) NOT NULL,
		second_name       VARCHAR(50) NOT NULL,
		sex               VARCHAR(70),
		contact_number    VARCHAR (25) UNIQUE NOT NULL,
		Insurance_Info    VARCHAR(80) NULL,
		phys_id           INT,
		CONSTRAINT pharma_fk FOREIGN KEY (phys_id) REFERENCES pharma.Doctor (phys_id)
);
------- STATEMENT(2)  --------
ALTER TABLE pharma.Patient
ADD CONSTRAINT pahr_ch CHECK(phys_id>1)

---     table p_address    ---------
CREATE TABLE p_address(
		street            VARCHAR(55) NOT NULL,
		city              VARCHAR(60) NOT NULL,
		statee            VARCHAR(66) NULL,
		patient_id        INT,
		CONSTRAINT patient_fk FOREIGN KEY(patient_id)REFERENCES pharma.Patient(patient_id)
);

---- table drug_manufacture----------
CREATE TABLE pharma.Drug_manufacturer(
        company_id        INT IDENTITY(1,1)PRIMARY KEY,
        first_name        VARCHAR(55) NOT NULL,
        second_name       VARCHAR(55) NOT NULL,
);
--------STATEMENT(3)--------
ALTER TABLE pharma.Drug_manufacturer
ADD email VARCHAR(40)

--table Drug references must be the name of the table(error appeared)
CREATE TABLE pharma.Drug(
		trade_name         VARCHAR(50)PRIMARY KEY,
		company_id         INT,
		CONSTRAINT Dru_fk FOREIGN KEY (company_id) REFERENCES  pharma.Drug_manufacturer(company_id)
);
------- STATEMENT(4)   -------
Alter table pharma.Drug
add price decimal(5,2)

--- the table of ternary relation
CREATE TABLE pharma.pre_ternary(
		quantity          VARCHAR(60) NOT NULL,
		Datee             VARCHAR(50),
		patient_id        INT IDENTITY(1,2),
		CONSTRAINT patient_fk FOREIGN KEY (patient_id) 
		references pharma.Patient(patient_id),
		phys_id           INT,
		CONSTRAINT pharmacy_fk FOREIGN KEY(phys_id) REFERENCES pharma.Doctor(phys_id),
		trade_name        VARCHAR(50),
		CONSTRAINT tarde_fk FOREIGN KEY (trade_name)REFERENCES pharma.Drug(trade_name),
);

---table Drug address manufactuer
--create table pharmacy
CREATE TABLE pharma.pharmacy(
		phar_id           INT IDENTITY(1,1)PRIMARY KEY ,
		Namee             VARCHAR(80), 
		fax               VARCHAR(55),
		addresss          VARCHAR(60),
);
------     STATEMENT(5)    -------
ALTER TABLE pharma.pharmacy
ADD CONSTRAINT pa_def DEFAULT('AL Fayoum') for addresss

----table drug manufacturer_contract
CREATE TABLE pharma.manufacturer_contract(
		starte_date       VARCHAR(20) NOT NULL,
		end_date          VARCHAR(40) NOT NULL,
		phar_id           INT IDENTITY(1,1),
		CONSTRAINT phar_fk FOREIGN KEY (phar_id) REFERENCES pharma.pharmacy  (phar_id),
		company_id        INT,
		CONSTRAINT com_fk FOREIGN KEY (company_id)REFERENCES pharma.Drug_manufacturer(company_id)
);

--create table pharma_drug
CREATE TABLE pharma.phar_Drug(
		price             INT NOT NULL,
		trade_name        VARCHAR(50),
		CONSTRAINT tradee_fk FOREIGN KEY (trade_name) REFERENCES pharma.Drug(trade_name), 
		phar_id           INT,
		CONSTRAINT pharr_fk FOREIGN KEY (phar_id) REFERENCES pharma.pharmacy(phar_id)
);
------    STATEMENT(6)    ------
ALTER TABLE  pharma.phar_Drug
ADD CONSTRAINT phar_ch check(price>=200)

--create table employee
CREATE TABLE pharma.employee(
		first_name         VARCHAR(50) NOT NULL,
		second_name        VARCHAR(50) NOT NULL,
		emp_id             INT IDENTITY(1,1)PRIMARY KEY,
		shift_start        VARCHAR(20),
		shift_end          VARCHAR(20),
		phar_id            INT,
		CONSTRAINT fk FOREIGN KEY (phar_id) REFERENCES pharma.pharmacy(phar_id),
);