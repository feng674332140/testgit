package com.yzt.zhmp.dao;

import com.yzt.zhmp.beans.OrgFeatures;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.UpdateProvider;
import org.apache.ibatis.jdbc.SQL;
import org.springframework.stereotype.Component;


import java.util.List;
import java.util.Map;

@Mapper
@Component("orgFeaturesDao")
public interface OrgFeaturesDao{
    //查询民政功能模块动态
    @Select("SELECT * FROM org_features")
    public List<OrgFeatures> selectOrgFeatures();
    //关闭民政功能模块动态
    @UpdateProvider(type = OffOrgFeatures.class,method = "offOrgFeatures")
    public int offOrgFeatures(List list);

    //打开民政模块功能
    @UpdateProvider(type = OffOrgFeatures.class,method = "onOrgFeatures")
    public int onOrgFeatures(List list);

    class OffOrgFeatures{
        //关闭民政模块功能
        public String offOrgFeatures(Map map){
            List list=(List) map.get("list");
            return new SQL(){{
                UPDATE("org_features");
                SET("status='false'");
                System.out.println(list);

                for (int i=0;i<list.size();i++){
                    System.out.println(list.get(i));
                    WHERE("features= '"+list.get(i)+"' ");
                    if (i==list.size()-1)break;
                    OR();
                }

            }}.toString();
        }
        //打开民政模块功能
        public String onOrgFeatures(Map map){
            List list=(List)map.get("list");
            return new SQL(){{
                UPDATE("org_features");
                SET("status='true'");
                System.out.println(list);

                for (int i=0;i<list.size();i++){
                    System.out.println(list.get(i));
                    WHERE("features= '"+list.get(i)+"' ");
                    if (i==list.size()-1)break;
                    OR();
                }
            }}.toString();
        }
    }
}
