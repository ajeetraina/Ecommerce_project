package com.beautyhub.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.beautyhub.model.Product;
import com.beautyhub.service.ProductService;

@Controller
public class HomeController {

	@Autowired
	ProductService productService;
	
    @RequestMapping("/")
    public String homePage(){
        return "home";
    }
    
    @RequestMapping("/home")
	public String homePage1(){
		return "redirect:/";
	}
    
    @RequestMapping("/baby")
	public String home(){
		return "redirect:/";
	}

    
    @RequestMapping("/productList")
    public String getProducts(Model model){
        List<Product> products = productService.getProductList();
        model.addAttribute("products", products);

        return "productList";
    }
    @RequestMapping(value = "/admin**", method = RequestMethod.GET)
	public ModelAndView adminPage1s() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Custom Login Form");
		model.addObject("message", "This is protected page!");
		model.setViewName("admin");

		return model;

	}

	//Spring Security see this :
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(
		@RequestParam(value = "error", required = false) String error,
		@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("login");

		return model;

	}


		@RequestMapping("/contact")
		public String contact(){
			return "contact";
		}

		

} // The End of Class;
