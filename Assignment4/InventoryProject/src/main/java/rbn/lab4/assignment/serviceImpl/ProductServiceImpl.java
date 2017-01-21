package rbn.lab4.assignment.serviceImpl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import rbn.lab4.assignment.domain.Product;
import rbn.lab4.assignment.repository.ProductRepository;
import rbn.lab4.assignment.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductRepository productRepository;
	
	public void addProduct(Product product) {
		
		productRepository.addProduct(product);
	}

	public Product getProductById(String id) {
		Product product = productRepository.getProductById(id);
		return product;
	}

	public List<Product> getAllProduct() {
		return productRepository.getAllProduct();
	}
	
	public void deleteProductById(String id){
		productRepository.deleteProductById(id);
	}

}
