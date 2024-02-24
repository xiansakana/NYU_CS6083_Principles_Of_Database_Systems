ALTER TABLE discount_indi
ADD CONSTRAINT DiscountDate CHECK (start_date <= end_date);

ALTER TABLE jc_vehicle_class
ADD CONSTRAINT Rate CHECK (daily_rate > 0 AND over_mileage_rate > 0 AND odo_limit > 0);

ALTER TABLE jc_invoice
ADD CONSTRAINT InvoiceAmount CHECK (invoice_amount >= 0);

ALTER TABLE jc_payment
ADD CONSTRAINT PaymentDate CHECK (payment_date <= SYSDATE);

ALTER TABLE Invoice
ADD CONSTRAINT InvoiceDate CHECK (invoice_date <= SYSDATE);

ALTER TABLE corporate
ADD CONSTRAINT UniqueRegNo UNIQUE (reg_no);

ALTER TABLE corporate
ADD CONSTRAINT UniqueEMPID UNIQUE (emp_id);

ALTER TABLE jc_payment
ADD CONSTRAINT InvoicePaymentDate CHECK (invoice_date <= payment_date);