package com.service.guanService;

import java.util.HashMap;
import java.util.List;

import com.entity.TbRole;

/**
 * 
* @Title: TbRoleServicePort.java  
* @Package com.service.guanService  
* @Description: TODO(进行角色的业务操作)  
* @author 角色Service层接口
* @date 2017年8月30日
 */
public interface TbRoleServicePort {
	/**
	 * 进行员工插入方法
	 * @param Tb
	 */
	public String addtbRole(HashMap map);
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
	public String updateRole(TbRole tb);
	public List<TbRole> querytbRoleName(String roleName);
}
