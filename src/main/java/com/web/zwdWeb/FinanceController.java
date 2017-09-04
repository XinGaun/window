package com.web.zwdWeb;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.service.zwdService.FinanceService;

/**
 * 类说明：
 * 作者：张伟东
 * 当前时间2017年9月2日下午8:18:58
 */
@Controller
public class FinanceController {
	@Autowired
	private FinanceService fs ;
	@RequestMapping("/initFinance")
	public void  queryPassLoans(HttpServletResponse resp){
		resp.setCharacterEncoding("utf-8");
		System.out.println(fs.queryPassLoan(null).size());
		try {
			resp.getWriter().print(JSON.toJSONString(fs.queryPassLoan(null)));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@RequestMapping("/goFinance")
	public String goFinance(){
		return "finance";
	}
}
