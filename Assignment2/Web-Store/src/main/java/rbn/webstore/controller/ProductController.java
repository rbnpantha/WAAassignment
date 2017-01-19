package rbn.webstore.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import rbn.webstore.domain.Product;
import rbn.webstore.service.ProductService;

@Controller
public class ProductController {

	/*@RequestMapping("/")
	public String login(Model model) {
		System.out.println("inside product controller");
		return "product";
	}*/
	
	@Autowired
	ProductService productService;
	
	
	@RequestMapping(value={"/","/products"}, method=RequestMethod.GET)
	public String getAllProducts(Model model) {
		List<Product> productList = productService.getAllProducts();
		System.out.println("productList is : "+ productList);
		model.addAttribute("products",productList);
		return "product";
	}
	
	@RequestMapping("/productDetail/{productId}")
	public String getProductDetail(Model model, @PathVariable String productId) {
		System.out.println("inside product controller");
		Product product = productService.getProductById(productId);
		model.addAttribute("product",product);
		return "productDetail";
	}
}
