package com.example.mealPlus;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage(){
        return "login";
    }
    @RequestMapping(value ="/login", method = RequestMethod.POST)
    public String indexPage(ModelMap model, @RequestParam String userMail, @RequestParam String password){
        if(userMail.equals("admin") && password.equals("root")){
            return "index";
        }
        model.put("errorMsg", "Погрешко корисничко име или лозинка");
            return "login";
    }
}
