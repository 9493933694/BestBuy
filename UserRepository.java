package com.example;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserRepository extends JpaRepository<User,Long> {

	@Query("SELECT u FROM users u WHERE u.email=?1")
	User  findByEmail(String email);
}