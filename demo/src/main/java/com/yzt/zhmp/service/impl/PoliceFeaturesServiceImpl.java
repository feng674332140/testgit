package com.yzt.zhmp.service.impl;

import com.yzt.zhmp.beans.PoliceFeature;
import com.yzt.zhmp.beans.PoliceFeatures;
import com.yzt.zhmp.dao.PoliceFeaturesDao;
import com.yzt.zhmp.service.PoliceFeaturesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PoliceFeaturesServiceImpl implements PoliceFeaturesService {
    @Autowired
    private PoliceFeaturesDao policeFeaturesDao;


    //新方法

    @Override
    public List selectPoliceFeature() {
        return policeFeaturesDao.selectPoliceFeature();
    }

    @Override
    public int offPoliceFeature(List list) {
        return policeFeaturesDao.offPoliceFeature(list);
    }

    @Override
    public int onPoliceFeature(List list) {
        return policeFeaturesDao.onPoliceFeature(list);
    }
}
