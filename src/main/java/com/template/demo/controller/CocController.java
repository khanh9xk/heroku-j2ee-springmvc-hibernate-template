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
public class CocController extends BaseController implements Serializable {
	@CrossOrigin(origins = "*")
	@RequestMapping(value = "/coc", method = RequestMethod.GET)
	public String homeDetail(Model model) {
		return "coc/index";
	}

}
