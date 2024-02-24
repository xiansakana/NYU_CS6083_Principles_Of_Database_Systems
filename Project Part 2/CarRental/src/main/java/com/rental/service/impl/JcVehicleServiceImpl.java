package com.rental.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.rental.entity.JcVehicle;
import com.rental.mapper.JcVehicleMapper;
import com.rental.service.JcVehicleService;
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
public class JcVehicleServiceImpl extends ServiceImpl<JcVehicleMapper, JcVehicle> implements JcVehicleService {

    @Autowired
    private JcVehicleMapper jcVehicleMapper;

    /**
     * 根据id查询车辆列表
     * @param vehicleId
     * @return
     */
    @Override
    public List<JcVehicle> fromIdQueryVehicle(Integer vehicleId) {
        LambdaQueryWrapper<JcVehicle> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(JcVehicle::getVehicleId, vehicleId);

        List<JcVehicle> jcVehicles = jcVehicleMapper.selectList(wrapper);
        return jcVehicles;
    }
}
