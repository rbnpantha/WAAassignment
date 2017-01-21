package rbn.lab4.assignment.serviceImpl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import rbn.lab4.assignment.domain.Customer;
import rbn.lab4.assignment.repository.CustomerRepository;
import rbn.lab4.assignment.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	CustomerRepository customerRepository;
	
	public void addCustomer(Customer customer) {
		
		customerRepository.addCustomer(customer);
	}

	public Customer getCustomerById(String id) {
		Customer customer = customerRepository.getCustomerById(id);
		return customer;
	}

	public List<Customer> getAllCustomer() {
		return customerRepository.getAllCustomer();
	}

}
