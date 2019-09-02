package io.jctiru.webcustomertracker.service;

import java.util.List;

import io.jctiru.webcustomertracker.entity.Customer;

public interface CustomerService {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer customer);

}
