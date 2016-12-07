package com.niit.shoppingcart.controller;

import javax.servlet.http.HttpSession;

//import org.hibernate.annotations.common.util.impl.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcartbackend.dao.CategoryDAO;
import com.niit.shoppingcartbackend.dao.SupplierDAO;
import com.niit.shoppingcartbackend.dao.UserDAO;
import com.niit.shoppingcartbackend.model.Category;
import com.niit.shoppingcartbackend.model.Product;
import com.niit.shoppingcartbackend.model.Supplier;
import com.niit.shoppingcartbackend.model.User;


@Controller
public class HomeController {
	
	//public static Logger log = LoggerFactory.getLogger(UserController.class);
	
	/*@Autowired
	private Category category;
	
	@Autowired
	private Supplier supplier;
	
	@Autowired
	private Product product;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private SupplierDAO supplierDAO;
*/
	@Autowired
	private UserDAO userDao; 
	@Autowired
	private User user;
	@RequestMapping(value={"/","/index"})
	public ModelAndView onLoad(HttpSession session)
	{
		//log.debug("Starting of the method onLoad -- basically home page while loading");
		ModelAndView mv = new ModelAndView("index");
		//session.setAttribute("loggedOut",true);
		mv.addObject("loggedOut",true);
		mv.addObject("loggedInUserId",null);
		/*session.setAttribute("category", category);
		session.setAttribute("product", product);
		session.setAttribute("supplier", supplier);
		
		session.setAttribute("categoryList", categoryDAO.list());
		session.setAttribute("supplierList", supplierDAO.list());
		*/
		//log.debug("end of the method onLoad");
		return mv;
	}
		
	@RequestMapping("/signin")
	public ModelAndView signin(User u, BindingResult result) {
		
		//log.debug("starting of the method login");
		ModelAndView mv = new ModelAndView("login");
		u= new User();
		//mv.addObject("user", user);
		mv.addObject("UserClickedLogin", "true");
		mv.addObject("User",u);
		//log.debug("end of the method login");
		return mv;
		
	}
	/*
	@RequestMapping("/register")
	public ModelAndView register() {

		//log.debug("starting of the method register");
		ModelAndView mv = new ModelAndView("register");
		//mv.addObject("user", user);
		mv.addObject("userClickedregistration", "true");
		//log.debug("end of the method register");
		return mv;
	}
	
	@RequestMapping(value="/register" ,method=RequestMethod.POST)
	public String registered(Model model,@ModelAttribute("User")User user) {
		
		
		model.addAttribute("successMessage", "You have successfully registered. Thank you.");
		userDao.save(user);
		return "index";
	}

	@RequestMapping("/validate")
	public String validatelogin(@RequestParam(name="userid") String id, 
			@RequestParam(name="pswd") String pwd, Model model, HttpSession session) {
		
		if (id.equals("niit") && pwd.equals("niit"))
		{
			//model.addAttribute("successMessage", "you logged in!! Damnnn....");
			session.setAttribute("successMessage", "you logged in!! Damnnn....");
			return "index";
		}
		else
		{
			model.addAttribute("errorMessage", "sorry mate! try again");
			return "index";
		}	
	}
	
	@RequestMapping("/signout")
	public String logut(HttpSession session) {
		
		session.removeAttribute("successMessage");
		return "index";
	}
	*/
}
