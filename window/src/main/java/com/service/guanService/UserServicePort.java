package com.service.guanService;

import java.util.List;

import com.entity.UserTab;
/**
 * 
* @Title: UserServicePort.java  
* @Package com.service.guanService  
* @Description: TODO(用户逻辑业务层)  
* @author 用户Service层接口  
* @date 2017年8月30日
 */
public interface UserServicePort {
	/**
	 * 查询用户信息
	 * @param ut
	 * @return
	 */
	public List<UserTab> query(UserTab ut);
	/**
	 * 添加一个用户
	 * @param ut
	 */
	public String addUser(UserTab ut);
	/**
	 * 修改用户信息
	 * @param ut
	 */
	public String updateUser(UserTab ut);
}
