package com.web.guanWeb;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.entity.TabProjectDetails;
import com.entity.TabProjectFinancing;
import com.service.guanService.FinancingServicePort;

/**
 * 
* @Title: FinancingController.java  
* @Package com.web.guanWeb  
* @Description: TODO(传输接收项目数据)  
* @author 融资项目控制器 
* @date 2017年9月5日
 */
@Controller
@RequestMapping("/Financing")
public class FinancingController {
	@Autowired
	private FinancingServicePort financingServicePort;
	/**
	 * 发起融资项目
	 * @param projectPicture 上传图片
	 * @param projectFile 上传文件
	 * @param tpd 融资项目实体类
	 * @param tpf 融资项目详情实体类
	 * @param request 请求
	 * @return JSON
	 */
	@RequestMapping("/addFinancing")
	@ResponseBody
	public String addFinancing(@RequestParam("projectPicture") MultipartFile[] projectPicture,@RequestParam("projectFile") MultipartFile[] projectFile,TabProjectDetails tpd,TabProjectFinancing tpf,HttpServletRequest request){
		return financingServicePort.addFinancing(projectPicture,projectFile,tpd,tpf,request);
	}
}
