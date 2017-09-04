package com.entity;

import java.util.ArrayList;
import java.util.List;

/**
 * 员工实体类
 * @author Administrator
 *
 */
public class UserTab {
	private int userId =0; //ID
	private String userName; //名称
	private String userPassword;//密码
	private float userSalary;//工资
	private String userSex;//性别
	private String userCall = "0";//手机号
	private String identityCard ="0";//身份证
	private String userRemark;//备注
	private String userStatus ="禁用";//状态
	private List<Integer> rows = new ArrayList<Integer>();
	
	public List<Integer> getRows() {
		return rows;
	}
	public void setRows(List<Integer> rows) {
		this.rows = rows;
	}
	public String getUserStatus() {
		return userStatus;
	}
	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public float getUserSalary() {
		return userSalary;
	}
	public void setUserSalary(float userSalary) {
		this.userSalary = userSalary;
	}
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	public String getUserCall() {
		return userCall;
	}
	public void setUserCall(String userCall) {
		this.userCall = userCall;
	}
	public String getIdentityCard() {
		return identityCard;
	}
	public void setIdentityCard(String identityCard) {
		this.identityCard = identityCard;
	}
	public String getUserRemark() {
		if(this.userRemark==null){
			setUserRemark("...");
		}
		return userRemark;
	}
	public void setUserRemark(String userRemark) {
		this.userRemark = userRemark;
	}

	
}
