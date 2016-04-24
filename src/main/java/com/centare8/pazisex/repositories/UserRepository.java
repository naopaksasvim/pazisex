package com.centare8.pazisex.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.centare8.pazisex.entities.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity, Integer>{

}
