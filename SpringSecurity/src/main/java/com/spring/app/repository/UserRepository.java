package com.spring.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.spring.app.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

}
