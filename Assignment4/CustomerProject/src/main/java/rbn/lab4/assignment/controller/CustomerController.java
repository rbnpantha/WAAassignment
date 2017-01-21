package rbn.lab4.assignment.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import rbn.lab4.assignment.domain.Customer;
import rbn.lab4.assignment.service.CustomerService;

@Controller
public class CustomerController {
	
	@Autowired
	CustomerService customerService;

	@RequestMapping(value="/customer", method=RequestMethod.GET)
	public String customerHome(@ModelAttribute("newCustomer") Customer customer){
		return "addCustomer";
	}
	
	
	//@valid annotation validate the Customer
	@RequestMapping(value="/customer", method=RequestMethod.POST)
	public String addCustomer(@Valid @ModelAttribute("newCustomer") Customer newCustomer, BindingResult result){
		System.out.println("inside add customer post " +newCustomer);
		
		//true if erros, send back with errors
		if(result.hasErrors()){
			System.out.println("error found !!");
			return "addCustomer";
		}
		customerService.addCustomer(newCustomer);
		return "redirect:/customer";
	}
}
