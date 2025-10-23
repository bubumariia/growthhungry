package com.example.helloapp.repository;

import com.example.helloapp.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    // You can add custom queries later, e.g.:
    // Optional<User> findByUsername(String username);
}
