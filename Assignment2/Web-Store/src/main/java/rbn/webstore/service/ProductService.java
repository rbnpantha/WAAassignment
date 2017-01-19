package rbn.webstore.service;

import java.util.List;

import rbn.webstore.domain.Product;

public interface ProductService {

	List<Product> getAllProducts();
	
	Product getProductById(String id);
}