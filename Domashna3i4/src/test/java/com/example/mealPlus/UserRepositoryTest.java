package com.example.mealPlus;

import com.example.mealPlus.user.UserEntity;
import com.example.mealPlus.user.UserRepository;

import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.annotation.Rollback;

import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;

@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
@Rollback(false)
public class UserRepositoryTest {
    @Autowired
    private UserRepository repo;

    @Test
    public void testAddNew(){
        UserEntity user = new UserEntity();
        user.setEmail("frosecvetkovska@gmail.com");
        user.setPassword("mealplus1234");
        user.setFirstName("Frosina");
        user.setLastName("Cvetkovska");
        user.setEmail("mealplus@gmail.com");
        user.setPassword("mealplus1234");
        user.setFirstName("Mealplus");
        user.setLastName("Mealplus");

        UserEntity savedUser = repo.save(user);
        assertThat(savedUser).isNotNull();
        assertThat(savedUser.getId()).isGreaterThan(0);
    }

    @Test
    public void testListAll(){
        Iterable<UserEntity> users = repo.findAll();
        assertThat(users).hasSizeGreaterThan(0);

        for(UserEntity user : users){
            System.out.println(user);
        }
    }

    @Test
    public void testUpdate(){
        Integer userId=1;
        Optional<UserEntity> optionalUser = repo.findById(userId);
        UserEntity user = optionalUser.get();
        user.setPassword("hello2022");
        repo.save(user);

        UserEntity updatedUser = repo.findById(userId).get();
        assertThat(updatedUser.getPassword()).isEqualTo("hello2022");
    }

    @Test
    public void testGet(){
        Integer userId=2;
        Optional<UserEntity> optionalUser = repo.findById(userId);
        assertThat(optionalUser).isPresent();
        System.out.println(optionalUser.get());
    }
    @Test
    public void testDelete(){
        Integer userId=2;
        repo.deleteById(userId);

        Optional<UserEntity> optionalUser = repo.findById(userId);
        assertThat(optionalUser).isNotPresent();

    }

}
