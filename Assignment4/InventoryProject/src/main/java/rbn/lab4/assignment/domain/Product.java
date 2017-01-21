package rbn.lab4.assignment.domain;

import java.util.Date;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

public class Product {

	//@NotEmpty(message="{emptyId}")
	@NotEmpty(message="id may not be empty")
	private String productId;
	//@Size(min=2, max=20, message="{invalidName}")
	@Size(min=2, max=20, message="product name must be between 2 and 20 characters")
	private String productName;
	//@Size(min=2, max=20, message="{invalidAddress}")
	@Size(min=1, max=200, message="description must be between 1 and 200 characters")
	private String description;
	//@NotEmpty
	//@Range(min=1, max=2000000000, message="price must be between 1 and 2 billions")
	private int price;
	private String discontinued;
	@NotEmpty(message="condition may not be empty")
	private String condition;
	private int costPrice;
	
	
	//Default constructor is required
	public Product(){
		
	}
	
	
	
	
	
	
	public Product(String productId, String productName, String description, int price, String condition) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.description = description;
		this.price = price;
		this.condition = condition;
	}






	public String getProductId() {
		return productId;
	}






	public void setProductId(String productId) {
		this.productId = productId;
	}






	public String getProductName() {
		return productName;
	}






	public void setProductName(String productName) {
		this.productName = productName;
	}






	public String getDescription() {
		return description;
	}






	public void setDescription(String description) {
		this.description = description;
	}






	public int getPrice() {
		return price;
	}






	public void setPrice(int price) {
		this.price = price;
	}






	public String getDiscontinued() {
		return discontinued;
	}






	public void setDiscontinued(String discontinued) {
		this.discontinued = discontinued;
	}






	public String getCondition() {
		return condition;
	}






	public void setCondition(String condition) {
		this.condition = condition;
	}






	public int getCostPrice() {
		return costPrice;
	}






	public void setCostPrice(int costPrice) {
		this.costPrice = costPrice;
	}






	public String toString(){
		return "UserId : " +productId +" "+ " Product Name " + productName + " Price : "+price;
	}
}
