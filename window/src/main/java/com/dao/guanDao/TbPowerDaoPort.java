package com.dao.guanDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.entity.TbPower;
/**
 * 
* @Title: TbPowerDaoPort.java  
* @Package com.dao.guanDao  
* @Description: TODO(权限的增删查改接口)  
* @author 权限DAO接口层  
* @date 2017年8月31日
 */
public interface TbPowerDaoPort {
	/**
	 * 添加一个权限
	 * @param tp
	 */
	public void addTbPower(TbPower tp);
	/**
	 * 查询所有权限,如果输入权限名称或ID就查询相关权限信息
	 * @param tp
	 * @return
	 */
	public List<TbPower> queryPower(TbPower tp);
	/**
	 * 修改权限信息
	 * @param tp
	 */
	public void updatePower(TbPower tp);
	/**
	 * 通过关键字实现模糊查询
	 * @param str
	 * @return
	 */
	public List<TbPower> vague(String str);
	/**
	 * 通过权限PID查询
	 * @return
	 */
	public List<HashMap<String,Object>> Userquery(@Param("categoryId")Integer categoryId);
	/**
	 * 查询角色关联权限表
	 * @param map
	 * @return
	 */
	public List<HashMap<String,Object>> queryTbRolePower(HashMap<String,Object> map);
	/**
	 * 根据Pid查询权限信息
	 * @param pid
	 * @return
	 */
	public List<TbPower> queryPid(HashMap<String,Object> pid);
}
