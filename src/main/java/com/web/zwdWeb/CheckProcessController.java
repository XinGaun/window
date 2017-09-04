package com.web.zwdWeb;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.entity.Loan;
import com.entity.LoanDetail;
import com.entity.LoanStatu;
import com.entity.UserTab;
import com.entity.UserZwd;
import com.service.zwdService.CheckLoanService;
import com.util.FoverTime;

/**
 * 类说明：
 * 作者：张伟东
 * 当前时间2017年8月29日下午7:40:22
 */
@Controller
public class CheckProcessController {
	@Autowired
	private CheckLoanService cps ;
	/**
	 * 查看全部未审核贷款信息
	 * @param resp
	 */
	@RequestMapping("/findAllLoans")
	public void findProcess(HttpServletResponse resp){
		resp.setCharacterEncoding("utf-8");
		List<Loan> list = cps.QueryLoans();
		try {  
			resp.getWriter().print(JSON.toJSONString(list));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	/**
	 * 查看已经审核或者驳回的贷款信息
	 * @param resp
	 */
	@RequestMapping("/queryAuditLoans")
	public void queryAuditLoans(HttpServletResponse resp ){
		List<HashMap<String, Object>> list =cps.queryPassLoans(null);
		resp.setCharacterEncoding("utf-8");
		try {  
			resp.getWriter().print(JSON.toJSONString(list));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * 根据贷款单号查看贷款的详细信息
	 * @param loanApplicationID 贷款单号
	 * @param resp
	 * @return 返回贷款表查看审核进度和详细资料
	 */
	@RequestMapping("/queryLoanById")
	public void queryLoanById(@RequestBody String loanApplicationID ,HttpServletResponse resp ){
		HashMap map = new HashMap();
		map.put("loanApplicationID", loanApplicationID);
		List<HashMap<String, Object>> list =cps.queryPassLoans(map);
		resp.setCharacterEncoding("utf-8");
		try {  
			resp.getWriter().print(JSON.toJSONString(list));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@RequestMapping("/AuditLoans")
	public String jin(){
		return "audit";
	}
	/**
	 *查看未审核的贷款清单
	 * @param resp
	 */
	@RequestMapping("/findInitLoans")
	public void findInitLoans(HttpServletResponse resp){
		List<Loan> list = cps.QueryInitLoan();
		FoverTime.getOut(resp).println(JSON.toJSONString(list));
	}
	@RequestMapping("/home")
	public String backStage(){
		return "initLoans";
	}
	/**
	 * 查看贷款详情 为审核的贷款设置加锁
	 * @param loanApplicationID 贷款单的id
	 * @param resp
	 */
	@RequestMapping("/findLoanDetail")
	public void findLoanDetail(@RequestBody String loanApplicationID,HttpServletResponse resp){
		//根据用户id查看个人的贷款历史记录
		List<LoanDetail> list = cps.queryCustomerLoanDetail(Integer.parseInt(loanApplicationID));
		cps.upModify(list);
		try {
			resp.setCharacterEncoding("utf-8");
			resp.getWriter().println(JSON.toJSONString(list));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * 审核贷款的状态
	 * @param loan	贷款实体类
	 * @param resp
	 */
	@RequestMapping("/updateLoanStatu")
	public void updateLoanStatu(@RequestBody String loan,HttpServletResponse resp){
		LoanStatu lo = JSON.parseObject(loan,LoanStatu.class);
	
		int upStatu = cps.updateLoan(lo);
			try {
				resp.getWriter().print(JSON.toJSONString("1"));
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		}
	}
	/**
	 * 测试专用
	 * @return
	 */
	@RequestMapping("/test")
	public String test(){
		return "test";
	}
	/**
	 * 查看贷款信息是否正在被人审核
	 * @param loanApplicationID 贷款id
	 */
	@RequestMapping("/queryModify")
	public void queryModify(@RequestBody String loanApplicationID,HttpServletResponse resp){
		//查看贷款详细前判断是否处于加锁状态 
		int statuId = cps.queryModify(loanApplicationID);
		try {
			resp.getWriter().print(JSON.toJSONString(statuId));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * 查看系统用户
	 * @param resp
	 */
	@RequestMapping("/findAllUsers")
	public void queryAllUsers(HttpServletResponse resp){
		resp.setCharacterEncoding("utf-8");
		List<UserTab> list = cps.queryAllUsers();
		List<UserZwd> lis = new ArrayList<UserZwd>();
		for (int i = 0; i < list.size(); i++) {
			UserZwd uz = new UserZwd();
			uz.setUserId(list.get(i).getUserId());
			uz.setUserName(list.get(i).getUserName());
			lis.add(uz);
		}
		try {
			resp.getWriter().println(JSON.toJSONString(lis));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@RequestMapping("/updateLoanApplication")
	public void updateLoanApplication(@RequestBody String loan ,HttpServletResponse resp){
		LoanStatu lo = JSON.parseObject(loan,LoanStatu.class);
		cps.updateLoanApplication(lo);
		try {
			resp.getWriter().print(JSON.toJSONString("1"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
