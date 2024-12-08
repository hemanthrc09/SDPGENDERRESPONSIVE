package com.klef.jfsd.springboot.gender.service;

import java.util.List;

import com.klef.jfsd.springboot.gender.model.Counsellor;
import com.klef.jfsd.springboot.gender.model.User;
import com.klef.jfsd.springboot.gender.model.Admin;


public interface AdminService
{
	public List<Counsellor> viewAllCounsellors();
	public List<User> viewAllUsers();
	public Admin checkAdminLoginFromRepository(String uname, String pwd);

}
