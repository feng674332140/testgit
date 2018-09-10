package com.yzt.zhmp.service.impl;

import com.yzt.zhmp.beans.Orgurl;
import com.yzt.zhmp.dao.Orgurldao;
import com.yzt.zhmp.service.OrgulService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrgulServiceImpl implements OrgulService {
    @Autowired
    private Orgurldao orgurldao;
    @Override
    public Orgurl selectOrgUrlByCode(String code) {
        return orgurldao.selectOrgUrlByCode(code);
    }
}
