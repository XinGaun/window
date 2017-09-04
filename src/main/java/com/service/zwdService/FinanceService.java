package com.service.zwdService;

import java.util.HashMap;
import java.util.List;

/**
 * 类说明：财务审核业务接口
 * 作者：张伟东
 * 当前时间2017年9月2日下午8:10:29
 */
public interface FinanceService {
		//查询经过一次审核的贷款单
		public List<HashMap<String,Object>>queryPassLoan(HashMap map);
}
