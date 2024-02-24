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
public class Individual implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * customer id
     */
      private Integer custId;

    /**
     *  Driver License Number
     */
    private String drvLicenseNo;

    /**
     * Insurance Company Name
     */
    private String insCmpName;

    /**
     * Insurance Policy Number
     */
    private String insPolNo;


}
