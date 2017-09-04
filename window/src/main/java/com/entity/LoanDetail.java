package com.entity;
/**
 * 类说明：贷款详情实体类
 * 作者：张伟东
 * 当前时间2017年8月31日下午8:11:41
 */
public class LoanDetail {
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
    private Long phoneNumber ;		//手机号
    private String address	;			//地址
    private int CardNumber;			//卡号
    private int stagesID ;			//分期数
    private String typeName ;		//贷款种类
    private String isLoan;			//是否贷款
    private int repaymentStatusID;	//还款状态
    private int modifyStatus	;	//加锁状态
    
	public int getModifyStatus() {
		return modifyStatus;
	}
	public void setModifyStatus(int modifyStatus) {
		this.modifyStatus = modifyStatus;
	}
	public int getRepaymentStatusID() {
		return repaymentStatusID;
	}
	public void setRepaymentStatusID(int repaymentStatusID) {
		this.repaymentStatusID = repaymentStatusID;
	}
	public int getLoanApplicationID() {
		return loanApplicationID;
	}
	public void setLoanApplicationID(int loanApplicationID) {
		this.loanApplicationID = loanApplicationID;
	}
	public int getCustomerID() {
		return customerID;
	}
	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public double getLoanMoney() {
		return loanMoney;
	}
	public void setLoanMoney(double loanMoney) {
		this.loanMoney = loanMoney;
	}
	public String getCause() {
		return cause;
	}
	public void setCause(String cause) {
		this.cause = cause;
	}
	public String getLoanDate() {
		return loanDate;
	}
	public void setLoanDate(String loanDate) {
		this.loanDate = loanDate;
	}
	public String getRepaymentDate() {
		return repaymentDate;
	}
	public void setRepaymentDate(String repaymentDate) {
		this.repaymentDate = repaymentDate;
	}
	public double getRepaymentAmount() {
		return repaymentAmount;
	}
	public void setRepaymentAmount(double repaymentAmount) {
		this.repaymentAmount = repaymentAmount;
	}
	public String getStatusName() {
		return statusName;
	}
	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}
	public String getCredibility() {
		return credibility;
	}
	public void setCredibility(String credibility) {
		this.credibility = credibility;
	}
	
	public Long getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(Long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getIsLoan() {
		return isLoan;
	}
	public void setIsLoan(String isLoan) {
		this.isLoan = isLoan;
	}
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getCardNumber() {
		return CardNumber;
	}
	public void setCardNumber(int cardNumber) {
		CardNumber = cardNumber;
	}
	public int getStagesID() {
		return stagesID;
	}
	public void setStagesID(int stagesID) {
		this.stagesID = stagesID;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
    
}
