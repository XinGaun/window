package com.service.guanService;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.entity.TabProjectDetails;
import com.entity.TabProjectFinancing;

/**
 * 
* @Title: FinancingPort.java  
* @Package com.service.guanService  
* @Description: TODO(融资项目业务操作)  
* @author 融资项目Service层接口 
* @date 2017年9月5日
 */
public interface FinancingServicePort {
	/**
	 * 发起融资项目
	 * @param projectPicture
	 * @param projectFile
	 * @param tpd
	 * @param tpf
	 * @param request
	 * @return
	 */
	public String addFinancing(@RequestParam("projectPicture") MultipartFile[] projectPicture,@RequestParam("projectFile") MultipartFile[] projectFile,TabProjectDetails tpd,TabProjectFinancing tpf,HttpServletRequest request);
}
