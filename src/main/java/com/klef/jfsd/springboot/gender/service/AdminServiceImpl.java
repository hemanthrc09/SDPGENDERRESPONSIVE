package com.klef.jfsd.springboot.gender.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.gender.model.Admin;
import com.klef.jfsd.springboot.gender.model.Counsellor;
import com.klef.jfsd.springboot.gender.model.User;
import com.klef.jfsd.springboot.gender.repository.AdminRepository;
import com.klef.jfsd.springboot.gender.repository.CounsellorRepository;
import com.klef.jfsd.springboot.gender.repository.UserRepository;



@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	public AdminRepository adminRepository;
	
	@Autowired
	public UserRepository userRepository;
	
	@Autowired
	public CounsellorRepository counsellorRepository;


	

	@Override
	public List<Counsellor> viewAllCounsellors() {

		return counsellorRepository.findAll();
	}

	@Override
	public List<User> viewAllUsers() {
		
		return userRepository.findAll();
	}

	@Override
	public Admin checkAdminLoginFromRepository(String uname, String pwd) {
		
		return adminRepository.checkAdminLogin(uname, pwd);
	}

}
