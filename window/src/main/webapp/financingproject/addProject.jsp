<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<script type="text/javascript"
	src="../bootstrap-3.3.7-dist/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript"
	src="../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="../bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script type="text/javascript"
	src="../bootstrap-3.3.7-dist/js/jsAddresss.js"></script>
<!-- 文件上传  -->
<link href="../bootstrap-3.3.7-dist/css/fileinput.css" media="all"
	rel="stylesheet" type="text/css" />
<script src="../bootstrap-3.3.7-dist/js/fileinput.js"
	type="text/javascript"></script>
<script src="../bootstrap-3.3.7-dist/js/fileinput_locale_zh.js"
	type="text/javascript"></script>
<!-- 时间控件 -->
<link rel="stylesheet" type="text/css" href="../bootstrap-3.3.7-dist/css/shijian.css"/>
</head>
<body style="margin-left: 12%; margin-right: 12%;">
	<div
		style="background: #FFF4ED; heigth: 300px; margin-left: 5%; margin-right: 5%; margin-top: 3%;">
		<br> <span style="margin-left: 5%;"
			class="glyphicon glyphicon-asterisk"></span>重要提示： <br>
		<p style="margin-left: 5%; margin-right: 5%; color: #8888888;">为了保证信息能顺利通过我们的审核，请将信息的真实情况尽可能全面的发布出来，根据我们的长期跟踪统计，信息完整度越高，越容易获得目标客户的关注，并能大幅提升投融双方达成合作意向的成功率！</p>
		<BR>
	</div>
	<div style="margin-left: 5%; margin-right: 5%;">
		<!-- from开始 -->
		<form class="form-horizontal" action="/window/Financing/addFinancing.do" method="post" enctype="multipart/form-data">
			<fieldset>
				<div id="legend" class="">
					<legend>发布项目</legend>
				</div>
				<table style="width: 100%;">
					<!-- 项目名称 -->
					<tr>
						<td><span style="float: right;"><span
								style="color: red;">*</span>项目名称:</span><input type="text" placeholder="请输入用户ID" name="projectUserId"/></td>
						<td><input type="text" style="width: 80%;"
							class="form-control" placeholder="请输入项目名称"
							aria-describedby="basic-addon1" name="projectName"/></td>
					</tr>
					<tr>
						<td></td>
						<td>&nbsp;<span id="errorprojectName" style="color: red;"></span>
						</td>
					</tr>
					<!-- 地区 -->
					<tr>
						<td><span style="float: right;"><span
								style="color: red;">*</span>所在地区:</span></td>
						<td><select id="cmbProvince" name="cmbProvince"></select> <select
							id="cmbCity" name="cmbCity"></select> <select id="cmbArea"
							name="cmbArea"></select></td>
					</tr>
					<tr>
						<td></td>
						<td>&nbsp;<span id="error" style="color: red;"></span>
						</td>
					</tr>
					<!-- 融资主体 -->
					<tr>
						<td><span style="float: right;"><span
								style="color: red;">*</span>融资主体:</span></td>
						<td><select name="projectSubject">
								<option value="企业">企业</option>
								<option value="个人">个人</option>
						</select></td>
					</tr>
					<tr>
						<td></td>
						<td>&nbsp;<span id="error" style="color: red;"></span>
						</td>
					</tr>
					<!-- 所属行业 -->
					<tr>
						<td><span style="float: right;"><span
								style="color: red;">*</span>所属行业:</span></td>
						<td><select name="projectIndustry">
								<option value="金融投资">金融投资</option>
								<option value="房地产">房地产</option>
								<option value="能源">能源</option>
								<option value="化学化工">化学化工</option>
								<option value="节能环保">节能环保</option>
								<option value="建筑建材">建筑建材</option>
								<option value="基础设施">基础设施</option>
								<option value="农林牧渔">农林牧渔</option>
								<option value="国防军工">国防军工</option>
								<option value="电气设备">电气设备</option>
								<option value="机械机电">机械机电</option>
								<option value="交通运输">交通运输</option>
								<option value="仓储物流">仓储物流</option>
								<option value="汽车汽配">汽车汽配</option>
								<option value="纺织服装饰品">纺织服装饰品</option>
								<option value="旅游酒店">旅游酒店</option>
								<option value="餐饮休闲娱乐">餐饮休闲娱乐</option>
								<option value="教育培训体育">教育培训体育</option>
								<option value="文化传媒广告">文化传媒广告</option>
								<option value="批发零售">批发零售</option>
								<option value="数码家电">数码家电</option>
								<option value="家居日用">家居日用</option>
								<option value="食品饮料烟草">食品饮料烟草</option>
								<option value="医疗保健">医疗保健</option>
								<option value="生物医药">生物医药</option>
								<option value="IT物联网">IT物联网</option>
								<option value="电子通信">电子通信</option>
								<option value="海洋开发">海洋开发</option>
								<option value="商务贸易">商务贸易</option>
								<option value="家政服务">家政服务</option>
								<option value="园林园艺">园林园艺</option>
								<option value="收藏品">收藏品</option>
								<option value="行政事业机构">行政事业机构</option>
								<option value="其他行业">其他行业</option>
						</select></td>
					</tr>
					<tr>
						<td></td>
						<td>&nbsp;<span id="error" style="color: red;"></span>
						</td>
					</tr>
					<!-- 去年营业额 -->
					<tr>
						<td><span style="float: right;"><span
								style="color: red;">*</span>去年营业额:</span></td>
						<td><input type="text" style="width: 15%;"
							onkeyup="if(isNaN(value))execCommand('undo')"
							onafterpaste="if(isNaN(value))execCommand('undo')" name="projectLastyearturnover"/> <select name="qumonetaryUnit">
								<option value="0">万元</option>
								<option value="1">亿元</option>
						</select> <span class="glyphicon glyphicon-asterisk"></span><span>请如实填写，有助于您更快获得融资</span>
						</td>
					</tr>
					<tr>
						<td></td>
						<td>&nbsp;<span id="errorprojectLastyearturnover" style="color: red;"></span>
						</td>
					</tr>
					<!-- 企业当前净资产 -->
					<tr>
						<td><span style="float: right;"><span
								style="color: red;">*</span>企业当前净资产:</span></td>
						<td><input type="text" style="width: 15%;"
							onkeyup="if(isNaN(value))execCommand('undo')"
							onafterpaste="if(isNaN(value))execCommand('undo')" name="projectNetasset"/> <select name="jingmonetaryUnit">
								<option value="0">万元</option>
								<option value="1">亿元</option>
						</select> <span class="glyphicon glyphicon-asterisk"></span><span>请如实填写，有助于您更快获得融资</span>
						</td>
					</tr>
					<tr>
						<td></td>
						<td>&nbsp;<span id="errorprojectNetasset" style="color: red;"></span>
						</td>
					</tr>
					<!-- 融资用途 -->
					<tr>
						<td><span style="float: right;"><span
								style="color: red;">*</span>融资用途:</span></td>
						<td><input type="text" style="width: 80%;"
							class="form-control" placeholder="请输入融资用途"
							aria-describedby="basic-addon1" name="projectPurpose"/></td>
					</tr>
					<tr>
						<td></td>
						<td>&nbsp;<span id="errorprojectPurpose" style="color: red;"></span>
						</td>
					</tr>
					<!-- 融资金额  -->
					<tr>
						<td><span style="float: right;"><span
								style="color: red;">*</span>融资金额:</span></td>
						<td><input type="text" style="width: 15%;"
							onkeyup="if(isNaN(value))execCommand('undo')"
							onafterpaste="if(isNaN(value))execCommand('undo')" name="projectMinmoney"/> <select name="minmonetaryUnit">
								<option value="0">万元</option>
								<option value="1">亿元</option>
						</select>--到-- <input type="text" style="width: 15%;"
							onkeyup="if(isNaN(value))execCommand('undo')"
							onafterpaste="if(isNaN(value))execCommand('undo')" name="projectMaxmoney"/> <select name="maxonetaryUnit">
								<option value="0">万元</option>
								<option value="1">亿元</option>
						</select></td>
					</tr>
					<tr>
						<td></td>
						<td>&nbsp;<span id="errorprojectMaxmoney" style="color: red;"></span>
						</td>
					</tr>
					<!-- 总投金额 -->
					<tr>
						<td><span style="float: right;"><span
								style="color: red;">*</span>总投金额:</span></td>
						<td><input type="text" style="width: 15%;"
							onkeyup="if(isNaN(value))execCommand('undo')"
							onafterpaste="if(isNaN(value))execCommand('undo')" name="projectCountmoney"/> <select name="countmonetaryUnit">
								<option value="0">万元</option>
								<option value="1">亿元</option>
						</select></td>
					</tr>
					<tr>
						<td></td>
						<td>&nbsp;<span id="errorprojectCountmoney" style="color: red;"></span>
						</td>
					</tr>
					<!-- 意向资金 -->
					<tr>
						<td><span style="float: right;"><span
								style="color: red;">*</span>意向资金:</span></td>
						<td>
							<table>
								<tr>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" id="intentions" name="intentions" value="不限" />不限
									</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="intention" value="个人资金" />个人资金
									</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="intention" value="企业资金" />企业资金
									</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="intention" value="天使投资" />天使投资
									</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="intention" value="其它资金" />其它资金&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="intention" value="资产管理" />资产管理
									</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="intention" value="保险公司" />保险公司
									</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="intention" value="信托公司" />信托公司
									</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="intention" value="证券公司" />证券公司
									</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="intention" value="基金公司" />基金公司
									</td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="intention" value="商业银行" />商业银行
									</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="intention" value="投资公司" />投资公司
									</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="intention" value="金融租赁" />金融租赁
									</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="intention" value="担保公司" />担保公司
									</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="intention" value="典当公司" />典当公司
									</td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="intention" value="小额贷款" />小额贷款
									</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="intention" value="PE投资" />PE投资
									</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="intention" value="VC投资" />VC投资
									</td>
									<td></td>
									<td></td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td></td>
						<td>&nbsp;<span id="error" style="color: red;"></span>
						</td>
					</tr>
					<!-- 项目截止日期 -->
					<tr>
						<td><span style="float: right;"><span
								style="color: red;">*</span>项目截止日期:</span></td>
						<td>
							<div class="control-group">
								
									<input type="text" class="form-control" style="width:80%;" id="input1" name="projectEnddate" value=""/>
							</div>



						</td>
					</tr>
					<tr>
						<td></td>
						<td>&nbsp;<span id="error" style="color: red;"></span>
						</td>
					</tr>

					<!-- 提供资料 -->
					<tr>
						<td><span style="float: right;"><span
								style="color: red;"></span>提供材料:</span></td>
						<td>
							<table>
								<tr>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="projectBringsdata" value="商业/项目计划书" />商业/项目计划书
									</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="projectBringsdata" value="公司证件" />公司证件
									</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="projectBringsdata" value="相关财务资料" />相关财务资料
									</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="checkbox" name="projectBringsdata" value="其他材料" />其他材料&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</td>
								</tr>
							</table>
					</td>
					</tr>
					<tr>
						<td></td>
						<td>&nbsp;<span id="error" style="color: red;"></span>
						</td>
					</tr>
					<!-- 项目概述 -->
					<tr>
						<td><span style="float: right;"><span
								style="color: red;">*</span>项目概述:</span></td>
						<td><textarea class="form-control" rows="3"
								style="width: 80%; height: 150px;" placeholder="请输入概述" name="projectSummarize"></textarea>
						</td>
					</tr>
					<tr>
						<td></td>
						<td>&nbsp;<span id="errorprojectSummarize" style="color: red;"></span>
						</td>
					</tr>
					<!-- 项目优势 -->
					<tr>
						<td><span style="float: right;"><span
								style="color: red;"></span>项目优势:</span></td>
						<td><textarea class="form-control" rows="3"
								style="width: 80%; height: 150px;" placeholder="请输入项目优势" name="projectAdvantage"></textarea>
						</td>
					</tr>
					<tr>
						<td></td>
						<td>&nbsp;<span id="error" style="color: red;"></span>
						</td>
					</tr>
					<!-- 其他备注 -->
					<tr>
						<td><span style="float: right;"><span
								style="color: red;"></span>其他备注:</span></td>
						<td><textarea class="form-control" rows="3"
								style="width: 80%; height: 150px;" name="projectRemark"></textarea></td>
					</tr>
					<tr>
						<td></td>
						<td>&nbsp;<span id="error" style="color: red;"></span>
						</td>
					</tr>
					<!-- 上传图片 -->
					<tr>
						<td><span style="float: right;"><span
								style="color: red;">*</span>上传图片:</span></td>
						<td><input id="file-es" name="projectPicture" type="file" multiple
							style="width: 80%;" /></td>
					</tr>
					<tr>
						<td></td>
						<td>&nbsp;<span id="error" style="color: red;"></span>
						</td>
					</tr>
					<!-- 上传文件 -->
					<tr>
						<td><span style="float: right;"><span
								style="color: red;">*</span>上传文件:</span></td>
						<td><input id="file-fr" name="projectFile" type="file" multiple
							style="width: 80%"></td>
					</tr>
					<tr>
						<td></td>
						<td>&nbsp;<span id="error" style="color: red;"></span>
						</td>
					</tr>
				</table>
			</fieldset>
			<br />
			<div style="margin-left: 20%;">
				<!-- <button class="btn btn-info">立即发布项目信息</button> -->
				<input type="submit" value="立即发布项目信息"/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<button class="btn">取消发布项目信息</button>
			</div>
		</form>

		<!-- from结束 -->
	</div>
	<div id="legend" class="">
		<legend>&nbsp;</legend>
	</div>
	

				
	
	
