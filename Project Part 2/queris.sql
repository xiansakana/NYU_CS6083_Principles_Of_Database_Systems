SELECT jc_customer.fname, jc_customer.lname, jc_service.days_no
FROM jc_customer
JOIN jc_service ON jc_customer.cust_id = jc_service.cust_id
JOIN jc_vehicle_class ON jc_service.service_id = jc_vehicle_class.service_id;


SELECT cust_id, fname, lname
FROM jc_customer
WHERE cust_id IN (SELECT cust_id FROM jc_service WHERE days_no > 5);


SELECT cust_id, fname, lname,
  (SELECT COUNT(*)
   FROM jc_service
   WHERE jc_service.cust_id = jc_customer.cust_id) AS rental_count
FROM jc_customer;


SELECT cust_id, fname, lname FROM jc_customer
WHERE cust_id IN (SELECT cust_id FROM jc_service WHERE days_no > 4)
INTERSECT
SELECT cust_id, fname, lname FROM jc_customer WHERE cust_type = 'C' ORDER BY cust_id;


WITH nearest_customers AS (
    SELECT cust_id, fname, lname FROM jc_customer WHERE state IN ('NY', 'NJ')
)
SELECT * FROM nearest_customers;


SELECT *FROM jc_service ORDER BY days_no DESC LIMIT 5;

