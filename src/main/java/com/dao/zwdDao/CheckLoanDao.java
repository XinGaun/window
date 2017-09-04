package com.dao.zwdDao;

import java.util.HashMap;
import java.util.List;

import com.entity.Loan;
import com.entity.LoanDetail;
import com.entity.LoanStatu;
import com.entity.UserTab;

/**
 * 类说明：审核业务流程数据层
 * 作者：张伟东
 * 当前时间2017年8月29日下午7:21:40
 */
public interface CheckLoanDao {
	//查询全部的贷款申请表
	public	List<Loan> QueryLoans(HashMap map);			
	//查询未审核的贷款申请表
	public List<Loan> QueryInitLoan();			
	//根据用户id查看个人的贷款历史记录
	public List <LoanDetail>queryCustomerLoanDetail(int loanapplicationid) ;	
	//审核贷款信息（申请详情表）
	public int updateLoan(LoanStatu loan) ;
	//查询全部的用户信息
	public List<UserTab> queryAllUsers();	
	//修改贷款表的审核状态
	public int updateLoanApplication(HashMap map);		
	//查询已审核过的贷款信息
	public List<HashMap<String,Object>> queryPassLoans(HashMap map);	
	// 查看贷款详细前判断是否处于加锁状态 
	public List<HashMap<String,Object>> queryModify(HashMap map);	
	//根据贷款表的iD为贷款表加锁或者解锁
	public void upModify(HashMap map);
}
