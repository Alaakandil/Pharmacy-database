USE Medical_DB
GO
----------- INSERT DATA IN TABLES ------------

------------ DOCTOR TABLE -----------
INSERT INTO pharma.Doctor(first_name,last_name,speciality)
VALUES ( 'MENNA' , 'AHMED' , 'Internal Medicine'),
       ('Bassant' , 'Amr' , 'External Medicine'),
	   ('Lamiaa' , 'Mohamed' , ' MEDECINE'),
	   ('Amr' , 'Aymen' , 'Anesthesiology'),
	   ('Esraa' , 'Gamal' , 'Cardiology'),
	   ('Reem' , 'Ali' , 'Emergency'),
	   ('Sara' , 'Mostafa' , 'Endocrinology'),
	   ('Rana' , 'Hany' , 'Family Medicine'),
	   ('Randa' , 'Kamal' , 'Gastroenterology'),
	   ('Soad' , 'Hamada' , 'Hematology'),
	   ('Gana' , 'Ali' , 'Neurology'),
	   ('Rawda' , 'Adel' , 'Obstetrics'),
	   ('Malak' , 'Mowsa' , 'Orthopedic'),
	   ('Farah' , 'Mohsen' , 'ENT'),
	   ('Aya' , 'Omar' , 'Pediatrics'),
	   ('Manal' , 'Ramadan' , 'Psychiatry'),
	   ('Alaa' , 'Hassan' , 'Radiology'),
	   ('Manar' , 'Bahaa' , 'Surgery'),
	   ('Habiba' , 'Nabil' , 'Emergency'),
	   ('Aya' , 'Nasser' , 'Urology'),
	   ('Reem' , 'Ali' , 'Internal'),
	   ('Menna' , 'Ali' , 'External'),
	   ('Merna' , 'mohammed' , 'Pediatrics'),
	   ('Amatallah' , 'Yousef' , 'ENT'),
	   ('Hazem' , 'Amer' , 'Oracle'),
	   ('Amr' , 'Ahmed' , 'Neur'),
	   ('Shireef' , 'Hany' , 'Hematology'),
	   ('mohamed' , 'hany' , 'Family Medicine'),
	   ('Ali' , 'Abdelatheze' , 'psychiatry'),
	   ('Youseef' , 'Easaaa' , 'Obstertrics')

SELECT * FROM pharma.Doctor

----------    insert data pharma.Patient    ------------

INSERT INTO pharma.Patient(first_name,second_name,sex,contact_number,Insurance_Info,phys_id)
VALUES  ('Menna' , 'Mohamed' , 220238 , 0100247689 ,'has flu',2),
		('Lamiaa' , 'Ahmed' , 33067 , 01005800642 ,'has Diabetes',3),
		('Farah' , 'Mohsen' , 1234 , 011268946 ,'has high blood pressure',4),
		('Youssef' , 'Abdelatheze' , 10467 , 01276864196 ,'has Athma' ,5),
		('Ali' , 'mostafa' , 67824 , 01222211750 ,'has Arthritis' ,6),
		('Reem' , 'Ali' , 57894, 012223033010 ,'has Cancer' ,7),
		('Habiba' , 'Nabil' , 67894, 01200272964,'has Altheimer disease',8 ),
		('Manal' , 'Ramadan' , 83457, 01030493678 ,'has HIV',9 ),
		('Lana' ,'Bassem' , 1234, 01022860119,'has TB' ,10),
		('Bassant' , 'Hany' , 9003, 01011189101,'has Stroka',11 ),
		('Reem' , 'Ali' , 57894, 01069938500 ,'has Cancer' ,12),
		('Aya' , 'Omar' , 450932, 01029355895 ,'has Heart disease',13 ),
		('Reem' , 'Ali' , 57894, 01091810580,'has Cancer',14 ),
		('Hazem' , 'Amer' , 1234, 908764536 ,'has Malaria' ,15),
		('Malak' , 'Mowsa' , 57894, 01011804250,'has Lyme disease',16 ),
		('Rawda' , 'Adel' , 66904, 01010175219 ,'has Depression',17 ),
		('Aya' , 'Nasser' , 3456243, 01013239860 ,'has Anxiety',18 ),
		('Bassant' , 'Amr' , 3456243, 083473562 ,'has Heart' ,19),
		('Amatallah' , 'Yousef' , 219830,01148784729 ,'has Schizophrenia',20 ),
		('Soad' , 'Hamada' , 56878 , 01208786713, 'has Corona ',21),
		('Habiba' , 'Nabil', 456735 , 01061160072 , 'has Enflwnza ',22),
		('mostafa' , 'Ahmed' , 575634, 01010673383,'has Asthma',23 ),
		('khalid' , 'Mowas' , 21567, 01096207838,'has Psoriasis' ,24),
		('Mahmoud' , 'Adel' , 63735, 01019667573 ,'has COPD',25 ),
		('Saly' , 'Salah' , 54634, 01095847618 ,'has Pneumonia' ,26),
		('Fatma' , 'Mostafa' , 654735, 01021798751 ,'has GERD',27 )

