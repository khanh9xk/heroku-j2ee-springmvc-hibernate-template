package com.template.demo.controller;

import com.template.demo.model.*;
import com.template.demo.dao.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.io.Serializable;
import java.util.List;

/**
 * Sample controller for going to the home page with a message
 */
@Controller
public class ProductDetailController extends BaseController implements Serializable {

	private static final long serialVersionUID = 1324281204513252404L;

	private static final Logger logger = LoggerFactory
			.getLogger(ProductDetailController.class);

	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private CategoryDao categoryDao;
	/**
	 * Selects the home page and populates the model with a message
	 */
	@RequestMapping(value = "/product/{id}", method = RequestMethod.GET)
	public String home(Model model, @PathVariable(required = false) Integer id) {
		logger.info("product!");
		Product product = productDao.find(id);
		model.addAttribute("product", product);
		
		List<ProductType> productType = productDao.getAllType(id);
		model.addAttribute("productType", productType);
		
		List<Category> categoryList = categoryDao.getCategories();
		model.addAttribute("categoryList", categoryList);
		
		return "detail";
	}
	
	/**
	 * Selects the home page and populates the model with a message
	 */
	@RequestMapping(value = "/product/{id}/{typeId}", method = RequestMethod.GET)
	public String homeDetail(Model model, @PathVariable Integer id, @PathVariable Integer typeId) {
		logger.info("product!");
		Product product = productDao.find(id);
		ProductType prdType = productDao.findType(typeId);
		
		product.setPrice(prdType.getPrice());
		product.setType(prdType.getProductTypeName());
		product.setStock(prdType.getStock());
		product.setTypeId(prdType.getId());
		product.setImage(prdType.getImage());
		
		model.addAttribute("product", product);
		
		List<ProductType> productType = productDao.getAllType(id);
		model.addAttribute("productType", productType);
		
		List<Category> categoryList = categoryDao.getCategories();
		model.addAttribute("categoryList", categoryList);
		
		return "detail";
	}

}
