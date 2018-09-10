package com.yzt.zhmp.service.UserService.Impl;

import com.yzt.zhmp.beans.UserCounty;
import com.yzt.zhmp.dao.UserDao.UserCountyDao;
import com.yzt.zhmp.dao.UserDao.UserLoginDao;
import com.yzt.zhmp.service.UserService.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
 * @author wang
 */
@Service
@Transactional
public class UserLoginServiceImpl implements UserLoginService {

    @Autowired
    UserLoginDao userLoginDao;

    @Override
    public UserCounty login(UserCounty userCounty) {
        return userLoginDao.login(userCounty);
    }
}
