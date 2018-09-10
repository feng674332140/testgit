package com.yzt.zhmp.service.UserService;


import com.yzt.zhmp.beans.UserCounty;

/**
 * @author wang
 */
public interface UserLoginService {

    /**
     * 用户登录
     * @param userCounty
     * @return
     */
    UserCounty login(UserCounty userCounty);
}

