package com.yzt.zhmp.service.impl;

import com.yzt.zhmp.dao.SystemDao;
import com.yzt.zhmp.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SystemServiceImpl implements SystemService {
    @Autowired
    private SystemDao systemDao;
    @Override
    public List selectSystem() {
        return systemDao.selectSystem();
    }
}
