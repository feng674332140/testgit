package com.yzt.zhmp.dao;

import com.yzt.zhmp.beans.PoliceFeature;
import com.yzt.zhmp.beans.PoliceFeatures;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.UpdateProvider;
import org.apache.ibatis.jdbc.SQL;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Mapper
@Component(value = "policeFeaturesDao")
public interface PoliceFeaturesDao {

    //旧
    @Select("SELECT * FROM police_features")
    public PoliceFeatures SelectpoliceFeaturesDao();
    //添加公安模块功能
    @UpdateProvider(type = AddPoliceFeatyres.class,method = "addFeatures")
    public int addPoliceFeatures(PoliceFeatures policeFeatures);
    class AddPoliceFeatyres{
        public String addFeatures(PoliceFeatures policeFeatures){
            return new SQL(){{
                UPDATE("police_features");
                if (policeFeatures.getAnQuanJanYi()!=null)SET("AnQuanJanYi='true'");
                if (policeFeatures.getFangWuZuLin()!=null)SET("FangWuZuLin='true'");
                if (policeFeatures.getPaiChuSuoInfo()!=null)SET("PaiChuSuoInfo='true'");
                if (policeFeatures.getWangShangHuiJian()!=null)SET("WangShangHuiJian='true'");
                if (policeFeatures.getXiaQuMinJing()!=null)SET("XiaQuMinJing='true'");
                if (policeFeatures.getXunRenQiShi()!=null)SET("XunRenQiShi='true'");
                if (policeFeatures.getYiJianBaoJing()!=null)SET("YiJianBaoJing='true'");
                if (policeFeatures.getZhaoPingXinXi()!=null)SET("ZhaoPingXinXi='true'");
                if (policeFeatures.getZhuHuChaXun()!=null)SET("ZhuHuChaXun='true'");
            }}.toString();
        }
    }

        //删除公安功能模块
    @UpdateProvider(type = DeletePoliceFeatyres.class,method = "deletePolice")
    public int deletePoliceFeatures(PoliceFeatures policeFeatures);
    class DeletePoliceFeatyres{
        public String deletePolice(PoliceFeatures policeFeatures){
            return new SQL(){{
                UPDATE("police_features");
                if (policeFeatures.getAnQuanJanYi()!=null)SET("AnQuanJanYi='false'");
                if (policeFeatures.getFangWuZuLin()!=null)SET("FangWuZuLin='false'");
                if (policeFeatures.getPaiChuSuoInfo()!=null)SET("PaiChuSuoInfo='false'");
                if (policeFeatures.getWangShangHuiJian()!=null)SET("WangShangHuiJian='false'");
                if (policeFeatures.getXiaQuMinJing()!=null)SET("XiaQuMinJing='false'");
                if (policeFeatures.getXunRenQiShi()!=null)SET("XunRenQiShi='false'");
                if (policeFeatures.getYiJianBaoJing()!=null)SET("YiJianBaoJing='false'");
                if (policeFeatures.getZhaoPingXinXi()!=null)SET("ZhaoPingXinXi='false'");
                if (policeFeatures.getZhuHuChaXun()!=null)SET("ZhuHuChaXun='true'");
            }}.toString();
        }
    }


    //新方法
    @Select("SELECT * FROM police_feature")
    public List<PoliceFeature> selectPoliceFeature();
    //关闭公安部门选定模块
    @UpdateProvider(type = PoliceFeaturesProvider.class,method ="offPoliceFeatures" )
    public int offPoliceFeature(List list);
    //开启公安模块功能
    @UpdateProvider(type = PoliceFeaturesProvider.class,method = "onPoliceFeatures")
    public int onPoliceFeature(List list);

    class PoliceFeaturesProvider{
        public String offPoliceFeatures(Map map){
            List list=(List) map.get("list");
            return new SQL(){{
                UPDATE("police_feature");
                SET("status='false'");
                System.out.println(list);

                for (int i=0;i<list.size();i++){
                    System.out.println(list.get(i));
                    WHERE("fetaures= '"+list.get(i)+"' ");
                    if (i==list.size()-1)break;
                    OR();
                }
            }}.toString();
        }
        //开启公安模块选中功能
        public String onPoliceFeatures(Map map){
            List list=(List) map.get("list");
            return new SQL(){{
                UPDATE("police_feature");
                SET("status='true'");
                System.out.println(list);

                for (int i=0;i<list.size();i++){
                    System.out.println(list.get(i));
                    WHERE("fetaures= '"+list.get(i)+"' ");
                    if (i==list.size()-1)break;
                    OR();
                }
            }}.toString();
        }

    }
}
