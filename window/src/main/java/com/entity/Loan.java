package com.entity;

import com.util.FoverTime;

/**
 * 类说明：贷款申请实体类
 * 作者：张伟东
 * 当前时间2017年8月29日下午7:28:02
 */
public class Loan {
	private int loanApplicationID  ;		//贷款单编号
	private int customerID;			//贷款人id
	private String customerName ;	//贷款申请人姓名
	private double loanMoney ;		//贷款金额
	private String cause ;			//款项去向
	private  String loanDate	;	//贷款日期
    private String repaymentDate ; 	//还款日期
    private double repaymentAmount; //还款金额
    private String statusName ;		//状态说明
    private String credibility  ;	//诚信度
    private int  statusID	;		//状态
    
    
	
	public int getStatusID() {
		return statusID;
	}
	public void setStatusID(int statusID) {
		this.statusID = statusID;
	}
	public int getCustomerID() {
		return customerID;
	}
	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}
	public int getLoanApplicationID() {
		return loanApplicationID;
	}
	public void setLoanApplicationID(int loanApplicationID) {
		this.loanApplicationID = loanApplicationID;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCredibility() {
		return credibility;
	}
	public void setCredibility(String credibility) {
		this.credibility = credibility;
	}
	public double getLoanMoney() {
		return loanMoney;
	}
	public void setLoanMoney(double loanMoney) {
		this.loanMoney = loanMoney;
	}
	
	public String getRepaymentDate() {
		return repaymentDate;
	}
	public void setRepaymentDate(String repaymentDate) {
		this.repaymentDate = repaymentDate;
	}
	public String getCause() {
		return cause;
	}
	public void setCause(String cause) {
		this.cause = cause;
	}
	public double getRepaymentAmount() {
		
		return repaymentAmount;
	}
	public void setRepaymentAmount(double repaymentAmount) {
		this.repaymentAmount = repaymentAmount;
	}
	public String getLoanDate() {
		
		return loanDate;
	}
	public void setLoanDate(String loanDate) {
		
		this.loanDate = loanDate;
	}
	public String getStatusName() {
		return statusName;
	}
	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}

}
