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
public class JcVehicle implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * Vehicle Identification Number
     */
      private String vehicleVin;

    /**
     * VEHICLE MAKE
     */
    private String vehicleMake;

    /**
     * VEHICLE MODEL
     */
    private String vehicleModel;

    /**
     * VEHICLE YEAR
     */
    private Integer vehicleYear;

    /**
     * LICENSE PLATE NUMBER
     */
    private String licensePlateNo;

    /**
     * location id
     */
    private Integer locId;

    /**
     * vehicle id
     */
    private Integer vehicleId;


}
