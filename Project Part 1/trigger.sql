CREATE OR REPLACE TRIGGER calculate_invoice
BEFORE INSERT ON jc_invoice
FOR EACH ROW
DECLARE
    v_daily_rate        NUMBER(5, 2);
    v_over_mileage_rate NUMBER(4, 2);
    v_extra_miles       NUMBER(6);
BEGIN
    -- Get the daily rate and over mileage rate for the associated vehicle class
    SELECT vc.daily_rate, vc.over_mileage_rate
    INTO v_daily_rate, v_over_mileage_rate
    FROM jc_vehicle_class vc
    WHERE vc.service_id = (SELECT service_id FROM jc_service WHERE service_id = :NEW.service_id);

    -- Calculate the number of extra miles
    SELECT GREATEST(end_odo - start_odo - (days_no * vc.odo_limit), 0)
    INTO v_extra_miles
    FROM jc_service
    WHERE service_id = :NEW.service_id;

    -- Calculate the invoice amount
    :NEW.invoice_amount := (:NEW.days_no * v_daily_rate) + (v_extra_miles * v_over_mileage_rate);
END;
/
