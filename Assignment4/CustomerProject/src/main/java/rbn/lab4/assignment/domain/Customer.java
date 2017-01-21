package rbn.lab4.assignment.domain;

import java.util.Date;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class Customer {

	//@NotEmpty(message="{emptyId}")
	@NotEmpty(message="id may not be empty")
	private String userId;
	//@Size(min=2, max=20, message="{invalidName}")
	@Size(min=2, max=20, message="username must be between 2 and 20 characters")
	private String userName;
	//@Size(min=2, max=20, message="{invalidAddress}")
	@Size(min=0, max=20, message="address must be between 2 and 20 characters")
	private String address;
	private String birthDate;
	@Size(min=6, max=20,message="password must be between 6 and 20 characters")
	private String password;
	@NotEmpty(message="gender may not be empty")
	private String gender;
	
	
	//Default constructor is required
	public Customer(){
		
	}
	
	public Customer(String userId, String userName, String address, String birthDate, String password, String gender) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.address = address;
		this.birthDate = birthDate;
		this.password = password;
		this.gender = gender;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		result = prime * result + ((userName == null) ? 0 : userName.hashCode());
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
		Customer other = (Customer) obj;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (userName == null) {
			if (other.userName != null)
				return false;
		} else if (!userName.equals(other.userName))
			return false;
		return true;
	}
	
	public String toString(){
		return "UserId : " +userId +" "+ " User Name " + userName + " Address : "+address;
	}
}
