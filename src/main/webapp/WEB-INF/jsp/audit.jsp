<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="easyui/jquery-3.1.1.min.js"></script>
  <script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
  <script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
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
 	<div id="loanDetail">
		<form id="upForm" method="post">
			<table width="100%" class="upTab">
				<tr>
					<th height="25" >贷款单编号：</th><td><span id="loanApplicationID"></span></td>
				</tr>
				<tr>
					<th height="25" >性别：</th><td><span id="age"></span></td>
				</tr>
				<tr>
					<th height="25">贷款申请人姓名</th><td><span id="customerName"></span></td>
				</tr>
				<tr>
					<th height="25">贷款申请人身份证号</th><td><span id="idNumber"></span></td>
				</tr>
				<tr>
					<th height="25">贷款金额</th><td><span id="loanMoney"></span></td>
				</tr>
				<tr>
					<th height="25">款项去向</th><td><span id="cause"></span></td>
				</tr>
				
				<tr>
					<th height="25">诚信度</th><td><span id="credibility"></span></td>
				</tr>
				<tr>
					<th height="25">手机号</th><td><span id="phoneNumber"></span></td>
				</tr>
				<tr>
					<th height="25">地址</th><td><span id="address"></span></td>
				</tr>
				<tr>
					<th height="25">贷款种类</th><td><span id="typeName"></span></td>
				</tr>

				<tr>
					<th height="25">审核人</th><td><span id="auditor"></span></td>
				</tr> 
				<tr>
					<th height="25">监督人</th><td>
					<span id="superintendent" ></span></td>
				</tr>
				<tr>
					<th height="25">审核意见</th><td><span id="opinion" ></span> </td>
				</tr>
				
				<tr>
					<th height="25">应还金额</th><td><span id="repayment"></span></td>
				</tr> 
				<tr>
					<th height="25">审批金额</th><td><span id="firstMoney"></span></td>
				</tr>
				<tr>
					<th height="25">贷款时间</th><td>
					<span id="loanDate" ></span></td>
				</tr>
				<tr>
					<th height="25">还款时间</th><td><span id="repaymentDate" ></span> </td>
				</tr>
				<tr>
					<th height="25">审核时间</th><td><span id="checkTime" ></span> </td>
				</tr>
				<tr>
					<th height="25">分期数</th><td><span id="stagesName" ></span> </td>
				</tr>
				<tr>
					<th height="25">利率</th><td><span id="interest" ></span> </td>
				</tr>
				
			</table>
		</form>
	</div>
 	
    <div data-options="region:'center',border:false">
        <div id="wu-toolbar">
            <div class="wu-toolbar-search" style="padding-top:20px;height:50px">
                <a id="loanDetailBtn" class="easyui-linkbutton" data-options="iconCls:'icon-man'">查看贷款详情</a>  
                &nbsp;&nbsp;&nbsp;
                <label>起始时间：</label><input class="easyui-datebox" style="width:100px">
                <label>结束时间：</label><input class="easyui-datebox" style="width:100px">
               
                <label>关键词：</label><input class="wu-text" style="width:100px">
                <a  class="easyui-linkbutton" id = "search" iconCls="icon-search">开始检索</a>
            </div>
        </div>
        <table id="wu-datagrid" toolbar="#wu-toolbar"></table>
    </div>
</div> 

<script type="text/javascript">
$("#loanDetailBtn").click(function(){
	 var rows = $("#wu-datagrid").datagrid("getSelections");
			if(rows.length==1){
					var loanApplicationID = (rows[0].LOANAPPLICATIONID);
					alert(loanApplicationID);
						  $.ajax({	
						 			async:false,
									type:"post",
									url:"/window/queryLoanById.do",
									contentType:"application/json;charset=utf-8",
									data:JSON.stringify(loanApplicationID),
									dataType:"json",
									success:function(data){
										$("#loanDetail").dialog("open");
										$("#loanApplicationID").html(loanApplicationID);
										$("#age").html(data[0].AGE);
										$("#customerName").html(data[0].CUSTOMERNAME);
										$("#idNumber").html(data[0].IDNUMBER);
										$("#loanMoney").html(data[0].LOANMONEY);
										$("#phoneNumber").html(data[0].PHONENUMBER);
										$("#cause").html(data[0].CAUSE);
										$("#credibility").html(data[0].CREDIBILITY);
										$("#address").html(data[0].ADDRESS);
										$("#typeName").html(data[0].TYPENAME);
										$("#auditor").html(data[0].USERNAME);
										$("#superintendent").html(data[0].STAFFNAME);
										$("#opinion").html(data[0].RESULTFIRST);
										$("#repayment").html(data[0].REPAYMENTAMOUNT);
										$("#loanDate").html(data[0].LOANDATE);
										$("#repaymentDate").html(data[0].REPAYMENTDATE);
										$("#checkTime").html(data[0].CHECKTIME);
										$("#stagesName").html(data[0].STAGESNAME+"个月");
										$("#interest").html(data[0].INTEREST);
										$("#firstMoney").html(data[0].FIRSTMONEY);
									}	
						});    
			}else{
				alert("请选中一条数据进行审核操作");
			} 
		});
$("#loanDetail").dialog({    
	title: '查看详情',
	iconCls:"icon-save",    
	width: 600,    
	height:480,
	top:100,    
	closed: true,    
	cache: false,    
	modal: true,
	
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
		url:'/window/queryAuditLoans.do',
		loadFilter:pagerFilter,		
		rownumbers:true,
		singleSelect:true,
		pageSize:10,           
		pagination:true,
		multiSort:true,
		fitColumns:true,
		fit:true,
		columns:[[ 
					{field:'LOANAPPLICATIONID',title:'贷款单号',width:100,height:0,align:'right',sortable:true},
					{field:'CUSTOMERNAME',title:'申请人姓名',width:100,height:0,align:'right',sortable:true},
					{field:'LOANMONEY',title:'贷款金额',width:100,height:0,align:'right',sortable:true},
					{field:'FIRSTMONEY',title:'批准金额',width:100,height:0,align:'right',sortable:true},
					{field:'LOANDATE',title:'贷款日期',width:100,height:0,align:'right',sortable:true},
					{field:'CAUSE',title:'款项去向',width:100,height:0,align:'right',sortable:true},
					{field:'REPAYMENTDATE',title:'还款日期',width:100,height:0,align:'right',sortable:true},
					{field:'CREDIBILITY',title:'诚信度',width:100,height:0,align:'right',sortable:true},
					{field:'USERNAME',title:'审核人',width:100,height:0,align:'right',sortable:true},
					{field:'STAFFNAME',title:'认证人',width:100,height:0,align:'right',sortable:true},
		    		{field:'STATUSNAME',title:'审核状态',width:100,height:0}    
				]]     
			}); 
</script>

</body>
</html>