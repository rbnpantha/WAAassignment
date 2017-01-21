package rbn.lab4.assignment.repository;

import java.util.List;

import rbn.lab4.assignment.domain.Product;

public interface ProductRepository {

	void addProduct(Product product);
	
	List<Product> getAllProduct();
	
	Product getProductById(String id);
	
	void deleteProductById(String id);
	
}
