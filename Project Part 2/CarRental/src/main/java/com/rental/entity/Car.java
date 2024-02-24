package com.rental.entity;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class Car {
    Integer carId;
    String carTitle;
    String describe;
    BigDecimal price;
    String modelYear;
    // 乘坐人数
    Integer seatCapacity;
    // 里程表限制
    Integer vehicleOdometerLimit;
    // 超额里程费
    String vehicleOverMileageFees;
    String selectFuelType;
}
