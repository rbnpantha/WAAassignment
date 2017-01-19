package rbn.webstore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import rbn.webstore.service.OrderService;

@Controller
public class OrderController {

	@Autowired
	OrderService orderService;
	
	@RequestMapping(value = "/productDetail/processOrder/{productId}", method = RequestMethod.POST)
	public String processOrder(Model model, @PathVariable String productId, @RequestParam("quantity") int quantity){
		System.out.println("inside order controller");
		orderService.processOrder(productId, quantity);
		
		return "redirect:/products";
		
	}
}
