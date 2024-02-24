package com.rental.entity;

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
public class JcPayment implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * PAYMENT ID
     */
      private Integer paymentId;

    /**
     * PAYMENT DATE
     */
    private LocalDateTime paymentDate;

    /**
     * card number
     */
    private Long cardNo;

    /**
     * invoice id
     */
    private Integer invoiceId;

    /**
     * CVV
     */
    private Integer cvv;

    /**
     * card type id
     */
    private Integer cardTypeId;


}
