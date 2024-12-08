package com.klef.jfsd.springboot.gender.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.gender.model.Counsellor;
import com.klef.jfsd.springboot.gender.repository.CounsellorRepository;

@Service
public class CounsellorServiceImpl implements CounsellorService{

	@Autowired
	public CounsellorRepository counsellorRepository;
	
	@Override
	public Counsellor checkCounsellorLoginFromRepository(String cemail, String cpwd) {
		return counsellorRepository.checkCounsellorLogin(cemail, cpwd);
	}
	
   @Override
   public String counsellorRegistration(Counsellor c) {
	   counsellorRepository.save(c);
	   return "Counsellor Added Succesfully";
   }
}
