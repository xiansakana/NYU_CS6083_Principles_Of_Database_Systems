package com.rental.controller;


import com.baomidou.mybatisplus.extension.api.R;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author fyc
 * @since 2023-12-10
 */
@RestController
@RequestMapping("/jc-service")
public class JcServiceController {
    /**
     * 下单
     * @return 是否下单成功
     */
    public R<Boolean> order(){
        /**
         * 查询能用的折扣，打折
         * discount
         * jc_invoice
         */
        return null;
    }
}

