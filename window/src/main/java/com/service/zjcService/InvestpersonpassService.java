package com.service.zjcService;

import java.util.List;

import com.entity.Investperson;

public interface InvestpersonpassService {
	/**
	 * 查找投资客户表
	 * @return
	 */
	public List<Investperson> querryinvestpersonpass();
	/**
	 * 添加投资客户表
	 * @return
	 */
	public void addinvestpersonpass(Investperson invepon);
}
