package com.techouts.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.techouts.pojo.UserPojo;
import com.techouts.service.LogRegService;

@Controller
public class RegistartionController {
	@Autowired
	private	LogRegService service;
			
	@RequestMapping(value="/reg")
	public ModelAndView homepage(){

		/*EmployeePojo emp= new EmployeePojo();*/
		/*emp=null;*/
		return new ModelAndView("register","user",new UserPojo());		
	}
			
			
	@RequestMapping(value="/register",method=RequestMethod.POST)  
	public ModelAndView empreg(@ModelAttribute("user") UserPojo user,HttpServletRequest request,HttpServletResponse res) {
	
		ModelAndView model= null;
    	Boolean rv;
    	rv=service.getregistrationservice(user);
    	System.out.println("register controller"+rv);
    	UserPojo userPojo= new UserPojo();
    	if(rv){
    		System.out.println("User registration Successful");
			model= new ModelAndView("login","user",userPojo);
    	}
    	else{
    		System.out.println(" registration fail");
    		model= new ModelAndView("register", "msg","Sorry,registartion failed");
    	}
		return model;
	}
		

}