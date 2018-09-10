package com.yzt.zhmp.service.impl;

import com.yzt.zhmp.beans.OrgAdministrationFeatures;
import com.yzt.zhmp.dao.OrgAdministrationFeaturesDao;
import com.yzt.zhmp.service.OrgAdministrationFeaturesService;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrgAdministrationFeaturesServiceImpl implements OrgAdministrationFeaturesService {
    @Autowired
    private OrgAdministrationFeaturesDao orgAdministrationFeaturesDao;
    @Override
    public OrgAdministrationFeatures selectFeatures() {
        return orgAdministrationFeaturesDao.selectFeatures();
    }
}
