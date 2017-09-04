package com.service.zwdService.zwdServiceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.zwdDao.FinanceDao;
import com.service.zwdService.FinanceService;

/**
 * 类说明：
 * 作者：张伟东
 * 当前时间2017年9月2日下午8:11:24
 */
@Service
public class FinanceServiceImp implements FinanceService {
	@Autowired
	private FinanceDao fd;
	
	@Override
	/**
	 * 查看经过第一次审核贷款的详细信息
	 * @param map 根据map是否为空判断是查看所有的贷款审核信息还是只查看某一贷款信息
	 * @return 返回多条或者一条贷款详情
	 */
	public List<HashMap<String, Object>> queryPassLoan(HashMap map) {
		return fd.queryPassLoan(map);
	}

}
