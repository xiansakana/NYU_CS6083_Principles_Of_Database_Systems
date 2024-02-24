DROP TRIGGER IF EXISTS calculate_invoice;

DELIMITER //
CREATE TRIGGER calculate_invoice
BEFORE INSERT ON jc_invoice
FOR EACH ROW
BEGIN
    DECLARE v_daily_rate        DECIMAL(5, 2);
    DECLARE v_over_mileage_rate DECIMAL(4, 2);
    DECLARE v_extra_miles       INT;

    SELECT vc.daily_rate, vc.over_mileage_rate
    INTO v_daily_rate, v_over_mileage_rate
    FROM jc_vehicle_class vc
    WHERE vc.service_id = (SELECT service_id FROM jc_service WHERE service_id = NEW.service_id);

    SELECT GREATEST(end_odo - start_odo - (days_no * vc.odo_limit), 0)
    INTO v_extra_miles
    FROM jc_service
    WHERE service_id = NEW.service_id;

    SET NEW.invoice_amount = (days_no * v_daily_rate) + (v_extra_miles * v_over_mileage_rate);
END;
//
DELIMITER ;


