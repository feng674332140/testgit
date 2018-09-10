package com.yzt.zhmp.dao;

import com.yzt.zhmp.beans.Orgurl;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "orgurldao")
public interface Orgurldao {
    @Select("SELECT * FROM org_url WHERE XianQuCode = #{code} ")
    public Orgurl selectOrgUrlByCode(String code);

}
