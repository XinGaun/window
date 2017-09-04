package com.dao.zwdDao;

import java.util.HashMap;
import java.util.List;

/**
 * 类说明：财务审核数据层接口
 * 作者：张伟东
 * 当前时间2017年9月2日下午8:07:37
 */
public interface FinanceDao {
	//查询经过一次审核的贷款单
	public List<HashMap<String,Object>>queryPassLoan(HashMap map);
}