SELECT *FROM pharma.Patient

----          insert data in p_address     ---------------

INSERT INTO p_address
VALUES  ('Tahrir Square' ,'Cairo' ,'California' ,1),('Nile Corniche' ,'Algeza' ,Null,2),
		('Ramses Street' ,'Alexandria' ,'Ohio',3),('Zamalek Street' ,'Alex' ,'Georgie',4),
		('Luxor' ,'Cairo' ,'Sharia',5),('Alexandria road' ,'Aswan' ,'Michigan',6),
		('Sharia_Al_Muizz','Sharm_El Sheikh',Null,7),('6th of october','Hurghada','Georgia',8),
		('Dallas' ,'Algeza' ,Null,9),('San Diego' ,'Magnolia' ,'Michigan',10),
		('San Antonio' ,'cherry street' ,'Illinois',11),('San jose' ,'Magnolia' ,'florida',12),
		('Nile Corniche' ,'Algeza' ,Null,13),('Houston' ,'bhgeds' ,'egtpy',14),
		('Elsalam' ,'elfayoum' ,'Alex',15),('Elsharqia' ,'Ohio' ,Null,16),
		('Mostafa Basha' ,'AlFayoum',NUll,17),('Elmohamadia' ,'Beni_seuf','Florida',18),
		('Elsentral' ,'Egtpt','Algeza',19),('Gamal Abd_ElNasser' ,'Algeza','Florida',20)

SELECT * FROM p_address

---------data in pharmacyy.Drug_manufacturer--------------

INSERT INTO pharma.Drug_manufacturer(first_name,second_name,email)
VALUES  ('Menna' ,'Ahmed','Menna12gmail.com'),('Bassant' ,'Mahmoud','Bassant26gmail.com'),
		('Amr' ,'Gamal','Amr11gmail.com'),
		('Amatallah' ,'Shaban','Amatallah78gmail.com'),('Mona' ,'Hamdy','Mona88gmail.com'),
		('Rania',' waleed','Rania65gmail.com'),('Azza','Galal','Azza92gmail.com'),
		('Soad ','Atef','Soad12gmail.com'),('Lamiaa' ,'Ahmed','Lamiaa55gmail.com'),
		('Aya' ,'Nasser','Aya23gmail.com'),('Farah' ,'Mohsen','Farah90gmail.com'),
		('Osama' ,'Ahmed','Osama78gmail.com'),('Mostafa' ,'Gamal','Mostafa12gmail.com'),
		('Merna' ,'Hany','Merna67gmail.com'),('Marwa' ,'Hassan','Marowa55gmail.com'),
		('Hasnaa' ,'Ramadan','Hasnaa87gmail.com'),('Tasnim' ,'mohamed','Tasnim54gmail.com'),
		('Mariam' ,'Ali','Mariam12gmail.com'),('Hoda' ,'Galma','Hoda65gmail.com'),
		('Menna' ,'Ahmed','Menna12gmail.com')

SELECT * FROM pharma.Drug_manufacturer

---------------  insert data in pharma.Drug   ------------- „‘ ‘€«·

INSERT INTO pharma.Drug(trade_name,company_id,price)
VALUES  ('ASPRINE',1,1.5),('PARACETAMOL',2,25.3),('IBUROFEN',3,30),('CODEINE',4,10.8),('ACETAMINOPHEN',5,32.5),
		('AMOXICILLIN',6,115.7),('OMERPRAZOLE',7,23.9),('SIMVASTATI',8,55),('METFORMIN',9,71.2),('SERTRALINE',10,89.5),
		('GABAPENTIN',11,9.75),('ADVIL',12,13.75),('TYLENOL',13,67),('PROZAC',14,94.7),('LIPITOR',15,45.5),('CRESTOR',16,67.7),
		('PLAVIX',17,65.4),('VENTOLINE',18,32),('AMBIEN',19,100),('VICODIN',20,320)

SELECT * FROM pharma.Drug

-------STATEMENT(8)--------
ALTER TABLE pharma.Drug
ADD CONSTRAINT Dr_phar DEFAULT(200) for price

------------------  insert date in pharmacyyy.pre_ternary  -----------------------

INSERT INTO pharma.pre_ternary(quantity,Datee,phys_id,trade_name)
VALUES  ('10cm','MAy',1,'ASPRINE'),('12cm','December',2,'TYLENOL'),
		('13cm','Novamber',3,'PROZAC'),('15cm','October',4,'LIPITOR'),
		('6cm','Joly',5,'CRESTOR'),('23cm','August',6,'PLAVIX'),
		('77cm','Jounary',7,'VENTOLINE'),('82cm','Apri',6,'AMBIEN'),
		('53cm','June',7,'VICODIN'),('99','MAy',8,'SIMVASTATI'),
		('88cm','Novamber',9,'METFORMIN'),('44cm','June',10,'GABAPENTIN')

