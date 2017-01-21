package rbn.lab4.assignment.service;

import java.util.List;

import rbn.lab4.assignment.domain.Customer;

public interface CustomerService {

	void addCustomer(Customer customer);
	
	Customer getCustomerById(String id);
	
	List<Customer> getAllCustomer();
		
}
