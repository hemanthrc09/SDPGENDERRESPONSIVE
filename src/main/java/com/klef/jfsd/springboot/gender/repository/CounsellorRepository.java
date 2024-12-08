package com.klef.jfsd.springboot.gender.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.gender.model.Counsellor;



@Repository
public interface CounsellorRepository extends JpaRepository<Counsellor, Integer>
{

	@Query("select c from Counsellor c where c.email=?1 and c.password=?2 ")
	
	public Counsellor checkCounsellorLogin(String email, String password);
	
}