package com.techouts.controllers;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.techouts.pojo.UserPojo;
import com.techouts.service.LogRegService;

@Controller
public class LoginController {

		@Autowired
		private	LogRegService logregService;
		
		@RequestMapping(value="/log")
		public ModelAndView homepage(){
			
			UserPojo user= new UserPojo();
			
			return new ModelAndView("login","user",user);
		}
		
		@RequestMapping(value="/logout")
		public ModelAndView logout(HttpServletRequest req, HttpServletResponse res){
			HttpSession session=req.getSession();
			session.invalidate();
			System.out.println("logout controller");
			return new ModelAndView("homepage","msg","logout successfully");
		}
		
		
    @RequestMapping(value="/login",method=RequestMethod.GET)  
    public ModelAndView loginvalidate(@ModelAttribute("user") UserPojo user,HttpServletRequest req,HttpServletResponse res) {  
     
        ModelAndView model= null;
    	List<UserPojo> userlist;
		try {
			userlist = logregService.getloginservice(user);
			System.out.println("result"+userlist);
			if(userlist.isEmpty()){
				model= new ModelAndView("login", "msg","Sorry, username or password error");
	        }
		else{
			System.out.println("User Login Successful");
        	HttpSession session=req.getSession();
        	session.setAttribute("userList", userlist);
            model = new ModelAndView("checkout");
			}
		} 
		
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		return model;
	

    }
}
