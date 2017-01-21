package rbn.lab4.assignment.repository;

import java.util.List;

import rbn.lab4.assignment.domain.Customer;

public interface CustomerRepository {

	void addCustomer(Customer customer);
	
	List<Customer> getAllCustomer();
	
	Customer getCustomerById(String id);
	
}
