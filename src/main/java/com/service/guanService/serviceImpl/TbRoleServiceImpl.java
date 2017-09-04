package com.service.guanService.serviceImpl;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.alibaba.fastjson.JSON;
import com.dao.guanDao.TbRoleDaoPort;
import com.entity.TbPower;
import com.entity.TbRole;
import com.service.guanService.TbRoleServicePort;
/**
 * 
* @Title: TbRoleServiceImpl.java  
* @Package com.service.guanService.serviceImpl  
* @Description: TODO(进行角色的业务逻辑操作)  
* @author 角色Service层实现类  
* @date 2017年8月30日
 */
@Service
public class TbRoleServiceImpl implements TbRoleServicePort {
	/**
	 * 调用Dao层TbRoleDaoPort操作数据库
	 */
	@Autowired
	private TbRoleDaoPort tbroledaoport;
	/**
	 * 进行角色添加业务操作方法
	 */
	@Transactional
	public String addtbRole(HashMap map) {
		// TODO Auto-generated method stub
		List<Map<String,Object>> jsonlist =JSON.parseObject(map.get("rows").toString(),List.class);
		TbRole tr = new TbRole();
		tr.setRoleName(map.get("roleName").toString());
		tr.setUserRoleStatus(map.get("userRoleStatus").toString());
		tr.setUserRoleKeywords(map.get("userRoleKeywords").toString());
		tbroledaoport.addtbRole(tr);
		List<TbRole> TbList = tbroledaoport.querytbRole(tr);//添加角色信息
		
		for(int i=0;i<jsonlist.size();i++){
			
			HashMap tbRolePower = new HashMap<String,Object>();
			tbRolePower.put("roleId",TbList.get(0).getRoleId());
			tbRolePower.put("powerId",jsonlist.get(i).get("id"));
			tbroledaoport.addTbRolePower(tbRolePower);//添加角色权限关联表信息
		}
		return JSON.toJSONString("success");
	}
	/**
	 * 查询角色信息方法
	 */
	@Override
	public List<TbRole> querytbRole(TbRole Tb) {
		// TODO Auto-generated method stub
		return tbroledaoport.querytbRole(Tb);
	}
	/**
	 * 修改角色信息
	 */
	@Transactional
	public String updateRole(TbRole tb) {
		// TODO Auto-generated method stub		
		List<TbPower> list = tb.getRows();	
		try {
			tbroledaoport.deleteRolePower(tb.getRoleId());//删除角色权限关联表内容
			tbroledaoport.updateRole(tb);//修改角色表
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		HashMap<String,Object> hm= new HashMap<String, Object>();
		for(int i = 0;i<list.size();i++){		
			hm.put("roleId", tb.getRoleId());
			hm.put("powerId",list.get(i).getId());
			tbroledaoport.addTbRolePower(hm);//添加角色权限关联表
		}
		
		return JSON.toJSONString("success");
	}
	/**
	 * 根据角色名称进行模糊查询
	 */
	@Override
	public List<TbRole> querytbRoleName(String roleName) {
		// TODO Auto-generated method stub
		List<TbRole> list = null;
		try {
			roleName =  new String(roleName.getBytes("ISO-8859-1"),"utf-8");
			TbRole tbRole = new TbRole();
			tbRole.setRoleName(roleName);
			list = tbroledaoport.queryRoleName(tbRole);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

}
