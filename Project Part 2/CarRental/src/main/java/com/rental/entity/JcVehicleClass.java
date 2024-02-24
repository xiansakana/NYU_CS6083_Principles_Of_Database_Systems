package com.rental.entity;

import java.math.BigDecimal;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 
 * </p>
 *
 * @author fyc
 * @since 2023-12-10
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class JcVehicleClass implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * vehicle class id
     */
      private Integer vehicleId;

    /**
     * vehicle type
     */
    private String vehicleType;

    /**
     * rental rate per day
     */
    private BigDecimal dailyRate;

    /**
     * fees for over mileage per day
     */
    private BigDecimal overMileageRate;

    /**
     * odometer limit
     */
    private Integer odoLimit;

    /**
     * service id
     */
    private Integer serviceId;


}
