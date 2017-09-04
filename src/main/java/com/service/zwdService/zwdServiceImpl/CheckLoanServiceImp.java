package com.service.zwdService.zwdServiceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import com.alibaba.fastjson.JSON;
import com.dao.zwdDao.CheckLoanDao;
import com.entity.Loan;
import com.entity.LoanDetail;
import com.entity.LoanStatu;
import com.entity.UserTab;
import com.service.zwdService.CheckLoanService;



/**
 * 类说明：贷款业务实现类
 * 作者：张伟东
 * 当前时间2017年8月29日下午7:38:09
 */
@Service
public class CheckLoanServiceImp implements CheckLoanService{
	@Autowired
	private CheckLoanDao cpd;
	@Override
	/**
	 * 查询所有贷款申请
	 * @return 贷款的全部数据
	 */
	public List<Loan> QueryLoans() {
		// TODO Auto-generated method stub
		HashMap map = new HashMap();
		map.put("testid", 0);
		return cpd.QueryLoans(map);
	}
	/**
	 * 查询已审核过的贷款
	 * @return 贷款的全部数据
	 */
	public List<Loan> queryAuditLoans() {
		HashMap map = new HashMap();
		map.put("testid", 2);
		return cpd.QueryLoans(map);
	}
	@Override
	/**
	 * @return 未审核的申请贷款数据
	 */
	public List<Loan> QueryInitLoan() {
		return cpd.QueryInitLoan();
	}
	/**
	 * 根据用户id查看个人的贷款历史记录
	 * @return 用户贷款记录
	 */
	public List<LoanDetail> queryCustomerLoanDetail(int loanapplicationid) {
		return cpd.queryCustomerLoanDetail(loanapplicationid);
	}
	
	@Override
	public int updateLoan(LoanStatu loan) {
		// TODO Auto-generated method stub
		return cpd.updateLoan(loan);
	}
	/**
	 * 查询全部的用户
	 * @return 全部员工的信息
	 */
	@Override
	public List<UserTab> queryAllUsers() {
		// TODO Auto-generated method stub
		return cpd.queryAllUsers();
	}
	/**
	 * 修改贷款表的审核状态
	 */
	@Override
	public int updateLoanApplication(LoanStatu loan) {
		// TODO Auto-generated method stub
		int loanApplicationID = loan.getLoanApplicationID();
		int statusID = loan.getStatusID();
		HashMap map = new HashMap();
		map.put("statusID", statusID);
		map.put("loanApplicationID", loanApplicationID);
		cpd.updateLoanApplication(map);
		return cpd.updateLoan(loan);
	}
	/**
	 * 查看贷款的详细信息
	 * @param map 根据map是否为空判断是查看所有的贷款审核信息还是只查看某一贷款信息
	 * @return 返回多条或者一条贷款 详情
	 */
	public List<HashMap<String, Object>> queryPassLoans(HashMap map) {
			List<HashMap<String, Object>> list = cpd.queryPassLoans(map);
		return list;
	}
	
	@Override
	/**
	 * 查看贷款详细前判断是否处于加锁状态 
	 */
	public int queryModify(String loanid) {
		HashMap map = new HashMap();
		map.put("loanapplicationid", loanid);
		List<HashMap<String, Object>> queryModify = cpd.queryModify(map);
		int i =Integer.parseInt(queryModify.get(0).get("MODIFY_STATUS").toString());
		return i ;
	}
	/**
	 * 根据贷款表的iD为贷款表加锁或者解锁
	 */
	@Override
	public void upModify(List<LoanDetail> list) {
		HashMap map = new HashMap();
		//获取选择的贷款表的贷款id
		map.put("loanapplicationid", list.get(0).getLoanApplicationID());
		//当员工对某一贷款表的信息进行审核时候，对数据进行加锁
		if(list.get(0).getModifyStatus()==0){
			map.put("modify",1);
		}
		//当员工对某一贷款表的信息进审核完成或者取消审核的时候，对数据进行解锁
		if(list.get(0).getModifyStatus()==1){
			map.put("modify",0);
		}
		//更新贷款表的数据
		cpd.upModify(map);
	}
	
}
