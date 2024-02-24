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
public class JcLoc implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * office location
     */
      private Integer locId;

    /**
     * office location street
     */
    private String street;

    /**
     * office location city
     */
    private String city;

    /**
     * office location state
     */
    private String state;

    /**
     * office location zipcode
     */
    private String zipcode;

    /**
     * office phone number
     */
    private String phoneNo;


}
