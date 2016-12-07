package com.niit.shoppingcart.controller;

import java.util.logging.Logger;

import org.apache.commons.io.FileUtils;
import org.hibernate.annotations.common.util.impl.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcartbackend.model.*;
import com.niit.shoppingcartbackend.dao.*;


@Controller
public class ProductController 
{

	//public static Logger log = LoggerFactory.getLogger(UserController.class);
	
	@Autowired(required = true)
	private CategoryDAO categoryDAO;
	
	@Autowired(required = true)
	private SupplierDAO supplierDAO;
	
	@Autowired(required = true)
	private Product product;
	
	@Autowired
	private Category category;
	
	@Autowired
	private Supplier supplier;
	
	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping(value = "/manage_products", method = RequestMethod.GET)
	public String listProducts(Model model)
	{
		//log.debug("starting of the method listProducts");
		model.addAttribute("product",new Product());
		model.addAttribute("productList",this.productDAO.list());
		model.addAttribute("isAdminClickedProducts", "true");
		
		//log.debug("end of the method listProducts");
		return "/index";
	}

	@RequestMapping(value="/manage_product_add", method = RequestMethod.POST)
	
	public ModelAndView addProduct (@ModelAttribute("product") Product product)
	{
	//	log.debug("starting of the method addProduct");
		ModelAndView model = new ModelAndView("index");
		Category category = categoryDAO.get(product.getCategory().getId());
		
		Supplier supplier = supplierDAO.get(product.getSupplier().getId());
		
		product.setCategory(category);
		product.setSupplier(supplier);
		
		//product.setCategory_id(category.getId());
		//product.setSupplier_id(supplier.getId());
		
	//	FileUtils.upload(path, file, product.getId()+".jpg");
		//log.debug("End of the method addProduct");
		model.addObject("isAdminClickedProducts", true);
		model.addObject("productList", this.productDAO.list());
		model.addObject("product", new Product());
		
			
		
		
		
		return model; //// not sure if its right 
		
	}
	
}	
