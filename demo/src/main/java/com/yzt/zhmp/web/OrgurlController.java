package com.yzt.zhmp.web;

import com.yzt.zhmp.beans.OrgAdministrationFeatures;
import com.yzt.zhmp.beans.OrgFeatures;
import com.yzt.zhmp.beans.Orgurl;
import com.yzt.zhmp.beans.PoliceFeatures;
import com.yzt.zhmp.service.*;
import com.yzt.zhmp.utils.ListFeatures;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import net.sf.json.JSONArray;

import java.util.ArrayList;
import java.util.List;


@Controller
public class OrgurlController {
    @Autowired
    private OrgulService orgulService;

    @Autowired
    private MinZhengMicroserviceService minZhengMicroserviceService;
    @Autowired
    private PoliceFeaturesService policeFeaturesService;
    @Autowired
    private OrgFeaturesService orgFeaturesService;
    @RequestMapping("a")
    public ModelAndView a(){
       Orgurl orgurl= orgulService.selectOrgUrlByCode("330727");
       //获取功能模块状态数据

        ModelAndView modelAndView=new ModelAndView();
        //民政
        List list=orgFeaturesService.selectOrgFeatures();
        modelAndView.addObject("fList",list);
        //公安
        List policeList=policeFeaturesService.selectPoliceFeature();
        System.out.println(policeList);
        modelAndView.addObject("policeList",policeList);
        //url
        modelAndView.addObject("url",orgurl);
        System.out.println(orgurl);

        modelAndView.setViewName("a/a");
        return modelAndView;
    }

    //显示后台启用的模块
    @RequestMapping("navigation")
    public ModelAndView navigationFeatures(){
        ModelAndView modelAndView=new ModelAndView();
        //显示民政功能
        List list=orgFeaturesService.selectOrgFeatures();
        modelAndView.addObject("fList",list);
        //显示公安模块功能

        List policeList=policeFeaturesService.selectPoliceFeature();
        System.out.println(policeList);
        modelAndView.addObject("policeList",policeList);

        modelAndView.setViewName("navigation/navigation");
        return modelAndView;
    }
    //显示民政未启用的模块
    @RequestMapping("MinZhengaddmicroservice")
    public ModelAndView minZhengFeatures(){

        ModelAndView modelAndView=new ModelAndView();
        List list=orgFeaturesService.selectOrgFeatures();
        modelAndView.addObject("fList",list);


        modelAndView.setViewName("microservice/MinZhengaddmicroservice");

        return modelAndView;
    }


    //添加民政功能模块  数据库相对应的状态
    @RequestMapping("AddFeatures")
    @ResponseBody
    public int XiuGaiFeatures(String link_id){
        ArrayList arrayList=new ArrayList();
        //把json存入list
        JSONArray jsonArray=JSONArray.fromObject(link_id);
        for (int i=0;i<jsonArray.size();i++){
            arrayList.add(jsonArray.get(i));
        }

        //调用service修改数据库
        int i=orgFeaturesService.onOrgFeatures(arrayList);

        return i;
    }
    //进入删除民政子功能模块页面
    @RequestMapping("MinZhengDeleteFeatures")
    public ModelAndView minZhengDeleteFeatures(){
        ModelAndView modelAndView=new ModelAndView();
        List list=orgFeaturesService.selectOrgFeatures();
        modelAndView.addObject("fList",list);
        modelAndView.setViewName("microservice/MinZhengDelemicroservice");
        return modelAndView;
    }
    //删除民政子功能模块
    @RequestMapping("DeleteFeatures")
    @ResponseBody
     public int deleteFeatures(String link_id){
        ArrayList arrayList=new ArrayList();
        System.out.println(link_id);
        //把json存入list
        JSONArray jsonArray=JSONArray.fromObject(link_id);
        System.out.println(jsonArray);
        for (int i=0;i<jsonArray.size();i++){
            arrayList.add(jsonArray.get(i));
        }

        System.out.println(arrayList);
        int i=orgFeaturesService.offOrgFeatures(arrayList);
        System.out.println(i);
        return i;
     }
}
