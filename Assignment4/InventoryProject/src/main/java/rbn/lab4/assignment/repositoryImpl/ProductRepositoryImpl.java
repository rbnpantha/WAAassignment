package rbn.lab4.assignment.repositoryImpl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import rbn.lab4.assignment.domain.Product;
import rbn.lab4.assignment.repository.ProductRepository;

@Repository
public class ProductRepositoryImpl implements ProductRepository {

	Map<String, Product> productCollection;
	public  ProductRepositoryImpl() {
		
		
		
		productCollection = new HashMap<String,Product>();
		try{
		
			productCollection.put("C100", new Product("P100", "samsung J7", "best mobile ever",250, "new"));
			productCollection.put("C101", new Product("P100", "iphone 7+", "always a better choice", 257, "refurnished"));
			productCollection.put("C102", new Product("P100", "HTC 1", "Yeah, its the best",300, "old"));
		}
		catch(Exception e){
			System.out.println("Problem in saving the cutomer : "+e.getMessage());
		}
	}

	public List<Product> getAllProduct() {
		// TODO Auto-generated method stub
		List<Product> p1 = new ArrayList<Product>();
		p1.add(new Product("P100", "samsung J7", "best mobile ever",250, "new"));
		//return (List<Product>) productCollection.values();
		return p1;
	}

	public Product getProductById(String id) {

		for(String key : productCollection.keySet()){
			if(key.equals(id))
				return productCollection.get(key);
		}
		return null;
	}

	public void addProduct(Product product) {
		productCollection.put(product.getProductId(), product);
		
		//to print list of customers in console
		for(Product  cust: productCollection.values()){
			System.out.println(cust);
		}
	}
	
	public void deleteProductById(String id){
		productCollection.remove(id);
	}

}
