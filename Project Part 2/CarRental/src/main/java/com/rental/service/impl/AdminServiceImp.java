package com.rental.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.rental.entity.Admin;
import com.rental.mapper.AdminMapper;
import com.rental.service.AdminService;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImp extends ServiceImpl<AdminMapper, Admin> implements AdminService {
}
