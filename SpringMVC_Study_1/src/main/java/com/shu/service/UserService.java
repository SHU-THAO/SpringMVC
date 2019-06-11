package com.shu.service;

import com.shu.pojo.User;

public interface UserService {

    /**
     * 根据user信息检查是否存在用户
     * @param user
     * @return
     */
    User exists(User user);
}
