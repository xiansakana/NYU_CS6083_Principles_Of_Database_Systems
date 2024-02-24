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
public class JcCardType implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * CARD TYPE ID
     */
      private Integer cardTypeId;

    /**
     * card type name
     */
    private String typeName;


}
