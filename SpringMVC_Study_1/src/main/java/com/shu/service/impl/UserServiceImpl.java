package com.shu.service.impl;

import com.shu.mapper.UserMapper;
import com.shu.pojo.User;
import com.shu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User exists(User user) {
        //提前检查

        //注入mapper


        return userMapper.select(user);
    }
}
