package com.rental.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.rental.entity.JcVehicleClass;
import com.rental.mapper.JcVehicleClassMapper;
import com.rental.mapper.JcVehicleMapper;
import com.rental.service.JcVehicleClassService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author fyc
 * @since 2023-12-10
 */
@Service
public class JcVehicleClassServiceImpl extends ServiceImpl<JcVehicleClassMapper, JcVehicleClass> implements JcVehicleClassService {

    @Autowired
    private JcVehicleMapper jcVehicleMapper;
    @Override
    public List<JcVehicleClass> queryList() {
        LambdaQueryWrapper<JcVehicleClass> wrapper = new LambdaQueryWrapper<>();
        return null;
    }
}
