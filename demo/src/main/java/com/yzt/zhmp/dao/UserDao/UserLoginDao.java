package com.yzt.zhmp.dao.UserDao;


import com.yzt.zhmp.beans.UserCounty;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

@Mapper
@Component("UserLoginDao")
public interface UserLoginDao {


    /**
     * 查询用户
     * @param userCounty
     * @return
     */
    @Select("SELECT * FROM user_user WHERE name=#{name} and password=#{password}")
    UserCounty login(UserCounty userCounty);

}
