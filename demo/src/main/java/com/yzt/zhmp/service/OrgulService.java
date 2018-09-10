package com.yzt.zhmp.service;

import com.yzt.zhmp.beans.Orgurl;

public interface OrgulService {
        //根据code值查找对应的地区民政局信息
    public Orgurl selectOrgUrlByCode(String code);

}
