package com.yzt.zhmp.dao;

import com.yzt.zhmp.beans.OrgAdministrationFeatures;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.UpdateProvider;
import org.apache.ibatis.jdbc.SQL;
import org.springframework.stereotype.Component;


@Mapper
@Component("minZhengMicroserviceDao")
public interface MinZhengMicroserviceDao {
    //添加民政子功能sql
    @UpdateProvider(type = MinZhengMidfyProvider.class,method = "midfymicroservice")
    public int midfyMicroservice(OrgAdministrationFeatures orgAdministrationFeatures);
        //内部类 结构化update  sql语句
    class MinZhengMidfyProvider{
        public String midfymicroservice(OrgAdministrationFeatures orgAdministrationFeatures){
            return new SQL(){{
                UPDATE("org_administration_features");
                if(orgAdministrationFeatures.getJiuZaiJuiZhi() != null){
                    SET("JiuZaiJuiZhi='true'");
                }
                if (orgAdministrationFeatures.getMinzhengDongTai()!=null){
                    SET("MinzhengDongTai='true'");
                }
                if (orgAdministrationFeatures.getMinzhengKanWu()!=null){
                    SET("MinzhengKanWu='true'");
                }
                if (orgAdministrationFeatures.getTeKunGongYang()!=null){
                    SET("TeKunGongYang='true'");
                }
                if (orgAdministrationFeatures.getTonzhiGongGao()!=null){
                    SET("TonzhiGongGao='true'");
                }
                if (orgAdministrationFeatures.getTuiWuAnZhi()!=null){
                    SET("TuiWuAnZhi='true'");
                }
                if (orgAdministrationFeatures.getWangshangBanshi()!=null){
                    SET("WangshangBanshi='true'");
                }
                if (orgAdministrationFeatures.getYouDaiFuXu()!=null){
                    SET("YouDaiFuXu='true'");
                }
            }}.toString();
        }
    }

    //删除民政子功能sql
    @UpdateProvider(type = DeleteMicroservice.class,method = "deleteymicroservice")
    public int deleteMicroservice(OrgAdministrationFeatures orgAdministrationFeatures);
    class DeleteMicroservice{
        public String deleteymicroservice(OrgAdministrationFeatures orgAdministrationFeatures){
            return new SQL(){{
                UPDATE("org_administration_features");

                if(orgAdministrationFeatures.getJiuZaiJuiZhi() != null){
                    SET("JiuZaiJuiZhi='false'");
                }
                if (orgAdministrationFeatures.getMinzhengDongTai()!=null){
                    SET("MinzhengDongTai='false'");
                }
                if (orgAdministrationFeatures.getMinzhengKanWu()!=null){
                    SET("MinzhengKanWu='false'");
                }
                if (orgAdministrationFeatures.getTeKunGongYang()!=null){
                    SET("TeKunGongYang='false'");
                }
                if (orgAdministrationFeatures.getTonzhiGongGao()!=null){
                    SET("TonzhiGongGao='false'");
                }
                if (orgAdministrationFeatures.getTuiWuAnZhi()!=null){
                    SET("TuiWuAnZhi='false'");
                }
                if (orgAdministrationFeatures.getWangshangBanshi()!=null){
                    SET("WangshangBanshi='false'");
                }
                if (orgAdministrationFeatures.getYouDaiFuXu()!=null){
                    SET("YouDaiFuXu='false'");
                }
            }}.toString();
        }
    }
}
