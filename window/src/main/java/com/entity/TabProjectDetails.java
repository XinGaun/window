package com.entity;

import java.io.File;
import java.util.List;

/**
 * 
 * @Title: TabProjectDetails.java  
 * @Package com.entity  
 * @Description: TODO  
 * @author 融资项目详情表实体类  
 * @date 2017年9月5日
 */
public class TabProjectDetails {
	private Integer projectId; //融资项目ID 外
	private String projectSummarize;//项目概述 
	private String projectAdvantage=".";//项目优势
	private String projectRemark=".";//其他备注
	private String projectBegindate;//项目融资开始时间
	private String projectEnddate;//项目融资结束时间
	private String projectMinmoney;//最低融资金额
	private String projectMaxmoney;//最多融资金额
	private String projectCountmoney;//需要总投资金额
	private String projectAmount;//已融资金额
	private String projectPictureStr=" ";//融资项目上传图片路径
	private String projectFileStr=" ";//融资项目上传文件路径
	private int minmonetaryUnit;//最低融资金额单位
	private int maxonetaryUnit;//最高融资金额单位
	private int countmonetaryUnit;//总融资金额单位

	public int getMinmonetaryUnit() {
		return minmonetaryUnit;
	}
	public void setMinmonetaryUnit(int minmonetaryUnit) {
		this.minmonetaryUnit = minmonetaryUnit;
	}
	public int getMaxonetaryUnit() {
		return maxonetaryUnit;
	}
	public void setMaxonetaryUnit(int mamonetaryUnit) {
		this.maxonetaryUnit = mamonetaryUnit;
	}
	public int getCountmonetaryUnit() {
		return countmonetaryUnit;
	}
	public void setCountmonetaryUnit(int countmonetaryUnit) {
		this.countmonetaryUnit = countmonetaryUnit;
	}
	public Integer getProjectId() {
		return projectId;
	}
	public void setProjectId(Integer projectId) {
		this.projectId = projectId;
	}
	public String getProjectSummarize() {
		return projectSummarize;
	}
	public void setProjectSummarize(String projectSummarize) {
		this.projectSummarize = projectSummarize;
	}
	public String getProjectAdvantage() {
		return projectAdvantage;
	}
	public void setProjectAdvantage(String projectAdvantage) {
		this.projectAdvantage = projectAdvantage;
	}
	public String getProjectRemark() {
		return projectRemark;
	}
	public void setProjectRemark(String projectRemark) {
		this.projectRemark = projectRemark;
	}
	public String getProjectBegindate() {
		return projectBegindate;
	}
	public void setProjectBegindate(String projectBegindate) {
		this.projectBegindate = projectBegindate;
	}
	public String getProjectEnddate() {
		return projectEnddate;
	}
	public void setProjectEnddate(String projectEnddate) {
		this.projectEnddate = projectEnddate;
	}
	public String getProjectMinmoney() {
		float projectMinmoneyInt = Float.parseFloat(projectMinmoney.toString());
		String projectMinmoneyStr = "";
		if(minmonetaryUnit==0){
			projectMinmoneyInt = projectMinmoneyInt*10000;
			projectMinmoneyStr =projectMinmoneyInt+"";			
		}else if(minmonetaryUnit==1){
			projectMinmoneyInt = projectMinmoneyInt*100000000;
			projectMinmoneyStr =projectMinmoneyInt+"";		
		}

		return projectMinmoneyStr;
	}
	public void setProjectMinmoney(String projectMinmoney) {
		this.projectMinmoney = projectMinmoney;
	}
	public String getProjectMaxmoney() {
		float projectMaxmoneyInt = Float.parseFloat(projectMaxmoney.toString());
		String projectMaxmoneyStr = "";
		if(maxonetaryUnit==0){
			projectMaxmoneyInt= projectMaxmoneyInt*10000;
			projectMaxmoneyStr = projectMaxmoneyInt+"";
		}else if(maxonetaryUnit==1){
			projectMaxmoneyInt= projectMaxmoneyInt*100000000;
			projectMaxmoneyStr = projectMaxmoneyInt+"";
		}

		return projectMaxmoneyStr;
	}
	public void setProjectMaxmoney(String projectMaxmoney) {
		this.projectMaxmoney = projectMaxmoney;
	}
	public String getProjectCountmoney() {
		float projectCountmoneyInt =Float.parseFloat(projectCountmoney.toString()) ;
		String projectCountmoneyStr ="";
		if(countmonetaryUnit==0){
			projectCountmoneyInt = projectCountmoneyInt*10000;
			projectCountmoneyStr = projectCountmoneyInt+"";
		}else if(countmonetaryUnit==1){
			projectCountmoneyInt = projectCountmoneyInt*100000000;
			projectCountmoneyStr = projectCountmoneyInt+"";
		}

		return projectCountmoneyStr;
	}
	public void setProjectCountmoney(String projectCountmoney) {
		this.projectCountmoney = projectCountmoney;
	}
	public String getProjectAmount() {
		return projectAmount;
	}
	public void setProjectAmount(String projectAmount) {
		this.projectAmount = projectAmount;
	}
	public String getProjectPictureStr() {
		return projectPictureStr;
	}
	public void setProjectPictureStr(String projectPictureStr) {
		this.projectPictureStr = projectPictureStr;
	}
	public String getProjectFileStr() {
		return projectFileStr;
	}
	public void setProjectFileStr(String projectFileStr) {
		this.projectFileStr = projectFileStr;
	}



}