<!-- 时间控件 -->
	<script src="../bootstrap-3.3.7-dist/js/jquer_shijian.js?ver=1" type="text/javascript" charset="utf-8"></script>

</body>

</html>
<script type="text/javascript">  
     addressInit('cmbProvince', 'cmbCity', 'cmbArea');  
     $("input[id='intentions']").click(function(){
    	 var isChecked = $("#intentions").is(":checked");
    	 if(isChecked){
    		$("input[name='intention']").each(function(){
    			    $(this)[0].checked=false;
    		});  		
    		$("input[name='intention']").attr("disabled","disabled");
    	 }else{
    	
    		 $("input[name='intention']").attr("disabled",false);
    	 }
    	
     });
    	 
     /**
     ***图片上传
     **/
    
     $('#file-es').fileinput({
         language: 'zh',
         uploadUrl: '../error.jsp',
         allowedFileExtensions : ['jpg', 'png','gif'],
         showUpload: false,
         textEncoding:"UTF-8",
         layoutTemplates:{  	
        	actionUpload:"",
         },
     });

	/***
	**上传文件
	*/
	 $('#file-fr').fileinput({
         language: 'zh',
         uploadUrl: '../error.jsp',
         allowedFileExtensions : ['txt', 'zip','docx','xls','rar'],
         showUpload: false,
         
         maxFileSize:10240,
         layoutTemplates:{  	
        	actionUpload:"",
         },
     });
	/**
	**日期控件
	*/
	//默认点击显示
	$("#input1").shijian();
</script>
