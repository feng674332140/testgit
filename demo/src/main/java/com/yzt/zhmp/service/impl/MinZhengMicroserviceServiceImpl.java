package com.yzt.zhmp.service.impl;

import com.yzt.zhmp.beans.OrgAdministrationFeatures;
import com.yzt.zhmp.dao.MinZhengMicroserviceDao;
import com.yzt.zhmp.service.MinZhengMicroserviceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MinZhengMicroserviceServiceImpl implements MinZhengMicroserviceService {
    @Autowired
    private MinZhengMicroserviceDao minZhengMicroserviceDao;
    @Override
    public int midfyMicroservice(OrgAdministrationFeatures orgAdministrationFeatures) {
        return minZhengMicroserviceDao.midfyMicroservice(orgAdministrationFeatures);
    }

    @Override
    public int deleteMicroservice(OrgAdministrationFeatures orgAdministrationFeatures) {
        return minZhengMicroserviceDao.deleteMicroservice(orgAdministrationFeatures);
    }
}
