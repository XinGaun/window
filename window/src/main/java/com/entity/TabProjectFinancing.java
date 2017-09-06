package com.entity;

import java.util.ArrayList;
import java.util.List;

/**
 * 
 * @Title: TabProjectFinancing.java  
 * @Package com.entity  
 * @Description: TODO  
 * @author 融资项目表实体类  
 * @date 2017年9月6日
 */
public class TabProjectFinancing {
	private int projectId;//项目ID 主
	private int projectUserId;//项目发起人ID 
	private String projectName;//项目名称
	private String projectAddress;//地址
	private String projectSubject;//融资主体，个人或企业
	private String projectIndustry;//所属行业
	private String projectLastyearturnover;//去年企业营业额
	private String projectNetasset;//企业当前净资产
	private	String projectPurpose;//融资用途
	private List<String> intention = new ArrayList<String>();//意向资金
	private List<String> intentions = new ArrayList<String>();//意向资金s
	private List<String> projectBringsdata =new ArrayList<String>();//提供材料
	private String projectStatus;//项目状态
	private String cmbProvince;//省
	private String cmbCity;//市
	private String cmbArea;//区
	private int qumonetaryUnit;//去年营业额单位
	private int jingmonetaryUnit;//净资产单位
	private String intentionStr="";//意向资金字符串
	private String projectBringsdataStr="";//提供材料字符串
	
	public String getProjectBringsdataStr() {
		for(int i=0;i<projectBringsdata.size();i++){
			projectBringsdataStr =projectBringsdataStr + projectBringsdata.get(i);
		}
		return projectBringsdataStr;
	}
	public void setProjectBringsdataStr(String projectBringsdataStr) {
		this.projectBringsdataStr = projectBringsdataStr;
	}
	public String getIntentionStr() {
		for(int i=0;i<intention.size();i++){
			intentionStr = intentionStr+ intention.get(i)+",";
		}
		if(intention.size()!=0){
			intentionStr= (String) intentionStr.subSequence(0,intentionStr.length()-1);
		}else{
			for(int i=0;i<intentions.size();i++){
				intentionStr = intentions.get(i);
			}
		}
		return intentionStr;
	}
	public void setIntentionStr(String intentionStr) {
		this.intentionStr = intentionStr;
	}
	public int getJingmonetaryUnit() {
		return jingmonetaryUnit;
	}
	public void setJingmonetaryUnit(int jingmonetaryUnit) {
		this.jingmonetaryUnit = jingmonetaryUnit;
	}
	public int getProjectId() {
		return projectId;
	}
	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}
	public int getProjectUserId() {
		return projectUserId;
	}
	public void setProjectUserId(int projectUserId) {
		this.projectUserId = projectUserId;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getProjectAddress() {
		projectAddress = getCmbProvince()+getCmbCity()+getCmbArea();
		return projectAddress;
	}
	public void setProjectAddress(String projectAddress) {
		this.projectAddress = projectAddress;
	}
	public String getProjectSubject() {
		return projectSubject;
	}
	public void setProjectSubject(String projectSubject) {
		this.projectSubject = projectSubject;
	}
	public String getProjectIndustry() {
		return projectIndustry;
	}
	public void setProjectIndustry(String projectIndustry) {
		this.projectIndustry = projectIndustry;
	}
	public  String getProjectLastyearturnover() {
		float projectLastyearturnoverInt = Float.parseFloat(projectLastyearturnover);
		String projectLastyearturnoverStr = "";
		if(getQumonetaryUnit()==0){
			projectLastyearturnoverInt = projectLastyearturnoverInt*10000;
			projectLastyearturnoverStr = projectLastyearturnoverInt+"";
		}else if(getQumonetaryUnit()==1){
			projectLastyearturnoverInt = projectLastyearturnoverInt*100000000;
			projectLastyearturnoverStr = projectLastyearturnoverInt+"";		
		}


		return projectLastyearturnoverStr;
	}
	public void setProjectLastyearturnover(String projectLastyearturnover) {
		this.projectLastyearturnover = projectLastyearturnover;
	}
	public String getProjectNetasset() {
		float projectNetassetInt = Float.parseFloat(projectNetasset);
		String projectNetassetStr = "";
		if(jingmonetaryUnit==0){
			projectNetassetInt =projectNetassetInt*10000;
			projectNetassetStr = projectNetassetInt+"";
		}else if(jingmonetaryUnit==1){
			projectNetassetInt =projectNetassetInt*100000000;
			projectNetassetStr = projectNetassetInt+"";
		}

		return projectNetassetStr;
	}
	public void setProjectNetasset(String projectNetasset) {
		this.projectNetasset = projectNetasset;
	}
	public String getProjectPurpose() {
		return projectPurpose;
	}
	public void setProjectPurpose(String projectPurpose) {
		this.projectPurpose = projectPurpose;
	}

	public List<String> getIntention() {
		if(intentions.size()!=0){
			return getIntentions();
		}
		return intention;
	}
	public void setIntention(List<String> intention) {

		this.intention = intention;
	}
	public List<String> getIntentions() {
		return intentions;
	}
	public void setIntentions(List<String> intentions) {
		this.intentions = intentions;
	}
	public List<String> getProjectBringsdata() {
		return projectBringsdata;
	}
	public void setProjectBringsdata(List<String> projectBringsdata) {
		this.projectBringsdata = projectBringsdata;
	}
	public String getProjectStatus() {
		return projectStatus;
	}
	public void setProjectStatus(String projectStatus) {
		this.projectStatus = projectStatus;
	}
	public String getCmbProvince() {
		return cmbProvince;
	}
	public void setCmbProvince(String cmbProvince) {
		this.cmbProvince = cmbProvince;
	}
	public String getCmbCity() {
		return cmbCity;
	}
	public void setCmbCity(String cmbCity) {
		this.cmbCity = cmbCity;
	}
	public String getCmbArea() {
		return cmbArea;
	}
	public void setCmbArea(String cmbArea) {
		this.cmbArea = cmbArea;
	}
	public int getQumonetaryUnit() {
		return qumonetaryUnit;
	}
	public void setQumonetaryUnit(int qumonetaryUnit) {
		this.qumonetaryUnit = qumonetaryUnit;
	}


}
