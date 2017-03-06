package com.techouts.controllers;

import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.techouts.pojo.CategoryPojo;
import com.techouts.pojo.UserPojo;
import com.techouts.service.NavigationService;

@Controller
public class HomeController {
	
	@Autowired
	private	NavigationService navService;
	
	ModelAndView model= null;
	

	@RequestMapping(value="/home")
	public String homepage(HttpServletRequest req,HttpSession session){
		System.out.println(" home controller1");
		
		// navigation method calling
		Map<String, List<CategoryPojo>> catMap=navService.getServiceCategory();
		System.out.println(catMap);
		System.out.println(" home controller2");
		
		ServletContext context=session.getServletContext();
		context.setAttribute("categoryMap",catMap);
		return "homepage";
	}
	
	@RequestMapping(value="/home1")
	public String homepage1(HttpServletRequest req,HttpSession session){
		System.out.println("  another home controller");
		return "welcome";
	}
		
//	@RequestMapping(value="/check")
//	public String homepage2(HttpServletRequest req,HttpSession session){
//		System.out.println("  Checkout");
//		return "check";
//	}
//	@RequestMapping(value="/order")
//	public String order(HttpServletRequest req,HttpSession session){
//		String email=req.getParameter("email");
//		
//		System.out.println("  Order "+email);
//		ServletContext context=session.getServletContext();
//		context.setAttribute("email",email);
//		return "order";
//	}
	
	@RequestMapping(value = "/check", method = RequestMethod.GET)
	  public ModelAndView user() {
		System.out.println("Checkout");
	    return new ModelAndView("checkout", "command", new UserPojo());
	   }

	@RequestMapping(value = "/order", method = RequestMethod.POST)
	  public String addUser(@ModelAttribute("Web")UserPojo user, ModelMap model) {
		System.out.println("Order");
			model.addAttribute("email", user.getEmail());
			model.addAttribute("firstname", user.getFirstname());
			model.addAttribute("lastname", user.getLastname());
			model.addAttribute("address", user.getAddress());
			model.addAttribute("mobile", user.getMobile());
			return "order";
	}
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	  public String error(@ModelAttribute("Web")UserPojo user, ModelMap model) {
		System.out.println("403");
			model.addAttribute("email", user.getEmail());
			return "403";
			   }
}
