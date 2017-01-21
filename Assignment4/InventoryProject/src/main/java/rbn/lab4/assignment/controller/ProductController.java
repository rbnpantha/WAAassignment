package rbn.lab4.assignment.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import rbn.lab4.assignment.domain.Product;
import rbn.lab4.assignment.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;

	@InitBinder
	public void initializeBinder(WebDataBinder binder){
		binder.setDisallowedFields("discontinued","costPrice");
	}
	
	@RequestMapping(value="/products", method=RequestMethod.GET)
	public String productHome(Model model){
		List<Product> productList = productService.getAllProduct();
		System.out.println("productList is : "+ productList);
		model.addAttribute("products",productList);
		return "product";
	}
	
	
	@RequestMapping(value="/product/add", method=RequestMethod.GET)
	public String productAddHome(@ModelAttribute Product product){
		return "addProduct";
	}
	
	
	//@valid annotation validate the Customer
	@RequestMapping(value="/product/add", method=RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute Product product, BindingResult result){
		System.out.println("inside add product post " +product);
		
		String[] suppressedFields = result.getSuppressedFields();
		if(suppressedFields.length > 0){
			throw new RuntimeException("Attempting to bind disallowed fields: "
					+ StringUtils.arrayToCommaDelimitedString(suppressedFields));
		}
		
		//true if erros, send back with errors
		if(result.hasErrors()){
			System.out.println("error found !!");
			return "addProduct";
		}
		productService.addProduct(product);
		return "redirect:/product/add";
	}

	@RequestMapping(value="/product/edit/{productId}", method=RequestMethod.GET)
	public String updateProductHome(@ModelAttribute Product product, Model model, @PathVariable("productId") String productId){
		Product editProduct = productService.getProductById(productId);
		System.out.println("The product from search result is :" +product);
		model.addAttribute("product", editProduct);
		
		return "updateProduct";
	}
	
	
	//@valid annotation validate the Customer
	@RequestMapping(value="/product/edit/{productId}", method=RequestMethod.PUT)
	public String updateProduct(@Valid @ModelAttribute Product product, BindingResult result){
		System.out.println("inside update product put " +product);
		
		String[] suppressedFields = result.getSuppressedFields();
		if(suppressedFields.length > 0){
			throw new RuntimeException("Attempting to bind disallowed fields: "
					+ StringUtils.arrayToCommaDelimitedString(suppressedFields));
		}
		
		//true if erros, send back with errors
		if(result.hasErrors()){
			System.out.println("error found !!");
			return "updateProduct";
		}
		productService.addProduct(product);
		return "redirect:/product/update";
	}

	@RequestMapping(value="/product/search", method=RequestMethod.POST)
	public String searchProduct(@RequestParam("search") String search, Model model){
		Product product = productService.getProductById(search);
		System.out.println("The product from search result is :" +product);
		model.addAttribute("product", product);
		return "updateProduct";
	}
	
	@RequestMapping("/product/delete/{productId}")
	public String getProductDetail(Model model, @PathVariable String productId) {
		System.out.println("inside product delete controller");
		productService.deleteProductById(productId);
		return "redirect:/products";
	}

}
