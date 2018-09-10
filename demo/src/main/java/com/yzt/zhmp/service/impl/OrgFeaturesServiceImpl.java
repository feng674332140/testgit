package com.yzt.zhmp.service.impl;

import com.yzt.zhmp.dao.OrgFeaturesDao;
import com.yzt.zhmp.service.OrgFeaturesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrgFeaturesServiceImpl implements OrgFeaturesService {
    @Autowired
    private OrgFeaturesDao orgFeaturesDao;
    @Override
    public List selectOrgFeatures() {
        return orgFeaturesDao.selectOrgFeatures();
    }

    @Override
    public int offOrgFeatures(List list) {
        return orgFeaturesDao.offOrgFeatures(list);
    }

    @Override
    public int onOrgFeatures(List list) {
        return orgFeaturesDao.onOrgFeatures(list);
    }
}
