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
public class JcInvoice implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * Invoice id
     */
      private Integer invoiceId;

    /**
     * INVOICE DATE
     */
    private LocalDateTime invoiceDate;

    /**
     * INVOICE AMOUNT
     */
    private BigDecimal invoiceAmount;

    /**
     * service id
     */
    private Integer serviceId;


}
