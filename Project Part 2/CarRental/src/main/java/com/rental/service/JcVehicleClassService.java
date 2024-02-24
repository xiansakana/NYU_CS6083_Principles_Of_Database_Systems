package com.rental.service;

import com.rental.entity.JcVehicleClass;
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
public interface JcVehicleClassService extends IService<JcVehicleClass> {
    /**
     * 分组查询所有平台
     */
    List<JcVehicleClass> queryList();
}
