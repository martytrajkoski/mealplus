package com.example.mealPlus.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired private UserRepository repo;

    public List<UserEntity> listAll(){
        return (List<UserEntity>) repo.findAll();


    }
}
