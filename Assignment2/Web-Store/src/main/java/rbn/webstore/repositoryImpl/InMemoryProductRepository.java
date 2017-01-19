package rbn.webstore.repositoryImpl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import rbn.webstore.domain.Product;
import rbn.webstore.repository.ProductRepository;

@Repository
public class InMemoryProductRepository implements ProductRepository {

	List<Product> products;
	
	public InMemoryProductRepository(){
		
		products = new ArrayList<Product>();
		
		Product samsung1 = new Product("P111", "Edge 7", new BigDecimal(750.00), "Silver colored frame", " Samsung Co. Ltd", "Mobile", 100, 10, true, "excellent","image1.jpg");
		Product iphone = new Product("P112", "Iphone 7 +", new BigDecimal(900.00), "Silver colored frame", " Apple Co. Ltd", "Mobile", 100, 20, true, "good", "image2.jpg");
		Product ipad = new Product("P113", "Ipad 4", new BigDecimal(700.00), "Black colored frame", " Apple Co. Ltd", "Mobile", 100, 30, true, "excellent", "image3.jpg");
		Product motorolla1 = new Product("P114", "Moto Revo", new BigDecimal(570.00), "Blue colored frame", " Mototrolla Co. Ltd", "Mobile", 100, 10, true, "excellent", "image4.jpg");
		Product samsung2 = new Product("P115", "Note 6", new BigDecimal(850.00), "Pink colored frame", " Samsung Co. Ltd", "Mobile", 100, 15, true, "ok", "image5.jpg");
		Product motorolla2 = new Product("P116", "MOto 6+", new BigDecimal(550.00), "White colored frame", " Mototrolla Co. Ltd", "Mobile", 100, 25, true, "good", "image6.jpg");
		
		products.add(samsung1);
		products.add(iphone);
		products.add(ipad);
		products.add(motorolla1);
		products.add(samsung2);
		products.add(motorolla2);
	}
	
	
	public List<Product> getAllProducts() {
		return products;
	}


	public Product getProductById(String productId) {
		for(Product  p : products){
			if(p.getProductId().equals(productId)){
				return p;
			}
		}
		return null;
	}

}
