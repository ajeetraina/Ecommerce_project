package com.makeupstore1.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.makeupstore1.model.Customer;
import com.makeupstore1.model.User;
import com.makeupstore1.service.CustomerService;

@Controller
public class HomeController {

	@Autowired
	private CustomerService customerService;
	
	
	
	@RequestMapping("/")
	public String index(){
		return "index";
	}
	@RequestMapping("/index")
	public String home(){
		return "index";
	}
	
	@RequestMapping("/signup")
	public String signup(){
		return "signup";
	}
	
	 @RequestMapping("register")
	 public ModelAndView registerUser(@ModelAttribute Customer customer) {
	  customerService.addCustomer(customer);
	  return new ModelAndView("redirect:list");
	  /*    */
	 }
	
	 
	 @RequestMapping("/list")
	 public String getCustomer(Model model){
	        List<Customer> customer = customerService.getCustomerList();
	        model.addAttribute("customer", customer);

	        return "list";

	    }
	

	 @RequestMapping("/delete/{id}")
	    public String deleteCustomer(@PathVariable("id") int id)
	    {
		 System.out.println(id);
		 customerService.deleteCustomer(id);
	        return "redirect:/list";
	    }
	 


	    @RequestMapping("/editCustomer/{id}")
	    public String editCustomer(@PathVariable("id") int id,  Model model){
	        Customer customer = customerService.getCustomerById(id);

	        model.addAttribute("customer", customer);
	        System.out.println(customer.getEmail());

	        return "editCustomer";
	    }


	    @RequestMapping(value="/editCustomer", method = RequestMethod.POST)
	    public String editCustomerPost(@Valid @ModelAttribute("customer") Customer customer, BindingResult result, HttpServletRequest request){

	        if(result.hasErrors()){
	            return "editCustomer";
	        }
	        System.out.println("hello");
	       customerService.updateCustomer(customer);
	       
	        return "redirect:/list";
	    }



}
