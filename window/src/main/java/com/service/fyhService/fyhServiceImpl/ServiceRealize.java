package com.service.fyhService.fyhServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.fyhDao.CustomerDao;
import com.entity.Customer;
import com.service.fyhService.FyhService;
/**
 * ҵ�����ʵ����
 * @author Administrator
 *
 */
@Service
public class ServiceRealize implements FyhService {
	@Autowired
	private CustomerDao custDao;//用户表 dao接口
	@Override
	//查询用户表信息
	public List<Customer> getCustomer() {
		// TODO Auto-generated method stub
		return custDao.getCustomer();
	}

	@Override
	//注册 添加用户
	public int saveCustomer(Customer cusm) {
		// TODO Auto-generated method stub
		return custDao.saveCustomer(cusm);
	}

	@Override
	//查询手机号是否注册
	public List<Customer> getCustomerID(Customer cusm) {
		// TODO Auto-generated method stub
		return custDao.getCustomerID(cusm);
	}
}
