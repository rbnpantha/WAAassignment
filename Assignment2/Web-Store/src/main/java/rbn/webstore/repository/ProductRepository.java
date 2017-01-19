package rbn.webstore.repository;

import java.util.List;

import rbn.webstore.domain.Product;

public interface ProductRepository {

	List<Product> getAllProducts();
	
	Product getProductById(String productId);
}
