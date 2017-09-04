package com.entity;
/**
 * �û���
 * @author Administrator
 *
 */
public class Customer {
	private int customerID;//用户id			
	private String phoneNumber;//电话号码
	private String passw;//密码
	public int getCustomerID() {
		return customerID;
	}
	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getPassw() {
		return passw;
	}
	public void setPassw(String passw) {
		this.passw = passw;
	}
}
