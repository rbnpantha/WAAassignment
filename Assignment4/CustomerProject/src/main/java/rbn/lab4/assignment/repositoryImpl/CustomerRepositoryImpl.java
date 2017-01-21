package rbn.lab4.assignment.repositoryImpl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import rbn.lab4.assignment.domain.Customer;
import rbn.lab4.assignment.repository.CustomerRepository;

@Repository
public class CustomerRepositoryImpl implements CustomerRepository {

	Map<String, Customer> customerCollection;
	public  CustomerRepositoryImpl() {
		
		customerCollection = new HashMap<String,Customer>();
	//	DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
		try{
		/*customerCollection.put("C100", new Customer("C100", "admin", "Fairfield,Iowa",df.parse("01/01/1991"), "admin","M"));
		customerCollection.put("C101", new Customer("C100", "Rabin", "Fairfield,Iowa",df.parse("12/31/1991"), "rabin","M"));
		customerCollection.put("C102", new Customer("C100", "Seerah", "Fairfield,Iowa",df.parse("12/11/1998"), "seerah","F"));
		*/
			customerCollection.put("C100", new Customer("C100", "admin", "Fairfield,Iowa","01/01/1991", "admin","M"));
			customerCollection.put("C101", new Customer("C100", "Rabin", "Fairfield,Iowa","12/31/1991", "rabin","M"));
			customerCollection.put("C102", new Customer("C100", "Seerah", "Fairfield,Iowa","12/11/1998", "seerah","F"));
		}
		catch(Exception e){
			System.out.println("Problem in saving the cutomer : "+e.getMessage());
		}
	}

	public List<Customer> getAllCustomer() {
		// TODO Auto-generated method stub
		return (List<Customer>) customerCollection.values();
	}

	public Customer getCustomerById(String id) {

		for(String key : customerCollection.keySet()){
			if(key.equals(id))
				return customerCollection.get(key);
		}
		return null;
	}

	public void addCustomer(Customer customer) {
		customerCollection.put(customer.getUserId(), customer);
		
		//to print list of customers in console
		for(Customer  cust: customerCollection.values()){
			System.out.println(cust);
		}
	}

}
