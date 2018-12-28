package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.spring.domain.User;
import com.spring.repositories.UserRepository;
import com.spring.security.Authority;

@Service
public class AdminService
{
	@Autowired
	  private UserRepository userRepo;
	  
	  @Autowired
	  private PasswordEncoder passwordEncoder;
	  
	  public User save (User user) {
		    String encodedPassword = passwordEncoder.encode(user.getPassword());
		    user.setPassword(encodedPassword);
		    
		    Authority authority = new Authority();
		    authority.setAuthority("ROLE_ADMIN");
		    authority.setUser(user);
		    user.getAuthorities().add(authority);
		    return userRepo.save(user);
		  }
		  
}
