package com.web.fyhWeb;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.entity.Customer;
import com.service.fyhService.FyhService;
import com.util.MD5;

/**
 * ���Ʋ�
 * @author Administrator
 *
 */
@Controller
public class FyhController {
	@Autowired
	private FyhService fservice;
	private MD5 md5;
	@RequestMapping("/getcustomer")
	//查询用户表信息
	public void getCust(){
		List<Customer> getCustomer = fservice.getCustomer();
	}
	@RequestMapping("/savecustomer")
	//注册 添加用户表信息
	public String saveCust(@RequestBody String data,HttpServletResponse response){
		response.setCharacterEncoding("utf-8");
		Customer cust = JSON.parseObject(data,Customer.class);
		List<Customer> getCustomer = fservice.getCustomerID(cust);//查询 手机号是否注册
		System.out.println(getCustomer.size());
		if(getCustomer.size()>0){//手机号已注册
			try {
				response.getWriter().write(JSON.toJSONString(1));
				response.getWriter().flush();
				response.getWriter().close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}
		String passw = md5.md5(cust.getPassw());//密码加密
		cust.setPassw(passw);
		fservice.saveCustomer(cust);//注册 添加用户
		try {
			response.getWriter().write(JSON.toJSONString(2));
			response.getWriter().flush();
			response.getWriter().close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	@RequestMapping("/login")
	//登录
	public String login(@RequestBody String data,HttpServletResponse response){
		System.out.println(data);
		Customer cust = JSON.parseObject(data,Customer.class);
		String passw = cust.getPassw();
		List<Customer> getCustomer = fservice.getCustomerID(cust);//查询 手机号是否注册
		if(getCustomer.size()==0){//手机号未注册
			try {
				response.getWriter().write(JSON.toJSONString(1));
				response.getWriter().flush();
				response.getWriter().close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}
		//验证密码是否相等
		if(!getCustomer.get(0).getPassw().equals(md5.md5(passw))){
			try {
				response.getWriter().write(JSON.toJSONString(2));
				response.getWriter().flush();
				response.getWriter().close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}
		//登录成功
		try {
			response.getWriter().write(JSON.toJSONString(3));
			response.getWriter().flush();
			response.getWriter().close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
