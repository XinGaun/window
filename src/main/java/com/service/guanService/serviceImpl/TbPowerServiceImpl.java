package com.service.guanService.serviceImpl;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.alibaba.fastjson.JSON;
import com.dao.guanDao.TbPowerDaoPort;
import com.entity.TbPower;
import com.service.guanService.TbPowerServicePort;
/**
 * 
 * @Title: TbPowerServiceImpl.java  
 * @Package com.service.guanService.serviceImpl  
 * @Description: TODO(进行权限的业务逻辑操作)  
 * @author   权限Service层接口实现类
 * @date 2017年8月31日
 */
@Service
public class TbPowerServiceImpl implements TbPowerServicePort {
	@Autowired
	private TbPowerDaoPort tbPowerDaoPort;//调用权限DAO层接口
	/**
	 * 添加一个权限
	 */
	@Override
	public String addTbPower(TbPower tp) {
		// TODO Auto-generated method stub
		tbPowerDaoPort.addTbPower(tp);
		return JSON.toJSONString("success");
	}
	/**
	 * 查询权限信息
	 */
	@Override
	public List<TbPower> queryPower(TbPower tp) {
		// TODO Auto-generated method stub
		return tbPowerDaoPort.queryPower(tp);
	}
	/**
	 * 修改权限信息
	 */
	@Transactional
	public String updatePower(TbPower tp) {
		// TODO Auto-generated method stub
		if(tp.getPowerPid()==tp.getPowerId()){
			tp.setPowerPid(0);
		}
		tbPowerDaoPort.updatePower(tp);

		return JSON.toJSONString("success");
	}
	/**
	 * 实现通过关键字模糊查询权限信息
	 */
	@Override
	public List<TbPower> vague(String str) {
		// TODO Auto-generated method stub
		String Key = null;
		List<TbPower> list = null;	
		try {
			str= new String(str.getBytes("ISO-8859-1"),"utf-8");			
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return tbPowerDaoPort.vague(str);
	}
	/**
	 * 通过权限PID查询
	 * @return
	 */
	@Transactional
	public List<HashMap<String, Object>> Userquery(Integer id,Integer roleId) {
		// TODO Auto-generated method stub
		List<HashMap<String,Object>> map =new ArrayList<HashMap<String, Object>>();
		if(roleId==null||roleId.equals("")){	//判断是添加角色的树 还是修改角色的树				
			if(id==null||id.equals("")||id==0){//判断是否为最高级节点
				id = 0;
				map = tbPowerDaoPort.Userquery(id);
				for(int i=0;i<map.size();i++){
					map.get(i).put("id",map.get(i).get("POWER_ID"));
					map.get(i).put("text",map.get(i).get("POWER_NAME"));
					map.get(i).put("attributes",map.get(i).get("POWER_ROAD"));
					List<TbPower> numList = tbPowerDaoPort.queryPid(map.get(i));
					if(numList.size()!=0){
						map.get(i).put("state","closed");
					}
					    		
				}
				return map;
			}else{
				map = tbPowerDaoPort.Userquery(id);
				for(int i=0;i<map.size();i++){
					map.get(i).put("id",map.get(i).get("POWER_ID"));
					map.get(i).put("text",map.get(i).get("POWER_NAME"));
					map.get(i).put("attributes",map.get(i).get("POWER_ROAD"));
					List<TbPower> numList = tbPowerDaoPort.queryPid(map.get(i));
					if(numList.size()!=0){
						map.get(i).put("state","closed"); 
					}		
				}
				return map;
			}
		}else{
			//修改角色的权限树
			if(id==null||id.equals("")||id==0){//判断是否为最高级节点
				id = 0;
				map = tbPowerDaoPort.Userquery(id);
				for(int i=0;i<map.size();i++){
					map.get(i).put("id",map.get(i).get("POWER_ID"));
					map.get(i).put("roleId", roleId);
					map.get(i).put("text",map.get(i).get("POWER_NAME"));
					String ss= map.get(i).get("POWER_ROAD").toString();
					map.get(i).put("attributes","{url:'"+ss+"'}");
					List<HashMap<String,Object>> quanjuse = tbPowerDaoPort.queryTbRolePower(map.get(i));
					if(quanjuse.size()!=0){
						map.get(i).put("checked","true");
					}			
					List<TbPower> numList = tbPowerDaoPort.queryPid(map.get(i));
					if(numList.size()!=0){
						map.get(i).put("state","closed");
					}    		
				}
				return map;
			}else{
				map = tbPowerDaoPort.Userquery(id);
				for(int i=0;i<map.size();i++){
					map.get(i).put("id",map.get(i).get("POWER_ID"));
					map.get(i).put("roleId", roleId);
					map.get(i).put("text",map.get(i).get("POWER_NAME"));
					String ss= map.get(i).get("POWER_ROAD").toString();
					map.get(i).put("attributes","{url:'"+ss+"'}");
					List<HashMap<String,Object>> quanjuse = tbPowerDaoPort.queryTbRolePower(map.get(i));
					if(quanjuse.size()!=0){//判断是否被选择
						map.get(i).put("checked","true");
					}		
					
					List<TbPower> numList = tbPowerDaoPort.queryPid(map.get(i));
					if(numList.size()!=0){
						map.get(i).put("state","closed");
					}		
				}
				return map;
			}
		}
	}

}
