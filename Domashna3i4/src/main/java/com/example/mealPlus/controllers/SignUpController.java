package com.example.mealPlus.controllers;

import com.example.mealPlus.user.UserEntity;
import com.example.mealPlus.user.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class SignUpController {
    @Autowired
    private UserRepository repo;
    //method to get signup form
    @GetMapping("/signup")
    public String signUpPage(Model model){
        model.addAttribute("user", new UserEntity());
        return "signup";
    }
    @PostMapping("/index")
    public String processRegistration(UserEntity user){
        repo.save(user);

        return "index";
    }



}
