package com.service.guanService;

import java.util.HashMap;
import java.util.List;

import com.entity.TbPower;
/**
 * 
* @Title: TbPowerServicePort.java  
* @Package com.service.guanService  
* @Description: TODO(进行权限业务操作)  
* @author 权限Service层接口
* @date 2017年8月31日
 */
public interface TbPowerServicePort {
	/**
	 * 添加一个权限
	 * @param tp
	 */
	public String addTbPower(TbPower tp);
	/**
	 * 查询所有权限,如果输入权限名称或ID就查询相关权限信息
	 * @param tp
	 * @return
	 */
	public List<TbPower> queryPower(TbPower tp);
	/**
	 * 修改权限信息
	 * @param tp
	 */
	public String updatePower(TbPower tp);
	/**
	 * 通过关键字实现模糊查询
	 * @param str
	 * @return
	 */
	public List<TbPower> vague(String str);
	/**
	 * 通过权限PID查询
	 * @return
	 */
	public List<HashMap<String,Object>> Userquery(Integer id,Integer roleId);
}	
