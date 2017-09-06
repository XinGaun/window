package com.service.guanService.serviceImpl;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;
import com.dao.guanDao.FinancingDaoPort;
import com.entity.TabProjectDetails;
import com.entity.TabProjectFinancing;
import com.service.guanService.FinancingServicePort;
/**
 * 
 * @Title: FinancingServiceImpl.java  
 * @Package com.service.guanService.serviceImpl  
 * @Description: TODO(融资项目业务操作)  
 * @author 融资项目Service接口实现类  
 * @date 2017年9月5日
 */
@Service
public class FinancingServiceImpl implements FinancingServicePort {
	@Autowired
	private FinancingDaoPort financingDaoPort;//调用融资项目DAO层方法
	/**
	 * 添加一个未审核融资项目
	 * @throws UnsupportedEncodingException 
	 */
	@Transactional
	public String addFinancing(@RequestParam("projectPicture") MultipartFile[] projectPicture,@RequestParam("projectFile") MultipartFile[] projectFile,TabProjectDetails tpd,TabProjectFinancing tpf,HttpServletRequest request) {
		// TODO Auto-generated method stub
		//得到上传文件的保存目录，将上传的文件存放于WEB-INF目录下，不允许外界直接访问，保证上传文件的安全
		String savePath = request.getServletContext().getRealPath("/WEB-INF/upload/");
		List<String> projectPictureList = new ArrayList<String>();//保存图片路径
		int projectPictureFlog = -1;
		List<String> projectFileList = new ArrayList<String>();//保存文件路径
		int projectFileFlog = -1;
		try {			
			for(int i=0;i<projectPicture.length;i++){//上传图片
				String FilePath = projectPicture[i].getOriginalFilename();//获得文件名称
				if(FilePath.equals("")||FilePath==null){
					projectPictureFlog = 1;
					break;//没有图片上传
				}
				long currentTimeMillis = System.currentTimeMillis();//获得当前毫秒数
				FilePath = savePath+"//"+currentTimeMillis+FilePath;//获得服务器的相对路径
				projectPicture[i].transferTo(new File(FilePath));//文件下载到服务器指定文件夹
				projectPictureList.add(FilePath);//添加文件路径
			}
			if(projectPictureFlog!=1){
				String projectPictureStr = JSON.toJSONString(projectPictureList);
				tpd.setProjectPictureStr(projectPictureStr);
			}		
			for(int i=0;i<projectFile.length;i++){//上传文件
				String FilePath = projectFile[i].getOriginalFilename();
				if(FilePath.equals("")||FilePath==null){
					projectFileFlog = 1;
					break;
				}
				long currentTimeMillis = System.currentTimeMillis();//获得当前毫秒数
				FilePath = savePath +"//"+currentTimeMillis+FilePath;
				projectFile[i].transferTo(new File(FilePath));
				projectFileList.add(FilePath);
			}
			if(projectFileFlog!=1){
				String projectFileStr = JSON.toJSONString(projectFileList);
				tpd.setProjectFileStr(projectFileStr);
			}		
		} catch (Exception e) {
			// TODO: handle exception
			return JSON.toJSONString("error");
		}
		financingDaoPort.addtabProjectFinancing(tpf);//添加项目信息
		List<TabProjectFinancing> JfList= financingDaoPort.queryProjectFinancing(tpf);
		tpd.setProjectId(JfList.get(0).getProjectId());
		financingDaoPort.addtabProjectDetails(tpd);//添加项目详情信息
		return JSON.toJSONString("success");
	}

}
