package com.template.demo.controller;

import java.io.Serializable;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import com.template.demo.model.*;
import com.template.demo.dao.*;
import org.springframework.context.annotation.*;



/**
 * Basic controller for all the actions
 * 
 * @author nicolatassini
 *
 */
@Controller
@Scope("session")
@SessionAttributes("user")
public class BaseController implements Serializable {

	private static final long serialVersionUID = 1324281204513252403L;
	
	private static final Logger logger = LoggerFactory.getLogger(BaseController.class);
	
	
	@ModelAttribute
	public void addAttributes(Model model, HttpServletRequest httpRequest) {
		model.addAttribute("userName", "Khánh");
		model.addAttribute("titleShop", "Khánh Phương Shop");
		model.addAttribute("facebookLink", "https://www.facebook.com/khanh9xkk");
		model.addAttribute("youtubeLink", "https://www.youtube.com/?hl=vi");
		model.addAttribute("promotion", "Khuyến mãi 50k cho đơn hàng đầu tiên. Mọi người mại dô mại dô :)");
		
		User user = new User();
		user.setFirstName("khanh");
		user.setLastName("nguyen");
		user.setEmail("khanh@gmail.com");
		setVarInSession(httpRequest, "user",  user);
	}
	
	/**
	 * Return a generic variable from the session
	 * 
	 * @param httpRequest
	 * @param key
	 * @return
	 */
	public Object getVarFromSession(HttpServletRequest httpRequest, String key) {
		//Check if session is up
		return (httpRequest != null && httpRequest.getSession() != null)
			? httpRequest.getSession().getAttribute(key) : null;
	}
	
	/**
	 * Set a generic variable in the session
	 * 
	 * @param httpRequest
	 * @param key
	 * @param value
	 * @return
	 */
	public Boolean setVarInSession(HttpServletRequest httpRequest, String key, Object value) {
		if(httpRequest != null) {
			try {
				httpRequest.getSession().setAttribute(key, value);
				return true;
			} catch(Exception e) {
				logger.error("Error registering " + key + " in session " + value);
				return false;
			}
		} else {
			logger.error("Error registering " + key + " in session: session is null");
			return false;
		}
	}
	
}
