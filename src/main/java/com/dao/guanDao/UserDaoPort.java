package com.dao.guanDao;



import java.util.HashMap;
import java.util.List;

import com.entity.TbRole;
import com.entity.UserTab;
/**
 * 用户DAO层类
 * @author Administrator
 *
 */
public interface UserDaoPort {
	/**
	 * 查询用户信息接口
	 * @param ut
	 * @return 返回用户信息
	 */
	public List<UserTab> queryUser(UserTab ut);
	/**
	 * 添加一个用户
	 * @param ut
	 */
	public void addUser(UserTab ut);
	/**
	 * 修改用户信息
	 * @param ut
	 */
	public void updateUser(UserTab ut);
	/**
	 * 根据用户名称查询用户
	 * @param username
	 */
	public List<UserTab> finUserByUsername(String username);
	/**
	 * 根据用户手机号查询用户信息
	 */
	public List<UserTab> queryUserCall(UserTab tb);
	/**
	 * 生成添加员工时的角色树
	 * 
	 * @return
	 */
	public List<HashMap<String,Object>> queryTbRole();
	/**
	 * 添加员工角色关联表
	 * @param userId
	 * @param roleId
	 */
	public void addTbUserRole(HashMap<String,Object> map);
	/**
	 * 根据员工ID删除相关角色——员工表信息
	 */
	public void deleteUserRole(HashMap<String,Object> map);
	/**
	 * 根据员工ID和角色ID查询是否被赋予这个角色
	 * @return
	 */
	public List<HashMap<String,Object>> queryUserRole(HashMap<String,Object> map);
	/**
	 * 根据员工手机号去查询角色和权限信息
	 */
	public List<HashMap<String,Object>> queryCallUserRolePower(UserTab tab);
	/**
	 * 通过员工名称进行模糊查询
	 * @param ut
	 * @return
	 */
	public List<UserTab> queryDimUserName(UserTab ut);
}
