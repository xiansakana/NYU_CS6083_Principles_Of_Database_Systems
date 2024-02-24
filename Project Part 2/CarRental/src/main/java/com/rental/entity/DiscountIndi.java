package com.rental.entity;

import java.math.BigDecimal;
import java.time.LocalDateTime;
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
public class DiscountIndi implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * discount id
     */
      private Integer discountId;

    /**
     * percentage of discount offered for individual
     */
    private BigDecimal discPerc;

    /**
     * discount coupon start date
     */
    private LocalDateTime startDate;

    /**
     * discount coupon end date
     */
    private LocalDateTime endDate;


}
