package io.jctiru.webcustomertracker.dao;

import java.util.List;

import io.jctiru.webcustomertracker.entity.Customer;

public interface CustomerDAO {
	
	public List<Customer> getCustomers();

}
