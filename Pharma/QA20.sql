use Medical_DB
go
----------------  SELECT(20)    ------------

----------------STATEMENT(1)    -------------
SELECT * FROM pharma.Doctor ORDER BY last_name
  
-------------   STATEMENT(2) ----------------
SELECT * FROM pharma.Doctor ORDER BY speciality DESC

------------- STATEMENT(3)-----------
SELECT * FROM pharma.Patient ORDER BY contact_number , phys_id DESC

-------------   STATEMENT(4) --------
SELECT DISTINCT Insurance_Info FROM pharma.Patient

SELECT count(DISTINCT) Insurance_Info FROM pharma.Patient

---------    STATEMENT(5)  --------
SELECT * FROM p_address 
WHERE  city='cairo' 
 -------    STATEMENT(6)   ---------
 SELECT * FROM pharma.pre_ternary  
 WHERE quantity >'6cm' ORDER BY quantity DESC

 --------- STATEMENT(7)  --------
 SELECT * FROM pharma.pre_ternary 
 WHERE Datee like 'J%' 

 ---------- STATEMENT(8) ------- 
 SELECT * FROM pharma.pharmacy
 WHERE fax NOT LIKE 'M%'

----------  STATEMENT(9) -------
SELECT shift_start , shift_end 
FROM pharma.employee
WHERE shift_start NOT IN('2Am' , '9Pm') ORDER BY second_name DESC

------- STATEMENT(10)-----
SELECT phar_id FROM pharma.employee
WHERE  phar_id BETWEEN 2 and 6

--------STATEMENT(11) ------
SELECT * FROM pharma.Patient 
WHERE contact_number LIKE '[010]%'

--------STATEMENT(12)------
SELECT * FROM pharma.employee
WHERE first_name ='Menna' AND second_name='Ahmed'

-------STATEMENT(13)-----
SELECT * FROM p_address
WHERE statee is NULL AND patient_id>=4

-------STATEMENT(14)-----
SELECT top 60 percent *from pharma.Drug_manufacturer

 ------- STATEMENT(15) ------
 SELECT MAX(shift_start)
 FROM pharma.employee
 where phar_id >=3

-------- STATEMENT(16)------
SELECT COUNT(*)
FROM pharma.Drug_manufacturer

----- STATEMENT(17)-------(Inner join value matched between table1 and table2)
SELECT speciality , insurance_info
from pharma.Doctor p inner join pharma.Patient pa
on  p.phys_id=p.phys_id

----- STATEMENT(18) -------
SELECT first_name , trade_name
From pharma.Drug_manufacturer D inner join pharma.Drug O
on D.company_id = O.company_id

----- STATEMENT(19) ------ outer join(for rows dont have matching)
SELECT fax ,starte_date
From pharma.pharmacy K left outer join  pharma.manufacturer_contract g
on k.phar_id = g.phar_id
order by end_date DESC

------ STATEMENT(20)-----
SELECT shift_start , first_name , second_name , addresss , fax
FROM pharma.employee E right outer join pharma.pharmacy L
on E.phar_id = L.phar_id
order by emp_id , Namee DESC


-- 5 UPDATE
update pharma.Doctor 
set speciality = 'Endocrinology' 
where first_name = 'MENNA'

update pharma.Patient
set contact_number = 33068
where first_name = 'Lamiaa'

update p_address
set city = 'Cairo'
where street = 'Ramses'

update pharma.Drug_manufacturer
set first_name ='Rania'
where second_name = 'Ahmed'
 
 update pharma.pre_ternary
set quantity= 5
where trade_name = 'TYLENOL'

--5 DELETE
delete from pharma.pre_ternary
where Datee = 'June' 

delete from pharma.employee
where shift_end = '8pm'

delete from pharma.employee
where shift_start  = '3pm'

delete from pharma.pharmacy
where Namee = 'EL-Ezaby pharmacy'

delete from pharma.pharmacy
where fax = 'EL-Ezaby@gmail.com'