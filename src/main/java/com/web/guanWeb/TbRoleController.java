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
import com.entity.TbRole;
import com.service.guanService.TbRoleServicePort;

/**
 * 
* @Title: TbRoleController.java  
* @Package com.web.guanWeb  
* @Description: TODO(接收角色操作的数据和返回数据)  
* @author 角色管理器  
* @date 2017年8月30日
 */

@Controller
@RequestMapping("/tbrole")
public class TbRoleController {
	@Autowired
	private TbRoleServicePort roleServicePort;//调用角色Service层接口实现业务逻辑操作
	/**
	 * 查询角色信息
	 * @param response
	 * @return
	 */
	@RequestMapping("queryTbRole")
	@ResponseBody
	public List<TbRole> queryTbRole(HttpServletResponse response){
		response.setContentType("text/html;charset=UTF-8");//设置返回编码格式		
		return roleServicePort.querytbRole(new TbRole());	
	}
	/**
	 * 角色添加方法
	 */
	@RequestMapping("/addTbRole")
	@ResponseBody
	public String addTbRole(@RequestBody String data,HttpServletResponse response){
		response.setContentType("text/html;charset=UTF-8");//设置返回编码格式
		HashMap<String,Object> map = JSON.parseObject(data,HashMap.class);	
		return roleServicePort.addtbRole(map);

	}
	/**
	 * 跳转到角色管理界面
	 * @return
	 */
	@RequestMapping("/zhuanTbRole")
	public String zhuanTbRole(){
		return "/User/TbRole";
	}
	/**
	 * 修改角色信息
	 * @param data
	 * @param response
	 * @return
	 */
	@RequestMapping("/updateRole")
	@ResponseBody
	public String updateRole(@RequestBody String data,HttpServletResponse response){
		response.setContentType("text/html;charset=UTF-8");//设置返回编码格式
		TbRole map = JSON.parseObject(data,TbRole.class);	
		return roleServicePort.updateRole(map);
	}
	/**
	 * 验证角色名或关键字是否重复
	 * @param data
	 * @param response
	 * @return
	 */
	@RequestMapping("/queryTbRoleNameKey")
	@ResponseBody
	public List<TbRole> queryTbRoleNameKey(@RequestBody String data,HttpServletResponse response){
		response.setContentType("text/html;charset=UTF-8");//设置返回编码格式
		TbRole tr = JSON.parseObject(data,TbRole.class);
		return roleServicePort.querytbRole(tr);
	}
	/**
	 * 根据角色名称查询数据
	 * @return
	 */
	@RequestMapping("/queryTbRoleName")
	@ResponseBody
	public List<TbRole> queryTbRoleName(String roleName){
		return roleServicePort.querytbRoleName(roleName);		
	}
	
}
