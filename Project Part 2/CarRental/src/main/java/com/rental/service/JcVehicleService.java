package com.rental.service;

import com.rental.entity.JcVehicle;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author fyc
 * @since 2023-12-10
 */
public interface JcVehicleService extends IService<JcVehicle> {
    /**
     * 根据id查询车辆
     * @param vehicleId
     * @return 车辆列表
     */
    List<JcVehicle> fromIdQueryVehicle(Integer vehicleId);
}
