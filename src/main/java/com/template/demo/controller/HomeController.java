package com.template.demo.controller;

import com.template.demo.model.*;
import com.template.demo.dao.*;
import java.io.Serializable;
import java.util.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.*;
import javax.servlet.http.HttpServletRequest;
/**
 * Sample controller for going to the home page with a message
 */
@Controller
public class HomeController extends BaseController implements Serializable {

	private static final long serialVersionUID = 1324281204513252404L;

	private static final Logger logger = LoggerFactory
			.getLogger(HomeController.class);
	
	@Autowired
	private CategoryDao categoryDao;
	
	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private CartDao cartDao;

	/**
	 * Selects the home page and populates the model with a message
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, 
			   @RequestParam(defaultValue = "-1") Integer categoryId, 
			   @RequestParam(defaultValue = "") String name,
			   @RequestParam(defaultValue = "-1") Integer brandId
			   ) {
		logger.info("Welcome home!");
		
		List<Category> categoryList = categoryDao.getCategories();
		model.addAttribute("categoryList", categoryList);
		

		List<Product> productIcons1 = productDao.getList(name,categoryId, brandId, 0, 4);
		List<Product> productIcons2 = productDao.getList(name,categoryId, brandId, 4, 4);
		List<Product> productIcons3 = productDao.getList(name,categoryId, brandId, 8, 4);
		model.addAttribute("productIcons1", productIcons1);
		model.addAttribute("productIcons2", productIcons2);
		model.addAttribute("productIcons3", productIcons3);
		
		List<Product> productNewTop12 = productDao.getList(name,categoryId, brandId, 0, 12);
		model.addAttribute("productNewTop12", productNewTop12);
		
		return "home";
	}
	
	/**
	 * Selects the home page and populates the model with a message
	 */
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String home(Model model, HttpServletRequest httpRequest) {
		logger.info("Cart page!");
		User sUser = (User) getVarFromSession(httpRequest, "user");
		List<Cart> cartList = cartDao.getListByUserId(sUser.getId());
		return "cart";
	}
	
	/**
	 * Selects the home page and populates the model with a message
	 */
	@RequestMapping(value = "/api/cart", method = RequestMethod.PUT, consumes="application/json", produces = "application/json")
	@ResponseBody
	public String updateCart(@RequestBody List<Cart> cartList, HttpServletRequest httpRequest) {
		logger.info("====> [API] save cart");
		User sUser = (User) getVarFromSession(httpRequest, "user");
		cartDao.save(cartList,sUser.getId());
		return "success";
	}
	
	
}
