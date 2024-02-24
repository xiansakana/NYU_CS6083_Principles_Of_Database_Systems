package com.rental.controller;

import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.rental.entity.User;
import com.rental.service.UserService;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@ApiModel("用户登录")
@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;
    /**
     * 用户登录接口
     */
    @ApiOperation("用户登录")
    @GetMapping("/login")
    public R<String> login(String email, String password){
        // 查询数据库密码，如果密码等于账户，则登录成功，否则抛出异常，登录失败
        User user = userService.getById(email);
        if (user == null){
            return R.failed("登录失败");
        }else if(user.getPassword().equals(DigestUtils.md5DigestAsHex(password.getBytes()))){
            // 密码不对
            return R.failed("登录失败");
        }
        return R.ok("登录成功");
    }

    /**
     * 用户注册接口
     * 如果注册成功返回一个用户对象，失败返回null
     * @param email 用户账户
     * @param  password 用户密码
     * @return 是否注册成功
     */
    @ApiOperation("用户注册")
    @PostMapping
    public R<String> register(String email,String password){
        User user = userService.getById(email);
        if (user != null){
            return R.failed("账户重复");
        }
        user = new User();
        user.setEmail(email);
        user.setPassword(DigestUtils.md5DigestAsHex(password.getBytes()));
        userService.save(user);
        return R.ok("注册成功");
    }

    /**
     * 用户修改密码接口
     * @param email 用户id
     * @param password 密码
     * @return 修改后的用户
     */
    @ApiOperation("用户改密")
    @GetMapping("/update")
    public R<String> update(String email, String password){
        User user = userService.getById(email);
        if (user == null){
            return R.failed("该用户不存在");
        }
        user.setPassword(password);
        userService.updateById(user);
        return R.ok("修改密码成功");
    }

    /**
     * 删除用户接口
     * @param lit 要删除的用户集合
     * @return 成功删除用户数
     */
    @ApiOperation("删除用户")
    @DeleteMapping("/delete")
    public R<Integer> delete(@RequestBody List<Integer> lit){
        Integer deleteResult = 0;
        for (Integer email : lit) {
            deleteResult = userService.removeById(email) ? deleteResult:++deleteResult;
        }
        return R.ok(deleteResult);
    }

    @ApiOperation("分页查询所有用户")
    @GetMapping("/queryAll")
    public R<Page<User>> queryAll(Integer page,Integer pageNumber){
        Page<User> pageInfo = new Page<>(page,pageNumber);
        Page<User> userPage = userService.page(pageInfo);
        return R.ok(userPage);
    }
}
