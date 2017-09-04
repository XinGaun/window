package com.service.zwdService;

import java.util.HashMap;
import java.util.List;

import com.alibaba.fastjson.JSON;
import com.entity.Loan;
import com.entity.LoanDetail;
import com.entity.LoanStatu;
import com.entity.UserTab;

/**
 * 类说明：贷款业务接口
 * 作者：张伟东
 * 当前时间2017年8月29日下午7:37:08
 */
public interface CheckLoanService {
	List<Loan> QueryLoans();			//查询全部的贷款申请表
	List<Loan> QueryInitLoan();			//查询未审核的贷款申请表
	List<LoanDetail>queryCustomerLoanDetail(int loanapplicationid) ;	//根据贷款id查看个人的贷款历史记录
	int updateLoan(LoanStatu loan) ;//审核贷款信息
	List<UserTab> queryAllUsers();	//查询全部的用户信息
	int updateLoanApplication(LoanStatu loan);		//修改贷款表的审核状态
	List<Loan> queryAuditLoans();
	List<HashMap<String,Object>> queryPassLoans(HashMap map);	//查询已审核过的贷款信息
	// 查看贷款详细前判断是否处于加锁状态 
	int queryModify(String loanid);	
	//根据贷款表的iD为贷款表加锁或者解锁
	public void upModify(List<LoanDetail> list);
}
