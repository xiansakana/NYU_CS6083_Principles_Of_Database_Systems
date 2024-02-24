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
public class JcCustomer implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * customer id
     */
      private Integer custId;

    /**
     * customer first name
     */
    private String fname;

    /**
     * customer last name
     */
    private String lname;

    /**
     * customer street
     */
    private String street;

    /**
     * customer city
     */
    private String city;

    /**
     * customer state
     */
    private String state;

    /**
     * customer zipcode
     */
    private String zipcode;

    /**
     * customer phone number
     */
    private String phoneNo;

    /**
     * customer email
     */
    private String email;

    /**
     * customer type
     */
    private String custType;


}
