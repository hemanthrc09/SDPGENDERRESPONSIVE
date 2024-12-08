package com.klef.jfsd.springboot.gender.service;


import com.klef.jfsd.springboot.gender.model.Counsellor;

public interface CounsellorService {
	public static Counsellor checkThecounsellorLoginFromRepository(String cemail, String cpwd) {
		// TODO Auto-generated method stub
		return null;
	}
	 public String counsellorRegistration(Counsellor c);
	public Counsellor checkCounsellorLoginFromRepository(String cemail, String cpwd);

}
