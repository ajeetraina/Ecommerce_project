package com.makeupstore1.dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


import com.makeupstore1.model.Customer;

@Repository

public class CustomerDaoImpl implements CustomerDao
{
	
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
	
	@Transactional
	public void addCustomer(Customer customer) 
	{

		sessionFactory.openSession().save(customer);
		
	}
	
		
	    @SuppressWarnings("unchecked")
	    @Transactional
		public List<Customer> getCustomerList() 
	    {
	        return sessionFactory.openSession().createQuery("from Customer").list();
	    }
	    
	    
	    
   @Transactional
		public void updateCustomer(Customer customer)
		{
	   Session session = sessionFactory.openSession();
	  
       session.saveOrUpdate(customer);
    
       session.flush();


     		
		}

@Transactional
		public Customer getCustomerById(int id) 
		{
			Customer customer = (Customer) sessionFactory.openSession().get(Customer.class, id);
			return customer;
		
		}
		
@Transactional
		public void deleteCustomer(int id)
		{
			Customer customer = this.getCustomerById(id);
			Session session = this.sessionFactory.openSession();
			session.delete(customer);
			session.flush();
					 
			
		}
		
	 }