SELECT * FROM pharma.pre_ternary

---------------insert in pharmacyyy.pharmacy-------------

INSERT INTO pharma.pharmacy(Namee,fax)
VALUES  ('EL-Ezaby pharmacy' , 'EL-Ezaby@gmail.com'),
		('Seif pharmacies' , 'Seif pharmacies12@gmail.com'),
		('Alfa Pharmacy' , 'Alfa Pharmacy34@gmail.com'),('Al Andalus ' , 'Al Andalus65@gmail.com'),
		('DR/Menna' , 'Menna90@gmail.com'),('Al Hayah pharmacy' , 'Al Hayah89@gmail.com'),
		('Al Nahda ' , 'Al Nahda78@gmail.com'),('Al shams' , 'Al shams76@gmail.com'),
		('Al Taqwa' , 'Toqa10@gmail.com'),('Al Watania' , 'Al Watania34@gmail.com'),
		('Dr/hassan' , 'hassan76@gmail.com'),('Ibn Sina' , 'Ibn Sina23@gmail.com'),
		('Lifa pharmacy' , 'Life76@gmail.com'),('Pharma Egypt' , 'Pharma10@gmail.com'),
		('Dr/Youseef' , 'Yousef76@gmail.com'),('Roshdy pharmacy' , 'Roshdy45@gmail.com'),
		('Trust pharmacy' , 'Trust29@gmail.com'),('Seif pharmacy' , 'Seif80@gmail.com'),
		('Dr/Rania' , 'Rania45@gmail.com'),('Elsalam' , 'Elsalam18@gmail.com'),
		(' Sina' , ' Sina23@gmail.com'), ('dr/Mariam' , 'Mariam24@gmail.com'),
		('Andalus', 'Andalus46@gmail.com')

SELECT * FROM pharma.pharmacy

--------  Insert int to pharmacyyy.manufacturer_contract --------

INSERT INTO pharma.manufacturer_contract(starte_date,end_date,company_id)
VALUES  ('January' , 'February',1), ('February' ,'March',2),
		('March' , 'April',3),('April' ,' May',4),
		('January ','June',5),('July' , 'August',6),('August' , 'March',7),
		('Septamber' ,'October',8),('October' ,'Novamber',9),
		('December ','April',10),('January ','June',11),
		('April' ,'December',12),('October' ,'May',13),('February' , 'July',14),
		('August' ,'June',15),('June ', 'May',16),('October ','Novamber',17),
		('July' , 'August',18),('Mai', 'April',19)
		,('Decomber ', 'Novamber',20)
SELECT * FROM pharma.manufacturer_contract

---------------------INSERT DATA in pharmacyyy.employee-----------------

INSERT INTO pharma.employee(first_name,second_name,shift_start,shift_end,phar_id)
VALUES  ('Menna' , 'Ahmed' ,'9Am','9pm',1),('Malak' , 'Mahmoud','3pm','10pm',2),
		('Yousef' , 'Kamal','1pm','7pm',3),('Hadeer' ,'AboElkheir','10pM' ,'10Am',4),
		('Yousra' ,'Alaa','11Am','12Am',5),('Esraa' ,'Nabil','2pm' ,'6pm',6),
		('Tasnim' ,'Mostafa','11 am','8pm',7 ),('Amr' ,'Gamal','5pm','8pm',8),
		('Rana' ,'Hany','1Am' ,'2pM',9),
		('Rana' ,'Hany','8Am','9pm',10),('Hamas' ,'Ebrahim','12AM','12pm',11),
		('Manal' ,'Ramadan','7am','6pm',12),
		('Rania' ,'Walid','3AM','3PM',13),('Aya' ,'Nasser','4Am','9Pm',14),
		('Rania' ,'Walid','2pm','5Am',15),('Farah' , 'Mohsen','1pm','7pm',16),
		('Malak' ,'Mousa','6pm','5Am',17),('Manar','Baha','3pm','10Am',18),
		('Mona','abdelathez','7pm' ,'8pm',19),('Kareman ' , 'Ali','4pm','5Am',20)
SELECT * FROM pharma.employee

INSERT INTO pharma.phar_Drug(price,trade_name)
VALUES  (200,'TYLENOL'),(500,'SIMVASTATI'),
        (400,'PROZAC'),(300,'AMBIEN'),
		(900,'GABAPENTIN'),(1465,'OMERPRAZOLE'),
		(300,'LIPITOR'),(500,'PROZAC'),
		(200,'ADVIL'),(700,'PROZAC')
SELECT * FROM pharma.phar_Drug
