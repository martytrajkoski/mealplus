package com.example.mealPlus.controllers;

import com.example.mealPlus.user.UserEntity;
import com.example.mealPlus.user.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;


import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class LoginController {
    @Autowired
    private UserRepository repo;

    @GetMapping("/login")
    public String loginPage(Model model){
        model.addAttribute("user", new UserEntity());
        return "login";
    }

    @PostMapping("/login")
    public String processLogIn(UserEntity user){
        repo.save(user);

        return "login";
    }
}

