package com.entity;
/**
 * 类说明：贷款审核实体类
 * 作者：张伟东
 * 当前时间2017年8月31日下午11:39:59
 */
public class LoanStatu {
	private int staffID	;
	private int userID ;
	private String resultFirst;
	private int loanApplicationID;
	private int checkResult;
	private int  statusID	;		//状态
	private int firstMoney ;		//审批金钱
	
	public int getFirstMoney() {
		return firstMoney;
	}
	public void setFirstMoney(int firstMoney) {
		this.firstMoney = firstMoney;
	}
	public int getStatusID() {
		return statusID;
	}
	public void setStatusID(int statusID) {
		this.statusID = statusID;
	}
	public int getCheckResult() {
		return checkResult;
	}
	public void setCheckResult(int checkResult) {
		this.checkResult = checkResult;
	}
	public int getStaffID() {
		return staffID;
	}
	public void setStaffID(int staffID) {
		this.staffID = staffID;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}

	public String getResultFirst() {
		return resultFirst;
	}
	public void setResultFirst(String resultFirst) {
		this.resultFirst = resultFirst;
	}
	public int getLoanApplicationID() {
		return loanApplicationID;
	}
	public void setLoanApplicationID(int loanApplicationID) {
		this.loanApplicationID = loanApplicationID;
	}
	
}
