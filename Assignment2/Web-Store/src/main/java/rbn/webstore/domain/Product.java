package rbn.webstore.domain;

import java.math.BigDecimal;

public class Product {

	private String productId;
	private String productName;
	private BigDecimal unitPrice;
	private String description;
	private String manufacturer;
	private String category;
	private long unitsInstock;
	private long unitsInOrder;
	private boolean discontinued;
	private String condition;
	private String image;
	
	
	
	public Product(String productId, String productName, BigDecimal unitPrice, String description, String manufacture,
			String category, long unitsInstock, long unitsInOrder, boolean discontinued, String condition, String image) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.unitPrice = unitPrice;
		this.description = description;
		this.manufacturer = manufacture;
		this.category = category;
		this.unitsInstock = unitsInstock;
		this.unitsInOrder = unitsInOrder;
		this.discontinued = discontinued;
		this.condition = condition;
		this.image = image;
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

	public BigDecimal getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(BigDecimal unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getManufacture() {
		return manufacturer;
	}
	public void setManufacture(String manufacture) {
		this.manufacturer = manufacture;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public long getUnitsInstock() {
		return unitsInstock;
	}
	public void setUnitsInstock(long unitsInstock) {
		this.unitsInstock = unitsInstock;
	}
	public long getUnitsInOrder() {
		return unitsInOrder;
	}
	public void setUnitsInOrder(long unitsInOrder) {
		this.unitsInOrder = unitsInOrder;
	}
	public boolean isDiscontinued() {
		return discontinued;
	}
	public void setDiscontinued(boolean discontinued) {
		this.discontinued = discontinued;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((productId == null) ? 0 : productId.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		if (productId == null) {
			if (other.productId != null)
				return false;
		} else if (!productId.equals(other.productId))
			return false;
		return true;
	}

}
