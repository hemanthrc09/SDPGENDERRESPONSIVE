package com.klef.jfsd.springboot.gender.service;

import com.klef.jfsd.springboot.gender.model.User;

public interface UserService {
	public User checkTheUserLoginFromRepository(String uemail,String upwd);
	  public String UserRegistration(User u);

}
