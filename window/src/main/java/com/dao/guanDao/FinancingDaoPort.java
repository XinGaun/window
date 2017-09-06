package com.dao.guanDao;

import java.util.List;

import com.entity.TabProjectDetails;
import com.entity.TabProjectFinancing;

/**
 * 
* @Title: FinancingDaoPort.java  
* @Package com.dao.guanDao  
* @Description: TODO()  
* @author 融资项目DAO层接口  
* @date 2017年9月6日
 */
public interface FinancingDaoPort {
	/**
	 * 添加融资项目信息
	 */
	public void addtabProjectFinancing(TabProjectFinancing financing);
	/**
	 * 添加融资项目详情信息
	 */
	public void addtabProjectDetails(TabProjectDetails details);
	/**
	 * 通过项目名查询项目详情
	 * @param details
	 * @return
	 */
	public List<TabProjectFinancing> queryProjectFinancing(TabProjectFinancing financing);
}
