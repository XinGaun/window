package com.service.zjcService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.zjcDao.InvestpersonpassDao;
import com.entity.Investperson;
@Service
public class InvestpersonpassServiceImpl implements InvestpersonpassService {
	@Autowired
	private InvestpersonpassDao invesdao;
	/**
	 * 查找投资客户表
	 * @return
	 */
	@Override
	public List<Investperson> querryinvestpersonpass() {
		// TODO Auto-generated method stub
		return invesdao.querryinvestpersonpass();
	}
	/**
	 * 添加投资客户表
	 * @return
	 */
	@Override
	public void addinvestpersonpass(Investperson invepon) {
		// TODO Auto-generated method stub
		invesdao.addinvestpersonpass(invepon);
	}

}
