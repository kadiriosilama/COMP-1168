-- KADIRI OSILAMA OSILAMA 101521804 CRN 
-- Question 1
SELECT vendor_name, vendor_state, vendor_city
FROM ap.vendors
ORDER BY vendor_state, vendor_city;
-- Question 2
SELECT employee_id, 
CONCAT(first_name, ', ', last_name) AS EmployeeName
FROM ex.employees
WHERE first_name LIKE 'R%'
limit 3;

-- Question 3
SELECT title, unit_price,
 ROUND(0.9* unit_price, 2) AS 'DiscountedPrice'
FROM om.items
ORDER BY DiscountedPrice
LIMIT 10;

