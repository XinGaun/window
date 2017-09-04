<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<script type="text/javascript" src="easyui/jquery-3.1.1.min.js"></script>
  <script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
  <script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
  <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css" type="text/css"></link>
  <link rel="stylesheet" href="easyui/themes/default/easyui.css" type="text/css"></link>
  <link rel="stylesheet" href="easyui/themes/icon.css" type="text/css"></link></head>
 	<style>
 		.formtable th, .upTab th{
			border-bottom: 1px dashed #ccc;
		}
		.formtable td, .upTab td{
			border-bottom: 1px dashed #ccc;
		}
 	</style>
  </head>
 
<body>
<div class="easyui-layout" data-options="fit:true">
    <!-- 查看贷款人员的详细信息 -->
 	<div id="updatebg">

 	  <table class="table">
                                <thead>
                                    <tr>
                                        
                                        <th>贷款编号</th>
                                        <th>贷款申请人姓名</th>
                                        <th>贷款金额</th>
                                    </tr>
                                </thead>
                                <tbody>
                                 <tr class="success">
                                       
                                        <td><span id="loanApplicationID"></span></td>
                                        <td><span id="customerName"></span></td>
                                        <td><span id="loanMoney"></span></td>
                                    </tr>
                                    <tr>
                                       
                                        <th>诚信度</th>
                                        <th>贷款种类</th>
                                        <th>审核人</th>
                                    </tr>
                                    <tr class="success">
                                       
                                        <td><span id="credibility"></span></td>
                                        <td> <span id="typeName"></span></td>
                                        <td><input type="text" id ="auditor"></td>
                                    </tr>
                                    <tr>
                                       
                                        <th>贷款人手机号</th>
                                        <th>地址</th>
                                        <th>审核结果</th>
                                    </tr>
                                    <tr class="success">
                                       
                                       <td><span id="phoneNumber"></span></td>
                                        <td><span id="address"></span></td>
                                        <td>
                                        	<select id ="statuName" class="easyui-combobox" data-options="panelHeight:'auto'">
												<option value="1">通过</option>
												<option value="3">驳回</option>
											</select>		
										</td>
                                    </tr>
                                    <tr>
                                        <th>款项去向</th>
                                        <th>批准金额</th>
                                        <th>认证人</th>
                                    </tr>
                                    <tr class="success">
                                        <td><span id="cause"></span></td>
                                        <td><input type="text" id="firstMoney"></td>
                                        <td><input id="superintendent"  class="easyui-combobox"></td>
                                    </tr>
                                </tbody>
                            </table>
                <div class="col-md-12">
                       
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                         		      审核意见
                            </div>
                            <div class="panel-body">
                                <p><textarea id="opinion" placeholder="请编辑审核意见" class="form-control" ></textarea></p>
                            </div>
                        </div>
                    </div>            
	</div>
 	
    <div data-options="region:'center',border:false">
        <div id="wu-toolbar">
            <div class="wu-toolbar-search" style="padding-top:20px;height:50px">
                <a id="updateBtn" class="easyui-linkbutton" data-options="iconCls:'icon-man'">审核批准</a>  
                &nbsp;&nbsp;&nbsp;
                <label>起始时间：</label><input id ="startTime" class="easyui-datebox" data-options="showSeconds:false,editable:false"   style="width:100px">
                <label>结束时间：</label><input id ="endTime" class="easyui-datebox"data-options="showSeconds:false,editable:false"  style="width:100px">
                <!-- <label>审核类型：</label> 
                <select class="easyui-combobox" panelHeight="auto" style="width:100px">
                    <option value="0">选择审核类型</option>
                    <option value="1">未审核</option>
                    <option value="2">已审核</option>
                </select> -->
                <label>关键词：</label><input class="wu-text" style="width:100px">
                <a  class="easyui-linkbutton" id = "search" iconCls="icon-search">开始检索</a>
            </div>
        </div>
        <table id="wu-datagrid" toolbar="#wu-toolbar"></table>
    </div>
</div> 

<script type="text/javascript">
$("#search").click(function(){
	var startTime = $("#startTime").val();
	var entTime = $("#endTime").val();
	 $.ajax({
			type:"post",
			url:"/window/updateLoanApplication.do",
			contentType:"application/json;charset=utf-8",
			data:JSON.stringify(loan),
			dataType:"json",
			success:function(data){
			
			}
	 })
	
})

