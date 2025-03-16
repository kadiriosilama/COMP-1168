-- QUESTION 1
SELECT customer_first_name, customer_last_name,
LEFT (customer_first_name, 1) as Firstname,
LEFT (customer_last_name, 1) as LastName
From om.customers;
 
-- QUESTION 2
select customer_id,CONCAT(customer_first_name,',',customer_last_name) as full_name,
CONCAT(LEFT (customer_first_name,1),',',LEFT (customer_last_name,1)) as Initials
from om.customers;
 
-- QUESTION 3
SELECT customer_id, CONCAT_WS(',' ,customer_first_name,
 customer_last_name) as full_name,
CONCAT (LEFT(customer_first_name,1),'.', LEFT (customer_last_name,1)) as Initials
from om.customers;

 
-- QUESTION 4
SELECT vendor_id, vendor_name,
CHARACTER_LENGTH(vendor_name) as NameLength
From ap.vendors
Order by NameLength;
 
-- QUESTION 5
SELECT vendor_name,vendor_state,vendor_phone
from ap.vendors
WHERE vendor_state='CA'
ORDER BY CHARACTER_LENGTH(vendor_name);

-- Question 6
SELECT emp_name,
SUBSTRING_INDEX(emp_name, ' ', 1) AS first_name,
SUBSTRING_INDEX(emp_name, ' ', 1) AS last_name
FROM ex.string_sample;
 
-- QUESTION 7
SELECT vendor_name,vendor_phone,
REPLACE (REPLACE(vendor_phone,'(',''),')','-') as VendorPhone
from ap.vendors
order by 1;

 
 
 
-- QUESTION 8
select *
from ex.string_sample
order BY emp_id;
 
select *
from ex.string_sample
order BY cast(emp_id as SIGNED);
 
-- Question 9
Select title AS AlbumName, unit_price, unit_price/2,ROUND(unit_price/2,2)
FROM om.items;
 
 
 
-- Question 10
select NOW (), date_format (NOW(), '%Y-%m-%d'), date_format(NOW(), '%y/%M/%d');
select datediff (NOW(), '2002-10-30');
select datediff('2024-01-25', '2002-10-30');
select date_format(' 2024-01-25', '%d/%m%Y'),date_format(2024-01-25', %W,%d %M %Y');



