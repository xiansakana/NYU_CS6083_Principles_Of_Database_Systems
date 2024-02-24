package com.rental.entity;

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
public class JcService implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * rent service id
     */
      private Integer serviceId;

    /**
     * rent service days number
     */
    private Integer daysNo;

    /**
     * rent service start odometer
     */
    private Integer startOdo;

    /**
     * rent service end odometer
     */
    private Integer endOdo;

    /**
     * pickup location
     */
    private Integer pickupLoc;

    /**
     * dropoff location
     */
    private Integer dropoffLoc;

    /**
     * discount id
     */
    private Integer discountId;

    private Integer custId;


}
