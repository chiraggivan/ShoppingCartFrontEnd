package com.niit.shoppingcart.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String index() {
		
		return "index";
	}

	@RequestMapping("/signin")
	public ModelAndView login() {
		
		ModelAndView mv = new ModelAndView("index");

		mv.addObject("userClickedLogin", "true");
		return mv;
	}

	@RequestMapping("/register")
	public String register(Model model) {

		model.addAttribute("userClickedregistration", "true");
		return "index";
	}

	@RequestMapping("/validate")
	public String validatelogin(@RequestParam(name="userid") String id, @RequestParam(name="pswd") String pwd, Model model, HttpSession session) {
		
		if (id.equals("niit") && pwd.equals("niit"))
		{
			model.addAttribute("successMessage", "you logged in!! Damnnn....");
			session.setAttribute("successMessage", "you logged in!! Damnnn....");
			return "index";
		}
		else
		{
			model.addAttribute("errorMessage", "sorry mate! try again");
			return "index";
		}
		
		
	}

}
