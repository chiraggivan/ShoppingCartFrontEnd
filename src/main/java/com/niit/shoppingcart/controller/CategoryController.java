/*package com.niit.shoppingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndViewDefiningException;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.model.Category;

@Controller
public class CategoryController {
	
	//public static Logger log = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private Category category;
	
	@RequestMapping(value="/manage_categories", method = RequestMethod.GET)
	public String ListCategories(Model model)
	{
	//	log.debug("starting of the method listCategories");
		model.addAttribute("category", category);
		model.addAttribute("categoryList", categoryDAO.list());
		model.addAttribute("isAdminClickedCategories", "true");
	//	log.debug("END of the method listCategories");
		return "/index";
	}
	
	@RequestMapping(value="/manage_category_add", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category category, Model model)
	{
	//	log.debug("starting of the method addCategory");
	//	log.debug("category id : "+ category.getId());
		if (categoryDAO.save(category)== true){
			model.addAttribute("msg", "successfully created/updated the category");
		}else{
			model.addAttribute("msg", "not able to create/update the category");
		}
		model.addAttribute("category", category);
		model.addAttribute("categoryList", categoryDAO.list());
		model.addAttribute("isAdminClickedCategories", "true");
	//	log.debug("END of the method addCategory");
		return "/index";
	}
	
	@RequestMapping(value="/manage_category_add/{id}")
	public String deleteCategory(@PathVariable("id") String id, Model model) //throw exception
	{
	//	log.debug("starting of the method deleteCategory");
		//log.debug("category id : "+ category.getId());
		Category cat=categoryDAO.get(id);
		String msg;
		if (categoryDAO.delete(cat)== true){
			msg = "successfully deleted the category";
		}else{
			msg = "not able to delete the category";
		}
		model.addAttribute("msg", msg);
	//	log.debug("end of the method deleteCategory");
		return "forward:/manage_categories";
	}
	
	@RequestMapping(value="/manage_category_edit/{id}")
	public String editCategory(@PathVariable("id") String id, Model model) //throw exception
	{
	//	log.debug("starting of the method editCategory");
		//log.debug("category id : "+ category.getId());
		
		category = categoryDAO.get(id);
		model.addAttribute("category", category);
	//	log.debug("end of the method editCategory");
		
		return "forward:/manage_categories";
	}
}
*/