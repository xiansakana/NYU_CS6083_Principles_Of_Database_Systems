package com.rental.controller;


import com.baomidou.mybatisplus.extension.api.R;
import com.rental.entity.JcVehicleClass;
import com.rental.service.JcVehicleClassService;
import com.rental.service.JcVehicleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
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
@RequestMapping("/jc-vehicle-class")
public class JcVehicleClassController {

    @Autowired
    private JcVehicleClassService jcVehicleClassService;



}

