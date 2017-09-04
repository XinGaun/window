package com.web.guanWeb;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.entity.TbPower;
import com.service.guanService.TbPowerServicePort;

/**
 * 
* @Title: TbPowerController.java  
* @Package com.web.guanWeb  
* @Description: TODO(接收传输权限数据)  
* @author 权限控制层  
* @date 2017年8月31日
 */
@Controller
@RequestMapping("/TbPower")
public class TbPowerController {
	@Autowired
	private TbPowerServicePort tbPowerServicePort;//调用权限Service层接口
	/**
	 * 添加权限
	 */
	@RequestMapping("/addTbPower")
	@ResponseBody
	public String addTbPower(@RequestBody String data,HttpServletResponse response){			
		return tbPowerServicePort.addTbPower(JSON.parseObject(data,TbPower.class));//添加权限			 	
	}
	/**
	 * 查询权限
	 */
	@RequestMapping("/queryTbPower")
	@ResponseBody
	public List<TbPower> queryTbPower(HttpServletResponse response){
		response.setContentType("text/html;charset=UTF-8");
		return tbPowerServicePort.queryPower(new TbPower());
		
	}
	/**
	 * 跳转到权限管理页面
	 * @return
	 */
	@RequestMapping("/zhuanTbPower")
	public String zhuanTbPower(){
		return "User/TbPower";
	}
	/**
	 * 修改权限信息
	 * @param data
	 * @param response
	 * @return
	 */
	@RequestMapping("/updatePower")
	@ResponseBody
	public String updatePower(@RequestBody String data,HttpServletResponse response){
		response.setContentType("text/html;charset=UTF-8");//设置返回编码格式	
		return tbPowerServicePort.updatePower(JSON.parseObject(data,TbPower.class));		
	}
	/**
	 * 验证权限名或关键字是否唯一
	 * @param data
	 * @param response
	 * @return
	 */
	@RequestMapping("/queryPowerName")
	@ResponseBody
	public List<TbPower> queryPowerName(@RequestBody String data,HttpServletResponse response){
		response.setContentType("text/html;charset=UTF-8");//设置返回编码格式			
		return tbPowerServicePort.queryPower(JSON.parseObject(data,TbPower.class));
	}
	
	/**
	 * 权限模糊查询
	 * @param powerKey
	 * @return
	 */
	@RequestMapping("/vague")
	@ResponseBody
	public List<TbPower> vague(String powerKey,HttpServletResponse response){
		response.setContentType("text/html;charset=UTF-8");//设置返回编码格式
		return tbPowerServicePort.vague(powerKey);
	}
	/**
	 * 生成添加角色的权限树
	 * @param data
	 * @param response
	 */
	@RequestMapping("/RolePower")
	@ResponseBody
	public List<HashMap<String,Object>> RolePower(Integer roleId,Integer id,HttpServletResponse response){
		response.setContentType("text/html;charset=UTF-8");			
		return tbPowerServicePort.Userquery(id,roleId);
	}
}
