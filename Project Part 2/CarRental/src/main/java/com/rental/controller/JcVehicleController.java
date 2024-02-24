package com.rental.controller;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.rental.common.R;
import com.rental.entity.JcVehicle;
import com.rental.service.JcVehicleClassService;
import com.rental.service.JcVehicleService;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiOperation;
import io.swagger.models.auth.In;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author fyc
 * @since 2023-12-10
 */
@ApiModel("/车辆信息管理")
@RestController
@RequestMapping("/jc-vehicle")
public class JcVehicleController {


    @Autowired
    private JcVehicleService jcVehicleService;

    @Autowired
    private JcVehicleClassService jcVehicleClassService;
    /**
     * 分页查询所有JcVehicle
     */
    @ApiOperation("分页查询所有汽车")
    @GetMapping("/page")
    public R<Page<JcVehicle>> queryJcVehicle(Integer page, Integer pageSize){
        Page<JcVehicle> pageInfo = new Page<>(page, pageSize);
        LambdaQueryWrapper<JcVehicle> wrapper = new LambdaQueryWrapper<>();

        Page<JcVehicle> result = jcVehicleService.page(pageInfo);
        return R.success(result);
    }


    /**
     * 添加车辆
     * @param jcVehicle
     * @return
     */
    @ApiOperation("添加汽车")
    @GetMapping("/add")
    public R<String> addJcVehicle(@RequestBody JcVehicle jcVehicle){
        List<JcVehicle> jcVehicles = jcVehicleService.fromIdQueryVehicle(jcVehicle.getVehicleId());
        if(jcVehicles != null || jcVehicles.size() != 0){
            return R.error("添加失败");
        }
        boolean save = jcVehicleService.save(jcVehicle);
        if (save){
            return R.success("保存成功");
        }
        else{
            return R.error("保存失败");
        }
    }

    /**
     * 更新
     * @param jcVehicle
     * @return
     */
    @ApiOperation("修改汽车信息")
    @PostMapping("/update")
    public R<String> update(JcVehicle jcVehicle){
        boolean b = jcVehicleService.updateById(jcVehicle);
        if (b){
            return R.success("修改成功");
        }
        return R.error("删除失败");
    }

    /**
     * 删除
     */
    @ApiOperation("删除信息")
    @DeleteMapping("/delete")
    public R<String> delete(Integer jcVehicleId){
        boolean b = jcVehicleService.removeById(jcVehicleId);
        if (b){
            return R.success("删除成功");
        }
        return R.error("删除失败");
    }
}

