package com.service.fyhService;

import java.util.List;

import com.entity.Customer;

/**
 * ҵ���
 * @author Administrator
 *
 */
public interface FyhService {
	List<Customer> getCustomer();//查询用户表信息
	int saveCustomer(Customer cusm);//注册 添加用户
	List<Customer> getCustomerID(Customer cusm);//查询手机号是否注册
}
