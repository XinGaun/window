package com.dao.zjcDao;

import java.util.List;

import com.entity.Investperson;

public interface InvestpersonpassDao {
	/**
	 * 查找投资客户表
	 * @return
	 */
	public List<Investperson> querryinvestpersonpass();
	/**
	 * 添加投资客户表
	 * @param invepon
	 */
	public void addinvestpersonpass(Investperson invepon);
}
