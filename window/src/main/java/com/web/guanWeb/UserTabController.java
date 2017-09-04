package com.web.guanWeb;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.entity.UserTab;
import com.service.guanService.UserServicePort;
import com.util.MD5;
/**
 * User控制器层
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/User")
public class UserTabController {
	MD5 md5 = new MD5();
	@Autowired
	private UserServicePort userServicePort;//调用用户Service层方法
	/**
	 * 使用shiro验证用户登录
	 */
	@RequestMapping("/verification")
	public String verification(@RequestBody String data,HttpServletResponse response){
		response.setContentType("text/html;charset=UTF-8");//设置返回编码格式
		//获得当前用户对象
		UserTab userTab = JSON.parseObject(data,UserTab.class);
		Subject subject = SecurityUtils.getSubject();//未认证状态
		String pwd=userTab.getUserPassword();
		pwd = md5.md5(pwd);
		userTab.setUserPassword(pwd);//MD5加密
		//构造一个用户名密码令牌
		AuthenticationToken token = new UsernamePasswordToken(userTab.getUserCall(),userTab.getUserPassword());
		try {
			subject.login(token);
		} catch (UnknownAccountException e) {
			// TODO: handle exception
			e.getMessage();//没有该用户
			try {
				response.getWriter().write(JSON.toJSONString("没有该用户!"));
				response.getWriter().flush();
				response.getWriter().close();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
				return "error";
			}
			
		}catch(Exception e){
			e.getMessage();//用户密码错误
			
			try {
				response.getWriter().write(JSON.toJSONString("用户密码错误!"));
				response.getWriter().flush();
				response.getWriter().close();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
				return "error";
			}
		}
		try {
			response.getWriter().write(JSON.toJSONString("登录成功!"));
			response.getWriter().flush();
			response.getWriter().close();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			return "error";
		}
		
		return "error";
	}
	/**
	 * 用户信息查询
	 */
	@RequestMapping("/queryUser")
	@ResponseBody
	public List<UserTab> queryUser(HttpServletResponse response){
		response.setContentType("text/html;charset=utf-8");
		return userServicePort.query(new UserTab());
	}
	/**
	 * 跳转到用户管理界面
	 * @return
	 */
	
	@RequestMapping("/zhuanUser")
	public String zhuanUser(){
		return "/User/User";
	}
	/**
	 * 插入用户
	 */
	@RequestMapping("/addUser")
	@ResponseBody
	public String addUser(@RequestBody String data,HttpServletResponse response){
		response.setContentType("text/html;charset=utf-8");
		UserTab userTab = JSON.parseObject(data,UserTab.class);
		return userServicePort.addUser(userTab);		
	}
	/**
	 * 更新用户信息
	 */
	@RequestMapping("/updateUser")
	@ResponseBody
	public String updateUser(@RequestBody String data,HttpServletResponse response){
		response.setContentType("text/html;charset=utf-8");
		UserTab userTab = JSON.parseObject(data,UserTab.class);	
		return userServicePort.updateUser(userTab);
	}
}
