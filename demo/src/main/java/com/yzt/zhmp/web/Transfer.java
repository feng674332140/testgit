package com.yzt.zhmp.web;

import com.yzt.zhmp.beans.OrgAdministrationFeatures;
import com.yzt.zhmp.service.OrgAdministrationFeaturesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


//实现jsp中转
@Controller
public class Transfer {
    @Autowired
    private OrgAdministrationFeaturesService orgAdministrationFeaturesService;
    @RequestMapping("login")
    public String login(){
        return "login/login";
    }
    //后台管理中转
    //@RequestMapping("navigation")
    //public String navigation(){
    //    return "navigation/navigation";
    //}
    //注册中转
    @RequestMapping("regist")
    public String regist(){
        return "login/regist";
    }

}
