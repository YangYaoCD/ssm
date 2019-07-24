package com.yangyao.backoffice.service;

import com.yangyao.backoffice.model.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> findCustomerList();

    int addOrupdateCustomer(Customer customer);

    int deleteCustomer(Long cusid);

    Customer findByPrimaryKey(Long cusid);
}
