package io.jctiru.webcustomertracker.dao;

import java.util.List;

import io.jctiru.webcustomertracker.entity.Customer;

public interface CustomerDAO {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer customer);

	public Customer getCustomer(int id);

	public void deleteCustomer(int id);

}
