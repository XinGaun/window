package com.dao.guanDao;



import java.util.List;

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
}
