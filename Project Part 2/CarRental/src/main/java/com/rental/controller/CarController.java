package com.rental.controller;

import com.rental.common.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.rental.entity.Car;
import com.rental.service.CarService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@ApiOperation("汽车管理")
@RequestMapping("/car")
@RestController
public class CarController {

    @Autowired
    private CarService carService;

    @GetMapping("/page")
    @ApiOperation("分页查询所有汽车信息")
    public R<Page<Car>> queryPage(Integer page, Integer pageSize){
        Page<Car> carPage = new Page<>(page, pageSize);
        Page<Car> result = carService.page(carPage);
        return R.success(result);
    }
    @ApiOperation("添加汽车")
    @PostMapping("/add")
    public R<String> addCar(@RequestBody Car car){
        Car byId = carService.getById(car.getCarId());
        if (byId != null){
            return R.error("添加失败，这条记录已存在");
        }
        carService.save(car);
        return R.success("添加成功");
    }

    @ApiOperation("删除汽车")
    @DeleteMapping("/delete")
    public R<String> deleteCar(Integer carId){
        boolean b = carService.removeById(carId);
        if (b) return R.success("删除成功");
        return R.error("删除失败");
    }
}
