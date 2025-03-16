-- Question 1
-- 1a
SELECT vendors.vendor_id,vendor_name,invoice_date,invoice_total, 
FROM ap.vendors, ap.invoices,
WHERE vendors.vendor_id= invoices.vendor_id
ORDER BY invoice_date;

-- 1a using alias
SELECT v.vendor_id,vendor_name,invoice_date,invoice_total
FROM ap.vendors v, ap.invoices i
WHERE v.vendor_id= i.vendor_id
ORDER BY invoice_date;


-- 1b (INNER JOIN)
select v.vendor_id,i.vendor_id,
v.vendor_name,i.invoice_date,i.invoice_total
from ap.vendors v
JOIN ap.invoices i
ON v.vendor_id = i.vendor_id
ORDER BY invoice_date;

-- 1c Using keyword
select v.vendor_id,i.vendor_id,
v.vendor_name,i.invoice_date,i.invoice_total
from ap.vendors v
 INNER JOIN ap.invoices i
USING(vendor_id);


-- 1d Using NATURAL JOIN
SELECT v.vendor_id,i.vendor_id,
v.vendor_name,i.invoice_date,i.invoice_total
from ap.vendors v
NATURAL JOIN ap.invoices i;
