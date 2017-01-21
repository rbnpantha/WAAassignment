package rbn.lab4.assignment.service;

import java.util.List;

import rbn.lab4.assignment.domain.Product;

public interface ProductService {

	void addProduct(Product product);
	
	Product getProductById(String id);
	
	List<Product> getAllProduct();
	
	void deleteProductById(String id);
		
}
