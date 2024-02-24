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
public class Corporate implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * customer id
     */
      private Integer custId;

    /**
     * Employee ID of the customer who rents the car on a corporate account
     */
    private Integer empId;

    /**
     * details of corporation name
     */
    private String corpName;

    /**
     * registration number of the corporation
     */
    private String regNo;


}
