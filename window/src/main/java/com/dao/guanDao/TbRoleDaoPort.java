package com.dao.guanDao;

import java.util.HashMap;
import java.util.List;

import com.entity.TbRole;
/**
 * 
* @Title: TbRoleDaoPort.java  
* @Package com.dao.guanDao  
* @Description: TODO(进行角色的增删改查)  
* @author 角色DAO层接口  
* @date 2017年8月30日
 */
public interface TbRoleDaoPort {
	/**
	 * 角色插入方法
	 * @param Tb
	 */
	public void addtbRole(TbRole Tb);
	/**
	 * 查询角色信息方法
	 * @param Tb
	 * @return
	 */
	public List<TbRole> querytbRole(TbRole Tb);
	/**
	 * 修改角色信息
	 * @param Tb
	 */
	public void updateRole(TbRole Tb);
	/**
	 * 添加角色_权限表信息
	 * @param map
	 */
	public void addTbRolePower(HashMap<String,Object> map);
	/**
	 * 通过角色ID删除角色_权限表信息
	 * @param id
	 */
	public void deleteRolePower(Integer roleId);
	/**
	 * 根据角色名称进行模糊搜索
	 * @param roleId
	 */
	public List<TbRole> queryRoleName(TbRole Tb);
}
