package com.yzt.zhmp.dao;

import com.yzt.zhmp.beans.System;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component(value = "systemDao")
public interface SystemDao {
    //查询部门模块功能信息
    @Select("SELECT * FROM d_system")
    public List<System> selectSystem();
}
