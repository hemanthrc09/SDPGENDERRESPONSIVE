package com.klef.jfsd.springboot.gender.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.gender.model.User;
import com.klef.jfsd.springboot.gender.repository.UserRepository;


@Service
public class UserServiceImpl implements UserService{

	  @Autowired
	  public UserRepository userRepository;

	@Override
	public User checkTheUserLoginFromRepository(String uemail, String upwd) {
		
		return userRepository.checkUserLogin(uemail, upwd);
	}

	@Override
	public String UserRegistration(User u) {
		userRepository.save(u);
		return "User Added Successfully";
	}
	  
	  
}
