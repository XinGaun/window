package com.web.zjcWeb;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.entity.Investperson;
import com.service.zjcService.InvestpersonpassService;

@Controller
@RequestMapping("/zjc")
public class InvestpersonpassControll {
	@Autowired
	private InvestpersonpassService inveservice;
	/**
	 * 1.查找数据库投资客户的信息
	 * 2.与页面注册的比较看数据库是否存在此人
	 */
	@RequestMapping("/saveinvestperson")
	public void querryinvestpersonpass(HttpServletResponse response,@RequestBody String data){
		List<Investperson> inverpon = inveservice.querryinvestpersonpass();//查找数据库投资客户的信息
		Investperson inves = JSON.parseObject(data,Investperson.class);
		/*System.out.println(inves.getInvestpersonphoto());
		System.out.println(inverpon.get(0).getInvestpersonid());*/
		try {
			for (int i = 0; i < inverpon.size(); i++) {
				if (inverpon.get(i).getInvestpersonphoto().equals(inves.getInvestpersonphoto())) {
					response.getWriter().write(JSON.toJSONString("0"));
				}else{
					inveservice.addinvestpersonpass(inves);
					response.getWriter().write(JSON.toJSONString(inves));
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
