package com.klef.jfsd.springboot.gender.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.gender.model.Admin;
import com.klef.jfsd.springboot.gender.model.QuizAnswers;
import com.klef.jfsd.springboot.gender.service.AdminService;
import com.klef.jfsd.springboot.gender.service.QuizService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
	
	@Autowired
	public AdminService adminService;

	@GetMapping("/adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv = new ModelAndView();
	       mv.setViewName("adminLogin");
	       return mv;
	}
	 @PostMapping("checkadminlogin")
	  public ModelAndView checkadminlogin(HttpServletRequest request)
	     {
	       
	       ModelAndView mv = new ModelAndView();

	       String auname = request.getParameter("auname");
	       String apwd = request.getParameter("apwd");
	       
	       Admin admin = adminService.checkAdminLoginFromRepository(auname, apwd);
	       
	         if(admin != null) {
	          mv.setViewName("adminHome");          
	         }
	         else {
	           mv.setViewName("adminloginfail");
	           mv.addObject("message", "Login Fail");
	         }
	         return mv;
	     }
	  
	  
	     @GetMapping("adminHome")
	        public ModelAndView adminhome()
	        {
	          ModelAndView mv = new ModelAndView();
	          mv.setViewName("adminHome");
	          
	         // long count = adminService.empcount();
	          //mv.addObject("count", count);
	          return mv;
	        }

	   //  /complets here
	     
	     
	     ///---this is not not there no need ot use
	     @GetMapping("adminlogout")
	     public ModelAndView adminlogout()
	     {
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("adminLogin");
	       return mv;
	     }
	     
	     @Autowired
	     private QuizService quizService;

	     // Other existing methods...

	     @PostMapping("/submitQuiz")
	     public ModelAndView submitQuiz(@ModelAttribute QuizAnswers quizAnswers) {
	         // Save the quiz answers using the service
	         QuizService.saveQuizAnswers(quizAnswers);

	         // After saving, show a result or success page
	         ModelAndView mv = new ModelAndView();
	         mv.setViewName("quizResult"); // Redirect to a result page
	         mv.addObject("quizAnswers", quizAnswers); // Pass the answers to the result page
	         return mv;
	     }
}
