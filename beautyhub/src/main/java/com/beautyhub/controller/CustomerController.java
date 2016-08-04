package com.beautyhub.controller;

import java.util.List;

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
import com.beautyhub.model.Customer;
import com.beautyhub.service.CustomerService;


@Controller
public class CustomerController {

	@Autowired
	private CustomerService customerService;
	
 /*
	 @RequestMapping("/delete/{id}")
	    public String deleteCustomer(@PathVariable("id") int id)
	    {
		 System.out.println(id);
		 customerService.deleteCustomer(id);
	        return "redirect:/customerManagement";
	    }

	
	@RequestMapping("/editCustomer/{cutomerId}")
    public String editCustomer(@PathVariable("cutomerId") int id,  Model model){
        Customer customer = customerService.getCustomerById(id);

        model.addAttribute("customer", customer);

        return "editCustomer";
    }


    @RequestMapping(value="/editCustomer", method = RequestMethod.POST)
    public String editCustomerPost(@Valid @ModelAttribute("customer") Customer customer, BindingResult result, HttpServletRequest request){

        if(result.hasErrors()){
            return "editCustomer";
        }
        System.out.println("hello");
       customerService.updateCustomer(customer);
       
        return "redirect:/customerManagement";
    }

*/
	
	
}
