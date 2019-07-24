package com.yangyao.backoffice.mapper;

import com.yangyao.backoffice.model.Customer;

import java.util.List;

public interface CustomerMapper {
    List<Customer> findAll();

    int add(Customer customer);

    int update(Customer customer);

    Customer getByPrimaryKey(long cusid);

    int delete(Long cusid);

    Customer getByPrimaryKey(Long cusid);
}
