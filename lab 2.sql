-- lab 2
-- Question 1
use om;
SELECT artist, title
FROM items
WHERE artist LIKE 'Umami';

-- Question 2
SELECT customer_first_name,customer_last_name,customer_zip
FROM customers
WHERE customer_zip LIKE '9%'
ORDER BY customer_first_name;

-- Question 3
SELECT vendor_id,vendor_name
FROM ap.vendors
WHERE vendor_name LIKE 'N%'
ORDER BY vendor_id;

-- Question 4
SELECT *
FROM ex.customers
WHERE customer_phone LIKE '(309)%';
-- Question 5
SELECT invoice_id, invoice_total-credit_total-payment_total AS balance
FROM ap.invoices
WHERE invoice_total-credit_total-payment_total>1000
ORDER BY balance; 
-- Question 6
SELECT invoice_id,invoice_total,ROUND(0.2* invoice_total,2) AS 'Discount(20%)', ROUND(0.8* invoice_total) AS 'Total Due'
FROM ap.invoices;
 -- Question 7
 SELECT customer_id, CONCAT(customer_first_name, customer_last_name) AS CustomerName
 FROM ex.customers
 ORDER BY 2;
  -- Question 8
  SELECT order_id, customer_id,order_date,shipped_date
  FROM om.orders
  WHERE shipped_date IS NULL
  AND order_date BETWEEN '2014-01-01' AND "";
  
    -- Question 9
  SELECT *
  FROM ap.invoices
  WHERE invoice_total BETWEEN 1000 and 1500;
  
    -- Question 8
  SELECT vendor_name,vendor_state
  FROM ap.vendors
  WHERE vendor_state IN('FL', 'NJ','DC','WI');
  
    -- Question 11
  SELECT DISTINCT VENDOR_CITY
  FROM ap.vendors;