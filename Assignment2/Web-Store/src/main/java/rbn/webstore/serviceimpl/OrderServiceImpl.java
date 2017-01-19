package rbn.webstore.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import rbn.webstore.domain.Product;
import rbn.webstore.repository.ProductRepository;
import rbn.webstore.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	ProductRepository productRepository;

	public void processOrder(String productId, int quantity) {
		Product orderdProduct = productRepository.getProductById(productId);
		if (orderdProduct != null) {
			if (quantity < orderdProduct.getUnitsInstock()) {
				orderdProduct.setUnitsInstock(orderdProduct.getUnitsInstock() - quantity);
			} else {
				throw new IllegalArgumentException("Invalid Argument!!");
			}
		}
	}

}
