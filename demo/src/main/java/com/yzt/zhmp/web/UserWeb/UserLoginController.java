package com.yzt.zhmp.web.UserWeb;

import com.yzt.zhmp.beans.UserCounty;
import com.yzt.zhmp.service.OrgFeaturesService;
import com.yzt.zhmp.service.PoliceFeaturesService;
import com.yzt.zhmp.service.UserService.UserLoginService;
import com.yzt.zhmp.utils.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author wang
 */
@Controller
public class UserLoginController {

    @Autowired
    UserLoginService userLoginService;
    @Autowired
    private PoliceFeaturesService policeFeaturesService;
    @Autowired
    private OrgFeaturesService orgFeaturesService;


    @RequestMapping("/userLogin")
    public String userLogin(UserCounty userCounty, Model model){
        //MD5密码处理
        String password = userCounty.getPassword();
        String s = MD5Utils.md5(password);
        userCounty.setPassword(s);
        UserCounty existUser=userLoginService.login(userCounty);
        //民政
        List minzhenList=orgFeaturesService.selectOrgFeatures();
        //公安
        List policeList=policeFeaturesService.selectPoliceFeature();

        System.out.println(policeList);
        if (existUser==null){
            model.addAttribute("error","账号或密码错误");
            return "login/login";
        }else {
            model.addAttribute("existUser",existUser);
            model.addAttribute("policeList",policeList);
            model.addAttribute("fList",minzhenList);
        }
        return "navigation/navigation";
    }
}
