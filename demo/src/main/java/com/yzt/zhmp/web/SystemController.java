package com.yzt.zhmp.web;

import com.yzt.zhmp.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class SystemController {
    @Autowired
    private SystemService systemService;
    //首页显示
    @RequestMapping("system")
    public ModelAndView system(){
        ModelAndView modelAndView=new ModelAndView();
        List systemList=systemService.selectSystem();
        System.out.println(systemList);
        modelAndView.addObject("systemList",systemList);
        modelAndView.setViewName("a/system");
        return modelAndView;
    }

    //后台显示
    @RequestMapping("systemnavigation")
    public ModelAndView systemnavigation(){
        ModelAndView modelAndView=new ModelAndView();
        List systemList=systemService.selectSystem();
        System.out.println(systemList);
        modelAndView.addObject("systemList",systemList);
        modelAndView.setViewName("navigation/newnavigation");
        return modelAndView;
    }
}
