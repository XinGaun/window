package com.service.guanService;

import java.util.HashMap;
import java.util.List;

import com.entity.TbRole;
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
	/**
	 * 验证用户手机号是否唯一
	 * @param data
	 * @return
	 */
	public String queryUserCall(String data);
	/**
	 * 生成添加员工的角色树
	 * @param id
	 * @return
	 */
	public List<HashMap<String,Object>> queryTbRole(String data);
	/**
	 * 通过员工名称进行模糊查询
	 * @return
	 */
	public List<UserTab> queryDimUserName(String userName);
}
