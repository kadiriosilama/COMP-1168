-- Question 1

SELECT CONCAT(C.customer_first_name, ' ', C.customer_last_name) AS CustomerName,
    O.order_id,
    O.order_date,
    I.title,
    OD.order_qty
FROM
    OM.customers C
JOIN OM.orders O ON C.customer_id = O.customer_id
JOIN OM.order_details OD ON O.order_id = OD.order_id
JOIN OM.items I ON OD.item_id = I.item_id
ORDER BY
    CustomerName ASC,
    O.order_id ASC;


-- Question 2
SELECT CONCAT(first_name, ', ', last_name) AS EmployeeName, project_number
FROM ex.employees
LEFT JOIN ex.projects ON ex.employees.employee_id = ex.projects.employee_id
WHERE ex.projects.project_number IS NULL
ORDER BY EmployeeName ASC;

-- Question 3
SELECT v.vendor_name,
    SUM(i.invoice_total) AS Invoice_Total
FROM ap.vendors v
JOIN ap.invoices i ON v.vendor_id = i.vendor_id
GROUP BY v.vendor_name
HAVING SUM(i.invoice_total) > 5000
ORDER BY v.vendor_name ASC;



