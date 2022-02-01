package com.example.mealPlus.user;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<UserEntity, Integer> {
    @Query("SELECT u FROM UserEntity u WHERE u.email = ?1")
    public UserEntity findByEmail(String email);
}
