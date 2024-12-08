package com.klef.jfsd.springboot.gender.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.gender.model.User;
import com.klef.jfsd.springboot.gender.service.UserService;

import jakarta.servlet.http.HttpServletRequest;



@Controller
public class UserController {

	
	@Autowired
	  public UserService userService;
	    
	   
	    @GetMapping("userreg")
	    public ModelAndView userreg() {
	        ModelAndView mv = new ModelAndView();
	          mv.setViewName("userReg");
	          return mv;
	    }
	    
	    @PostMapping("/insertuser")
	    public ModelAndView registeruser(HttpServletRequest request)
	    {
	     String name = request.getParameter("uname");
	     String gender = request.getParameter("ugender");
	     String dob = request.getParameter("udob");
	     String email = request.getParameter("uemail");
	     String password = request.getParameter("upwd");
	     String contact = request.getParameter("ucontact");
	     
	       User u = new User();
	       u.setName(name);
	       u.setGender(gender);
	       u.setDateofbirth(dob);
	       u.setEmail(email);
	       u.setPassword(password);
	       u.setContact(contact);
	       
	       String message = userService.UserRegistration(u);
	       
	       ModelAndView mv = new ModelAndView("userRegistrationsuccess");
	       mv.addObject("message", message);
	     
	       return mv;
	    }
	    @GetMapping("userlogin")
	       public ModelAndView userlogin()
	       {
	         ModelAndView mv = new ModelAndView();
	         mv.setViewName("userLogin");
	         return mv;
	       }
	    @PostMapping("userloginfail")
	    public ModelAndView checkuserlogin(HttpServletRequest request)
	       {
	         
	         ModelAndView mv = new ModelAndView();

	         String uemail = request.getParameter("uemail");
	         String upwd = request.getParameter("upwd");
	         
	         User user = userService.checkTheUserLoginFromRepository(uemail, upwd);
	         
	           if(user != null) {
	            mv.setViewName("userhome");        
	            
	           }
	           else {
	             mv.setViewName("userloginfail");
	             mv.addObject("message", "Login Fail");
	           }
	           return mv;
	       }
	    
	    
	       @GetMapping("userhome")
	          public ModelAndView userhome()
	          {
	            ModelAndView mv = new ModelAndView();
	            mv.setViewName("userhome");
	            
	            return mv;
	          }
	       @GetMapping("userlogout")
	       public ModelAndView userlogout()
	       {
	         ModelAndView mv = new ModelAndView();
	         mv.setViewName("userLogin");
	         return mv;
	       }
	    
	    
	    
}