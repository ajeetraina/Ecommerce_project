package com.makeupstore1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.makeupstore1.dao.CustomerDao;
import com.makeupstore1.model.Customer;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService{

	
	@Autowired
	private CustomerDao customerDao;
	
	@Transactional
	public void addCustomer(Customer customer) {
		customerDao.addCustomer(customer);
		
	}

	public List<Customer> getCustomerList() {
		return customerDao.getCustomerList();
	}

	
	@Transactional
	public void updateCustomer(Customer customer) {
		this.customerDao.updateCustomer(customer);
		
	}

	public Customer getCustomerById(int id) {
		return customerDao.getCustomerById(id);
	}

	@Transactional
	public void deleteCustomer(int id) {
		        customerDao.deleteCustomer(id);
		    }
		
	}

