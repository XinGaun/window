package com.service.guanService.serviceImpl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.alibaba.fastjson.JSON;
import com.dao.guanDao.UserDaoPort;
import com.entity.UserTab;
import com.service.guanService.UserServicePort;
import com.util.MD5;
/**
 * 
* @Title: UserServiceImpl.java  
* @Package com.service.guanService.serviceImpl  
* @Description: TODO(用户逻辑业务操作类)  
* @author 用户service层接口实现类 
* @date 2017年8月30日
 */
@Service
public class UserServiceImpl implements UserServicePort {
	MD5 md5 = new MD5();
	@Autowired
	private UserDaoPort userdaoprot;//用户DAO层接口引用
	/**
	 * 查询用户信息
	 */
	@Override
	public List<UserTab> query(UserTab ut) {
		// TODO Auto-generated method stub
		return userdaoprot.queryUser(ut);
	}
	/**
	 * 插入用户信息
	 */
	@Transactional	
	public String addUser(UserTab ut) {
		// TODO Auto-generated method stub
		String pwd = ut.getUserPassword();
		pwd = md5.md5(pwd);
		ut.setUserPassword(pwd);
		userdaoprot.addUser(ut);
		return JSON.toJSONString("success");
	}
	/**
	 * 修改用户信息
	 */
	@Transactional	
	public String updateUser(UserTab ut) {
		// TODO Auto-generated method stub
		String pwd = ut.getUserPassword();
		userdaoprot.updateUser(ut);
		return JSON.toJSONString("success");
	}


}
