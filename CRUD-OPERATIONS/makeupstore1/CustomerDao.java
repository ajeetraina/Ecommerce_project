package com.makeupstore1.dao;

import java.util.List;

import com.makeupstore1.model.Customer;


public interface CustomerDao {

	public void addCustomer(Customer customer);
	
	public List<Customer> getCustomerList();
	
	public void updateCustomer(Customer customer);
	
    public Customer getCustomerById(int id);
    
    public void deleteCustomer(int id);

	
}
