package com.yzt.zhmp.web;

import com.yzt.zhmp.beans.PoliceFeatures;
import com.yzt.zhmp.service.PoliceFeaturesService;
import com.yzt.zhmp.utils.ListFeatures;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class PoliceController {
    @Autowired
    private PoliceFeaturesService policeFeaturesService;
    //跳转到增加添加公安部门模块页面
    @RequestMapping("PoliceAddmicroservice")
    public ModelAndView policeaddFeatures(){
        ModelAndView modelAndView=new ModelAndView();
        List policeList=policeFeaturesService.selectPoliceFeature();
        System.out.println(policeList);
        modelAndView.addObject("policeList",policeList);
        modelAndView.setViewName("microservice/PoliceAddFeatures");
        return modelAndView;
    }

    //添加未启用的公安模块
    @RequestMapping("addPoliceFeatures")
    @ResponseBody
    public int addPoliceFeatures(String link_id){
        ArrayList arrayList=new ArrayList();
        //把json存入list
        JSONArray jsonArray=JSONArray.fromObject(link_id);
        for (int i=0;i<jsonArray.size();i++){
            arrayList.add(jsonArray.get(i));
        }
        //ListFeatures listFeatures=new ListFeatures();
        //PoliceFeatures policeFeatures=listFeatures.policeFeatures(arrayList);
        //int i=policeFeaturesService.addPoliceFeatures(policeFeatures);
        System.out.println(arrayList);
        int i=policeFeaturesService.onPoliceFeature(arrayList);

        System.out.println(i);
        return i;
    }
    //进入删除公安模块功能页面
    @RequestMapping("policeDeleteFeatures")
    public ModelAndView PoliceDeleteFeatures(){
        ModelAndView modelAndView=new ModelAndView();
        List policeList=policeFeaturesService.selectPoliceFeature();
        System.out.println(policeList);
        modelAndView.addObject("policeList",policeList);
        modelAndView.setViewName("microservice/PoliceDeleteFeatures");
        return modelAndView;
    }

    //删除公安模块功能
    @RequestMapping("poliDeleteFeatures")
    @ResponseBody
    public int policeDeleteFeatures(String link_id){
        ArrayList arrayList=new ArrayList();
        //把json存入list
        JSONArray jsonArray=JSONArray.fromObject(link_id);
        for (int i=0;i<jsonArray.size();i++){
            arrayList.add(jsonArray.get(i));
        }
        //ListFeatures listFeatures=new ListFeatures();
        //PoliceFeatures policeFeatures=listFeatures.policeFeatures(arrayList);
        //int i=policeFeaturesService.deletePoliceFeatures(policeFeatures);
        System.out.println(arrayList);
        int i=policeFeaturesService.offPoliceFeature(arrayList);
        System.err.println(i);
        return i;
    }

}
