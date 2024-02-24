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
public class JcDiscount implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * discount id
     */
      private Integer discountId;

    /**
     * discount type
     */
    private String discountType;


}
