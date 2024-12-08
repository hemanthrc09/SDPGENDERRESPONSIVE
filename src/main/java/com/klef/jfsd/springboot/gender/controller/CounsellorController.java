package com.klef.jfsd.springboot.gender.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.gender.model.Counsellor;
import com.klef.jfsd.springboot.gender.service.CounsellorService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class CounsellorController {

    @Autowired
    private CounsellorService counsellorService;

    /**
     * Displays the counselor registration page.
     */
    @GetMapping("counsellorReg")
    public ModelAndView showCounsellorRegistrationForm() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("counsellorReg");
        return mv;
    }

    /**
     * Handles counselor registration.
     */
    @PostMapping("/insertCounsellor")
    public ModelAndView registerCounsellor(HttpServletRequest request) {
        String name = request.getParameter("cname");
        String gender = request.getParameter("cgender");
        String dob = request.getParameter("cdob");
        String email = request.getParameter("cemail");
        String password = request.getParameter("cpwd");
        String contact = request.getParameter("ccontact");
        String status = "Registered";

        // Create a new Counsellor object and populate its fields
        Counsellor counsellor = new Counsellor();
        counsellor.setName(name);
        counsellor.setGender(gender);
        counsellor.setDateofbirth(dob);
        counsellor.setEmail(email);
        counsellor.setPassword(password);
        counsellor.setContact(contact);
        counsellor.setStatus(status);

        // Save the counselor to the database
        String message = counsellorService.counsellorRegistration(counsellor);

        // Redirect to success page with a success message
        ModelAndView mv = new ModelAndView("counsellorRegistrationSuccess");
        mv.addObject("message", message);

        return mv;
    }

    /**
     * Displays the counselor login page.
     */
    @GetMapping("counsellorlogin")
    public ModelAndView showCounsellorLoginForm() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("counsellorLogin");
        return mv;
    }

    /**
     * Handles counselor login.
     */
    @PostMapping("counsellorloginfail")
    public ModelAndView checkCounsellorLogin(HttpServletRequest request) {
        String email = request.getParameter("cemail");
        String password = request.getParameter("cpwd");

        // Check login credentials
        Counsellor counsellor = counsellorService.checkCounsellorLoginFromRepository(email, password);

        ModelAndView mv = new ModelAndView();

        if (counsellor != null) {
            mv.setViewName("counsellorhome"); // Redirect to home page on successful login
        } else {
            mv.setViewName("counsellorLogin");
            mv.addObject("message", "Invalid Email or Password! Please try again."); // Display login failure message
        }

        return mv;
    }

    /**
     * Displays the counselor home page.
     */
    @GetMapping("counsellorhome")
    public ModelAndView showCounsellorHome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("counsellorHome");
        return mv;
    }

    /**
     * Handles counselor logout.
     */
    @GetMapping("counsellorlogout")
    public ModelAndView logoutCounsellor() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("counsellorLogin");
        return mv;
    }
}
