package com.niit.dao;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.niit.model.Authorities;
import com.niit.model.BillingAddress;
import com.niit.model.Cart;
import com.niit.model.Customer;
import com.niit.model.ShippingAddress;
import com.niit.model.Users;

import junit.framework.TestCase;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/applicationContext.xml","file:src/main/webapp/WEB-INF/dispatcher-servlet.xml"})
public class CustomerDaoImplTest extends TestCase {
	
	@Autowired
	private CustomerDao customerDao;

	@Test
	public void testSaveCustomer() {
		Customer customer=new Customer();
		customer.setFirstname("Chetan");
		customer.setLastname("Sharma");
		customer.setEmail("c.s@gmail.com");
		customer.setPhone("9955114433");
		
		BillingAddress billingAddress=new BillingAddress();
		billingAddress.setStreetname("Grant Road");
		billingAddress.setApartmentnumber("12/8");
		billingAddress.setCity("Mumbai");
		billingAddress.setCountry("India");
		billingAddress.setZipcode("410045");
		
		ShippingAddress shippingAddress=new ShippingAddress();
		shippingAddress.setStreetname("Grant Road");
		shippingAddress.setApartmentnumber("12/8");
		shippingAddress.setCity("Mumabi");
		shippingAddress.setCountry("India");
		shippingAddress.setZipcode("410045");
		
		Users users=new Users();
		users.setUsername("Chetan");
		users.setPassword("987");
		users.setEnabled(true);
		
		Authorities authorities=new Authorities();
		authorities.setUsername("Chetan");
		authorities.setRole("ROLE_USER");
		
		Cart cart=new Cart();
		cart.setCustomer(customer);
		customer.setCart(cart);
		
		customer.setBillingAddress(billingAddress);
		customer.setShippingAddress(shippingAddress);
		customer.setUsers(users);
		
		customerDao.saveCustomer(customer);
		
		assertTrue(customer.getId()>0);
		assertTrue(customer.getBillingAddress().getId()>0);
		
		
	}

	@Test
	public void testGetCustomers() {
	  List<Customer> customers=customerDao.getCustomers();	
	  assertTrue(customers.size()>0);
	}


}
