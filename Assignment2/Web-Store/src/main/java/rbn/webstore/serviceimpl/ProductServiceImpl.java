package rbn.webstore.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import rbn.webstore.domain.Product;
import rbn.webstore.repositoryImpl.InMemoryProductRepository;
import rbn.webstore.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{

	
	@Autowired
	InMemoryProductRepository inMemoryProductRepository;
	
	public List<Product> getAllProducts() {
		List<Product> listOfProduct = inMemoryProductRepository.getAllProducts();
		return listOfProduct;
	}

	public Product getProductById(String id) {
		Product product = inMemoryProductRepository.getProductById(id);
		return product;
	}

}