$("#superintendent").combobox({
	  	url:"/window/findAllUsers.do",
	  	valueField:"userId",
	  	textField:"userName",
	  	panelHeight:"auto",
	  	editable:false,
	  	onLoadSuccess:function(){
	  		var data = $("#superintendent").combobox("getData");
	  		if(data.length>0){
	  			$("#superintendent").combobox("setValue",data[0].userId);
	  		}
	  	}
	  });

	//.....查看贷款个人详细信息窗口
	$("#updatebg").dialog({    
		title: '查看详情',
		iconCls:"icon-save",    
		width: 600,    
		height:480,
		top:100,    
		closed: true,    
		cache: false,    
		modal: true,
		 buttons:[
			    	{
			    		text:"保存",
			    		iconCls:"icon-save",
			    		handler:function(){
			    			var rows =$("#wu-datagrid").datagrid("getSelections")
			    			var index = $("#wu-datagrid").datagrid("getRowIndex",rows[0]);
			    			var auditor = $("#auditor").val();
			    			var superintendent = $("#superintendent").val();
			    			var opinion = $("#opinion").val();
			    			var statuName = $("#statuName").val();
			    			var firstMoney = $("#firstMoney").val();
			    			var rows = $("#wu-datagrid").datagrid("getSelections");
			    			if(rows.length==1){
			    					var loanApplicationID = (rows[0].loanApplicationID);
			    			}
			    			var loan = {};
			    			loan["staffID"] = superintendent;
			    			loan["userID"] = auditor;
			    			loan["resultFirst"] = opinion ;
			    			loan["loanApplicationID"] = loanApplicationID;
			    			loan["checkResult"] = statuName;
			    			loan["statusID"] = statuName;
			    			loan["firstMoney"] = firstMoney;
			    			 $.ajax({
								type:"post",
								url:"/window/updateLoanApplication.do",
								contentType:"application/json;charset=utf-8",
								data:JSON.stringify(loan),
								dataType:"json",
								success:function(data){
									if(data==1){
										alert("审核通过！");
													$("#wu-datagrid").datagrid("deleteRow",index);
													$("#updatebg").dialog("close");
											
									}else{
										alert("审核失败！");
									}
								}	
							});     
						}
			    	},{
			    		text:'取消',
						handler:function(){
							var rows = $("#wu-datagrid").datagrid("getSelections");
							if(rows.length==1){
									var loanApplicationID = (rows[0].loanApplicationID);
							}
							 $.ajax({	
			 					
								type:"post",
								//.........
								url:"/window/findLoanDetail.do",
								contentType:"application/json;charset=utf-8",
								data:JSON.stringify(loanApplicationID),
								dataType:"json",
								success:function(data){
									$("#updatebg").dialog("close");
								}
							});
			    		}
			    	}
			    ] 
			}); 
	//.....查看贷款个人详细信息事件
 $("#updateBtn").click(function(){
	 var rows = $("#wu-datagrid").datagrid("getSelections");
			if(rows.length==1){
					var loanApplicationID = (rows[0].loanApplicationID);
					 $.ajax({	
				 			async:false,
							type:"post",
							url:"/window/queryModify.do",
							contentType:"application/json;charset=utf-8",
							data:JSON.stringify(loanApplicationID),
							dataType:"json",
							success:function(data){
								if(data==0){
										$.ajax({	
							 				async:false,
											type:"post",
											//.........
											url:"/window/findLoanDetail.do",
											contentType:"application/json;charset=utf-8",
											data:JSON.stringify(loanApplicationID),
											dataType:"json",
											success:function(data){
												$("#updatebg").dialog("open");
												$("#loanApplicationID").html(data[0].loanApplicationID);
												$("#customerName").html(data[0].customerName);
												$("#loanMoney").html(data[0].loanMoney);
												$("#cause").html(data[0].cause);
												$("#credibility").html(data[0].credibility);
												$("#phoneNumber").html(data[0].phoneNumber);
												$("#address").html(data[0].address);
												$("#typeName").html(data[0].typeName);
												//$("#repaymentStatusID").html(data[0].repaymentStatusID);
												}	
											}); 
									}else{
										alert("有人正在审核此贷款订单！");
									}
							}
					});
						
			}else{
				alert("请选中一条数据进行审核操作");
			} 
		});

	/**
	* Name 分页过滤器
	*/
	function pagerFilter(data){            
		if (typeof data.length == 'number' && typeof data.splice == 'function'){// is array                
			data = {                   
				total: data.length,                   
				rows: data               
			}            
		}        
		var dg = $(this);         
		var opts = dg.datagrid('options');          
		var pager = dg.datagrid('getPager');          
		pager.pagination({                
			onSelectPage:function(pageNum, pageSize){                 
				opts.pageNumber = pageNum;                   
				opts.pageSize = pageSize;                
				pager.pagination('refresh',{pageNumber:pageNum,pageSize:pageSize});                  
				dg.datagrid('loadData',data);                
			}          
		});           
		if (!data.originalRows){               
			data.originalRows = (data.rows);       
		}         
		var start = (opts.pageNumber-1)*parseInt(opts.pageSize);          
		var end = start + parseInt(opts.pageSize);        
		data.rows = (data.originalRows.slice(start, end));         
		return data;       
	}
	
	/**
	* Name 载入数据
	 */
	$('#wu-datagrid').datagrid({
		url:'/window/findAllLoans.do',
		loadFilter:pagerFilter,		
		rownumbers:true,
		singleSelect:true,
		pageSize:10,           
		pagination:true,
		multiSort:true,
		fitColumns:true,
		fit:true,
		columns:[[ 
					{field:'loanApplicationID',title:'贷款单号',width:100,height:0,align:'right',sortable:true},
					{field:'customerID',title:'贷款人编号',width:100,height:0,align:'right',sortable:true},
					{field:'customerName',title:'申请人姓名',width:100,height:0,align:'right',sortable:true},
					{field:'loanMoney',title:'贷款金额',width:100,height:0,align:'right',sortable:true},
					{field:'cause',title:'款项去向',width:100,height:0,align:'right',sortable:true},
					{field:'loanDate',title:'贷款日期',width:100,height:0,align:'right',sortable:true},
					{field:'repaymentDate',title:'还款日期',width:100,height:0,align:'right',sortable:true},
					{field:'credibility',title:'诚信度',width:100,height:0,align:'right',sortable:true},
		    		{field:'statusName',title:'审核状态',width:100,height:0}    
				]]     
			}); 
</script>

</body>
</html>