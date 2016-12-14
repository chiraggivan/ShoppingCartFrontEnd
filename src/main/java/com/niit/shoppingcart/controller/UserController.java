package com.niit.shoppingcart.controller;

import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.annotations.common.util.impl.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcartbackend.dao.UserDAO;

import com.niit.shoppingcartbackend.model.User;
import com.niit.shoppingcartbackend.model.*;
import com.niit.shoppingcartbackend.dao.*;

@Controller
public class UserController {

	//public static Logger log = LoggerFactory.getLogger(UserController.class);
	@Autowired
	UserDAO userDAO;
	@Autowired
	User user;
	
//	private CartDAO cartDAO;
	
	//private Cart cart;
	
	private CategoryDAO categoryDAO;
	
	private Category category;
	
	private SupplierDAO supplierDAO;
	
	private Supplier supplier;
	
	private ProductDAO productDAO;
	
	private Product product;
	
	
	
	@RequestMapping(value = "/validate", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("User")User u, HttpSession session)//@RequestParam(value="username") String userID,@RequestParam(value="password") String password
	{
		//log.debug("starting of the method login");
		
		ModelAndView mv;
		boolean isuser;
		isuser= userDAO.isValidUser(u.getId(),u.getPassword());
		// if user exist will return detail of user , else return null
		
		if(isuser)
		{
			mv = new ModelAndView("redirect:/index");
			//	log.debug("valid user login detail");
			user = userDAO.get(u.getId());
			session.setAttribute("loggedInUser", user.getName());
			session.setAttribute("loggedInUserId", user.getId());
			
			session.setAttribute("user", user);
			//mv.addObject("loggedOut",false);
			mv.addObject("loggedInUserId",user.getId());
			return mv;
			/*if (user.isAdminrole()==true)
			{
			//	log.debug("logged in as admin");
				mv.addObject("isAdmin","true");
				session.setAttribute("supplier", supplier);
				session.setAttribute("supplierList", supplierDAO.list());
				
				session.setAttribute("category", category);
				session.setAttribute("categoryList", categoryDAO.list());
				
			}
			else
			{
				//log.debug("logged in as user");
				mv.addObject("isAdmin","false");
				//cart = cartDAO.get(userID);
				//mv.addObject("cart", cart);
				
		//		mv.addObject("cartList", cartList);
			//	mv.addObject("cartSize",cartList.size());
			}*/
		}
		else
			{
				//log.debug("Invalid credentials");
			    mv = new ModelAndView("/signin");
				mv.addObject("invalidCredentials", "true");
				mv.addObject("errorMessage", "Invalid user name or password. Please try again.");
				return mv;
			}
			//log.debug("End of method login");
			//return mv;
				
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request, HttpSession session)
	{
		//log.debug("starting of the method logout");
		ModelAndView mv = new ModelAndView("redirect:/index");
		if(!(session.isNew()))
		{
		session.invalidate();
		}
		else
		{
		session = request.getSession(true);
		}
		//session.setAttribute("category", category);
		//session.setAttribute("categoryList", categoryDAO.list());
		
		mv.addObject("logoutMessage", "You successfully logged out");
		mv.addObject("loggedOut", true);
		//log.debug("end of the method logout");
		return mv;
	}
	
	
	@RequestMapping(value ="/register", method = RequestMethod.GET)
	public ModelAndView registerUser(User u,BindingResult result)
	{
		//log.debug("starting of the method registerUser");
		u=user;
		BillingAddress billingAddress = new BillingAddress();
		OneShippingAddress oneShippingAddress = new OneShippingAddress();
		u.setBillingAddress(billingAddress);
		u.setOneShippingAddress(oneShippingAddress);
		ModelAndView mv = new ModelAndView("register");
		mv.addObject("User",u);
		//log.debug("End of the method registerUser");
		return mv;
	}
	
	
	@RequestMapping(value ="/register", method = RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute("User") User user)
	{
		//log.debug("starting of the method registerUser");
		ModelAndView mv = new ModelAndView("/");
		if (userDAO.get(user.getId())==null)
		{
			user.setAdminrole("ROLE_USER");
			userDAO.save(user);
			//log.debug("user successfully registered");
			mv.addObject("successMessage", "You are successfully registered");
			
		}
		else
		{
			//log.debug("user exit with this id");
			mv.addObject("errorMessage", "Sorry. This id already taken. please try something else.");
			
		}
		//log.debug("End of the method registerUser");
		return mv;
	}
	
	@RequestMapping(value="/loginError", method = RequestMethod.GET)
	public String loginError (Model model)
	{
		//log.debug("starting of the method loginError");
		model.addAttribute("errorMessage", "Login Error");
		//log.debug("end of the method loginError");
		return "index";
	}
	
	@RequestMapping(value="/accessDenied", method = RequestMethod.GET)
	public String accessDenied (Model model)
	{
		//log.debug("starting of the method accessDenied");
		model.addAttribute("errorMessage", "You are not authorised to access this page.");
		//log.debug("end of the method accessDenied");
		return "index";
	}
}
