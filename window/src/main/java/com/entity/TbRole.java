package com.entity;

import java.util.ArrayList;
import java.util.List;

/**
 * 角色实体类
 * @author Administrator
 *
 */
public class TbRole {
	private int roleId;//角色ID
	private String roleName ="0";//角色名称
	private String userRoleKeywords ="0";//关键字
	private String userRoleStatus;//状态
	private List<TbPower> rows= new ArrayList<TbPower>();
	

	public List<TbPower> getRows() {
		return rows;
	}
	public void setRows(List<TbPower> rows) {
		this.rows = rows;
	}
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public String getUserRoleKeywords() {
		return userRoleKeywords;
	}
	public void setUserRoleKeywords(String userRoleKeywords) {
		this.userRoleKeywords = userRoleKeywords;
	}
	public String getUserRoleStatus() {
		return userRoleStatus;
	}
	public void setUserRoleStatus(String userRoleStatus) {
		this.userRoleStatus = userRoleStatus;
	}
	
}
