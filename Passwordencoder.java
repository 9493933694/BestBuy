package com.example;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
public class Passwordencoder {

	public static void main(String[] args) {
		 BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		 String rawPassword = "Lilly123";
		 String encodedPassword = passwordEncoder.encode(rawPassword);
		 System.out.println(encodedPassword);


	}

}
