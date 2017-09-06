package com.service.guanService.serviceImpl;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.alibaba.fastjson.JSON;
import com.dao.guanDao.UserDaoPort;
import com.entity.TbRole;
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

	public String addUser(UserTab ut) {
		// TODO Auto-generated method stub
		String pwd = ut.getUserPassword();
		pwd = md5.md5(pwd);
		ut.setUserPassword(pwd);
		userdaoprot.addUser(ut);
		HashMap<String,Object> UserMap = new HashMap<String,Object>();
		UserMap.put("userId",userdaoprot.queryUserCall(ut).get(0).getUserId());
		for(int i=0;i<ut.getRows().size();i++){
			UserMap.put("roleId",ut.getRows().get(i));
			userdaoprot.addTbUserRole(UserMap);
		}
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
		HashMap IDMap = new HashMap();
		IDMap.put("userId",ut.getUserId());
		userdaoprot.deleteUserRole(IDMap);
		List<Integer> numList = ut.getRows();
		for(int i=0;i<numList.size();i++){
			IDMap.put("roleId",numList.get(i));
			userdaoprot.addTbUserRole(IDMap);
		}		
		return JSON.toJSONString("success");
	}
	/**
	 * 验证用户手机号是否唯一
	 */
	@Transactional
	public String queryUserCall(String data) {
		// TODO Auto-generated method stub
		UserTab ut = JSON.parseObject(data,UserTab.class);
		List<UserTab> UserList = userdaoprot.queryUserCall(ut);
		if(UserList.size()==0){
			return JSON.toJSONString("success");
		}
		return JSON.toJSONString("error");
	}
	/**
	 * 生成添加员工的角色树
	 */
	@Transactional
	public List<HashMap<String,Object>> queryTbRole(String data) {
		// TODO Auto-generated method stub
		UserTab ut = JSON.parseObject(data,UserTab.class);
		Integer userId = ut.getUserId();
		List<HashMap<String,Object>> ListMap = userdaoprot.queryTbRole();	 
		if(userId==0){//判断是添加用户还是修改用户
			for(int i=0;i<ListMap.size();i++){
				ListMap.get(i).put("id",ListMap.get(i).get("ROLE_ID"));
				ListMap.get(i).put("checked"," ");
				ListMap.get(i).put("text",ListMap.get(i).get("ROLE_NAME"));
			}
			return ListMap;
		}else{			
			for(int i=0;i<ListMap.size();i++){
				ListMap.get(i).put("id",ListMap.get(i).get("ROLE_ID"));
				ListMap.get(i).put("text",ListMap.get(i).get("ROLE_NAME"));
				ListMap.get(i).put("userId", userId);
				List<HashMap<String,Object>> numList = userdaoprot.queryUserRole(ListMap.get(i));
				if(numList.size()>0){
					ListMap.get(i).put("checked","checked='checked'");
				}else{
					ListMap.get(i).put("checked"," ");
				}
			}
			return ListMap;
		}
		
		
	}
	/**
	 * 通过员工名称进行模糊查询
	 * @return
	 */
	@Transactional
	public List<UserTab> queryDimUserName(String userName) {
		// TODO Auto-generated method stub
		try {
			userName = new String(userName.getBytes("ISO-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		UserTab userTab = new UserTab();
		userTab.setUserName(userName);
		return userdaoprot.queryDimUserName(userTab);
	}


}
