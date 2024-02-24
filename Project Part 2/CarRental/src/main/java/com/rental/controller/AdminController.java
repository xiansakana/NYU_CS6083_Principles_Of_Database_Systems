package com.rental.controller;

import com.baomidou.mybatisplus.extension.api.R;
import com.rental.entity.Admin;
import com.rental.service.AdminService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private AdminService adminService;

    @ApiOperation("管理员登录")
    @GetMapping("/login")
    public R<String> login(String AdminId, String password){
        // 查询数据库密码，如果密码等于账户，则登录成功，否则抛出异常，登录失败
        Admin Admin = adminService.getById(AdminId);
        if (Admin == null){
            return R.failed("登录失败");
        }else if(Admin.getPassword().equals(DigestUtils.md5DigestAsHex(password.getBytes()))){
            // 密码不对
            return R.failed("登录失败");
        }
        return R.ok("登录成功");
    }

    /**
     * 管理员注册接口
     * @param AdminId 管理员账户
     * @param  password 管理员密码
     * @return 是否注册成功
     */
    @ApiOperation("管理员注册")
    @PostMapping
    public R<String> register(String AdminId,String password){
        Admin Admin = adminService.getById(AdminId);
        if (Admin != null){
            return R.failed("账户重复");
        }
        adminService.save(Admin);
        return R.ok("注册成功");
    }

    /**
     * 管理员修改密码接口
     * @param AdminId 管理员id
     * @param password 密码
     * @return 修改后的管理员
     */
    @ApiOperation("管理员改密")
    @GetMapping("/update")
    public R<String> update(String AdminId, String password){
        Admin Admin = adminService.getById(AdminId);
        if (Admin == null){
            return R.failed("该管理员不存在");
        }
        Admin.setPassword(password);
        adminService.updateById(Admin);
        return R.ok("修改密码成功");
    }

    /**
     * 删除管理员接口
     * @param lit 要删除的管理员集合
     * @return 成功删除管理员数
     */
    @ApiOperation("删除管理员")
    @DeleteMapping("/delete")
    public R<Integer> delete(@RequestBody List<Integer> lit){
        Integer deleteResult = 0;
        for (Integer AdminId : lit) {
            deleteResult = adminService.removeById(AdminId) ? deleteResult:++deleteResult;
        }
        return R.ok(deleteResult);
    }
}
