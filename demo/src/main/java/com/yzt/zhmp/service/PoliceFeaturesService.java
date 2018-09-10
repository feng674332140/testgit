package com.yzt.zhmp.service;

import com.yzt.zhmp.beans.PoliceFeature;
import com.yzt.zhmp.beans.PoliceFeatures;

import java.util.List;

public interface PoliceFeaturesService {


    //新 显示公安功能启用状态
    public List selectPoliceFeature();
    //关闭选中公安模块
    public int offPoliceFeature(List list);
    //开启选中的功能
    public int onPoliceFeature(List list);

}
