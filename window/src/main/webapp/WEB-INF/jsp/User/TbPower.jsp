<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="easyui/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet" href="easyui/themes/default/easyui.css"
	type="text/css"></link>
<link rel="stylesheet" href="easyui/themes/icon.css" type="text/css"></link>
</head>
</head>
<body>
	<div class="easyui-layout" data-options="fit:true">

		<div data-options="region:'center',border:false">
			<!-- Begin of toolbar -->
			<div id="wu-toolbar2">
				<div class="wu-toolbar-search"
					style="padding-top: 20px; height: 50px;">
						<shiro:hasPermission name="updatePower">
					<a id="UpdatePower" href="#" class="easyui-linkbutton"
						data-options="iconCls:'icon-man'">修改权限</a>
						</shiro:hasPermission>
						<shiro:hasPermission name="addPower">
						 <a id="addUPower"
						href="#" class="easyui-linkbutton"
						data-options="iconCls:'icon-man'">添加权限</a>
						</shiro:hasPermission>
						 <label>权限名称：</label><input
						id="quanxianmohu" class="wu-text" style="width: 100px"> <a
						href="#" class="easyui-linkbutton" iconCls="icon-search"
						id="quanxianmh">开始检索</a>
				</div>
			</div>
			<!-- End of toolbar -->
			<table id="wu-quan" toolbar="#wu-toolbar2"></table>
		</div>
	</div>
	<!-- Begin of easyui-dialog -->
	<div id="wu-dialog" class="easyui-dialog"
		data-options="closed:true,iconCls:'icon-save'"
		style="width: 400px; padding: 10px;">
		<form id="wu-form" method="post">
			<table>
				<tr>
					<td width="60" align="right">姓 名:</td>
					<td><input type="text" name="name" class="wu-text" /></td>
				</tr>
				<tr>
					<td align="right">邮 箱:</td>
					<td><input type="text" name="email" class="wu-text" /></td>
				</tr>
				<tr>
					<td align="right">主 题:</td>
					<td><input type="text" name="subject" class="wu-text" /></td>
				</tr>
				<tr>
					<td valign="top" align="right">内 容:</td>
					<td><textarea name="content" rows="6" class="wu-textarea"
							style="width: 260px"></textarea></td>
				</tr>
			</table>
		</form>
	</div>
	<div id="quan">
		<form action="">
			<div class="easyui-panel" title="Register"
				style="width: 400px; padding: 30px 60px">
				<input id="userid2" style="display: none;" />
				<div style="margin-bottom: 20px">
					<div>权限名称:</div>
					<input id="username2" class="easyui-textbox"
						style="width: 100%; height: 32px"> <br /> <span
						id="errorname" style="color: red;"></span>
				</div>
				<div style="margin-bottom: 20px">
					<div>关键字:</div>
					<input id="usergz2" class="easyui-textbox"
						style="width: 100%; height: 32px"> <br> <span
						id="errorkey" style="color: red;"></span>
				</div>
				<div style="margin-bottom: 20px">
					<div>状态:</div>
					<select class="easyui-textbox" id="call2"
						style="width: 100%; height: 32px">
						<option value="正常">正常</option>
						<option value="禁用">禁用</option>
					</select>
				</div>
				<div style="margin-bottom: 20px">
					<div>路径:</div>
					<input id="usershz2" class="easyui-textbox"
						style="width: 100%; height: 32px">
				</div>
				<div style="margin-bottom: 20px">
					<div>优先级:</div>
					<input id="userbz2" class="easyui-textbox"
						style="width: 100%; height: 32px">
				</div>
				<div style="margin-bottom: 20px">
					<div>是否显示在菜单中:</div>
					<select id="sex2" class="easyui-combobox" name="dept"
						style="width: 100%; height: 32px" style="width: 200px;">
						<option value="1">显示</option>
						<option value="2">不显示</option>
					</select>
				</div>
				<div style="margin-bottom: 20px">
					<div>父级权限:</div>
					<input id="powerPid" name="power_pid"
						style="width: 100%; height: 32px">
				</div>
				<div>
					<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
						style="width: 100%; height: 32px" id="addPow">确认添加</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
						style="width: 100%; height: 32px" id="guanbi2">取消</a>

				</div>
			</div>
		</form>
	</div>
	<div id="upquan">
		<form action="">
			<div class="easyui-panel" title="Register"
				style="width: 400px; padding: 30px 60px">
				<input id="quanid" style="display: none;" />
				<div style="margin-bottom: 20px">
					<div>权限名称:</div>
					<input id="quanname" class="easyui-textbox"
						style="width: 100%; height: 32px"> <br /> <span
						id="errorName2" style="color: red"></span>
				</div>
				<div style="margin-bottom: 20px">
					<div>关键字:</div>
					<input id="quankey" class="easyui-textbox"
						style="width: 100%; height: 32px"> <br /> <span
						id="errorkkk" style="color: red;"></span>
				</div>
				<div style="margin-bottom: 20px">
					<div>状态:</div>
					<select class="easyui-textbox" id="quanstu"
						style="width: 100%; height: 32px">
						<option value="正常">正常</option>
						<option value="禁用">禁用</option>
					</select>
				</div>
				<div style="margin-bottom: 20px">
					<div>路径:</div>
					<input id="quanurl" class="easyui-textbox"
						style="width: 100%; height: 32px"> <br /> <span id="URLGJ"
						style="color: red;"></span>
				</div>
				<div style="margin-bottom: 20px">
					<div>优先级:</div>
					<input id="quanyou" class="easyui-textbox"
						style="width: 100%; height: 32px"> <br /> <span
						id="errorPriority" style="color: red;"></span>
				</div>
				<div style="margin-bottom: 20px">
					<div>是否显示在菜单中:</div>
					<select id="ispass" class="easyui-combobox" name="dept"
						style="width: 100%; height: 32px" style="width: 200px;">
						<option value="1">显示</option>
						<option value="2">不显示</option>
					</select>
				</div>
				<div style="margin-bottom: 20px">
					<div>父级权限:</div>
					<input id="powerPid2" name="power_pid"
						style="width: 100%; height: 32px">
				</div>
				<div>
					<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
						style="width: 100%; height: 32px" id="upokPow">确认修改</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
						style="width: 100%; height: 32px" id="upclose">取消修改</a>

				</div>
			</div>
		</form>
	</div>
	<!-- End of easyui-dialog -->
	<script type="text/javascript">	
		
		
		
		
		

		//确认修改权限
		$("#upokPow").click(function(){
			var powerId = $("#quanid").val();
			var powerName = $("#quanname").val();
			var powerKey = $("#quankey").val();
			var powerView = $("#ispass").val();
			var powerStatus = $("#quanstu").val();
			var powerRoad = $("#quanurl").val();
			var powerPriority = $("#quanyou").val();
			var powerPid  = $("#powerPid2").combobox('getValue');
			var stu = {
				powerId:powerId,
				powerName:powerName,
				powerKey:powerKey,
				powerView:powerView,
				powerStatus:powerStatus,
				powerRoad:powerRoad,
				powerPriority:powerPriority,
				powerPid:powerPid
			};
			if($("#errorName2").html()!=""||$("#errorkkk").html()!=""||$("#URLGJ").html()!=""||$("#errorPriority").html()!=""){
				alert("请确认信息无误后修改！");
				return false;
			}
			$.ajax({
				type : "post",
				dataType : "json",
				url : "/window/TbPower/updatePower.do",
				contentType : "application/json;charset=utf-8",
				data :  JSON.stringify(stu),
				success : function(data1) {
					if(data1=='success'){
						alert("修改成功!")
						$('#upquan').window('close');
						ss();
					}else{
						alert("修改失败!");
					}				
				}	
			}); 
			
		});
		//关闭修改模态窗
 		$("#upclose").click(function(){
			$('#upquan').window('close');
		});
		//打开修改权限模态窗
		$("#UpdatePower").click(function(){
			//生称父级下拉菜单
			$('#powerPid').combobox({    
		    	url:'/window/TbPower/queryTbPower.do',    
		   		valueField:'powerId',    
		   		textField:'powerName' ,
		   		panelHeight:"auto",
			  	editable:false
			  	

			}); 
			var row = $('#wu-quan').datagrid('getSelected');
			if(!row){
				alert("请选择一个权限进行修改!");
			}else{
				$("#quanid").val(row.powerId);
				$("#quanname").val(row.powerName);
				$("#quankey").val(row.powerKey);
				$("#quanstu").val(row.powerStatus);
				$("#quanurl").val(row.powerRoad);
				$("#quanyou").val(row.powerPriority);
				$('#powerPid2').combobox({    
			    	url:'/window/TbPower/queryTbPower.do',    
			   		valueField:'powerId',    
			   		textField:'powerName' ,
			   		panelHeight:"auto",
				  	editable:false,
				  	onLoadSuccess:function(){
				  		var aa= -1;
				  		var data = $("#powerPid2").combobox("getData");
				  		
				  		
				  		if(data.length>0){
				  			//$("#powerPid2").combobox("setValue",data[0].powerId);
				  		}
				  	}

				}); 
				$('#upquan').window('open');
			}
		});
		//添加一个权限
		$("#addPow").click(function(){
			var powerName = $("#username2").val();
			var powerKey = $("#usergz2").val();
			var powerView = $("#sex2").val();
			var powerStatus = $("#call2").val();
			var powerRoad = $("#usershz2").val();
			var powerPriority = $("#userbz2").val();
			var powerPid = $('#powerPid').combobox('getValue');
			if(powerName==""||powerKey==""||powerRoad==""||powerPriority==""){
				alert("请完善信息后再提交！");
				return false;
			}else if($("#errorkey").html()!=""||$("#errorname").html()!=""){
				alert("提交的信息有误，请确认后提交！");
				return false;
			}
			var stu = {
				powerName:powerName,
				powerKey:powerKey,
				powerView:powerView,
				powerStatus:powerStatus,
				powerRoad:powerRoad,
				powerPriority:powerPriority,
				powerPid:powerPid
			};
			$.ajax({
				type : "post",
				dataType : "json",
				url : "/window/TbPower/addTbPower.do",
				contentType : "application/json;charset=utf-8",
				data :  JSON.stringify(stu),
				success : function(data1) {
					if(data1=='success'){
						alert("添加成功!")
						$("#username2").val("");
						$("#usergz2").val("");
						$("#usershz2").val("");
						$("#userbz2").val("");
						$('#quan').window('close');
						
						ss();
					}else{
						alert("添加失败!");
					}				
				}

			});
		}); 
		//关闭模态窗
		$("#guanbi2").click(function(){
			$('#quan').window('close');
		});
		//打开模态窗
		$("#addUPower").click(function(){
			//生称父级下拉菜单
			$('#powerPid').combobox({    
		    	url:'/window/TbPower/queryTbPower.do',    
		   		valueField:'powerId',    
		   		textField:'powerName' ,
		   		panelHeight:"auto",
			  	editable:false
			  	

			}); 
			$('#quan').window('open');
			
		});
		//创建模态框
		$('#quan').dialog({
			title : '添加权限',
			width : 600,
			height : 500,
			closed : true,
			cache : false,
			modal : true
		});
		$('#upquan').dialog({
			title : '修改权限',
			width : 600,
			height : 500,
			closed : true,
			cache : false,
			modal : true
		});
		/**
		 * Name 分页过滤器
		 */
		function pagerFilter(data) {
			if (typeof data.length == 'number'
					&& typeof data.splice == 'function') {// is array                
				data = {
					total : data.length,
					rows : data
				}
			}
			var dg = $(this);
			var opts = dg.datagrid('options');
			var pager = dg.datagrid('getPager');
			pager.pagination({
				onSelectPage : function(pageNum, pageSize) {
					opts.pageNumber = pageNum;
					opts.pageSize = pageSize;
					pager.pagination('refresh', {
						pageNumber : pageNum,
						pageSize : pageSize
					});
					dg.datagrid('loadData', data);
				}
			});
			if (!data.originalRows) {
				data.originalRows = (data.rows);
			}
			var start = (opts.pageNumber - 1) * parseInt(opts.pageSize);
			var end = start + parseInt(opts.pageSize);
			data.rows = (data.originalRows.slice(start, end));
			return data;
		}

		/**
		 * Name 载入数据
		 */
		$('#wu-quan').datagrid({
			url : '/window/TbPower/queryTbPower.do',
			loadFilter : pagerFilter,
			rownumbers : true,
			singleSelect : true,
			pageSize : 10,
			pagination : true,
			multiSort : true,
			fitColumns : true,
			fit : true,
			fitColumns : true,
			columns : [ [ {
				field : 'powerId',
				title : '权限ID',
				width : 100,
				height : 0,
				align : 'center',
				sortable : true
			}, {
				field : 'powerName',
				title : '权限姓名',
				width : 100,
				height : 0,
				align : 'center',
				sortable : true
			}, {
				field : 'powerKey',
				title : '关键字',
				width : 100,
				height : 0,
				align : 'center',
				sortable : true
			}, {
				field : 'powerView',
				title : '是否在菜单显示',
				width : 100,
				height : 0,
				align : 'center',
				sortable : true
			}, {
				field : 'powerStatus',
				title : '权限状态',
				width : 100,
				height : 0,
				align : 'center',
				sortable : true
			}, {
				field : 'powerRoad',
				title : '权限路径',
				width : 100,
				height : 0,
				align : 'center',
				sortable : true
			}, {
				field : 'powerPriority',
				title : '优先级',
				width : 100,
				height : 0,
				align : 'center'
			},{
				field : 'powerPid',
				title : '父级权限',
				width : 100,
				height : 0,
				align : 'center'
			} ] ]
		});
		 function ss(){
			$('#wu-quan').datagrid({
			url : '/window/TbPower/queryTbPower.do',
			loadFilter : pagerFilter,
			rownumbers : true,
			singleSelect : true,
			pageSize : 10,
			pagination : true,
			multiSort : true,
			fitColumns : true,
			fit : true,
			fitColumns : true,
			columns : [ [ {
				field : 'powerId',
				title : '权限ID',
				width : 100,
				height : 0,
				align : 'center',
				sortable : true
			}, {
				field : 'powerName',
				title : '权限姓名',
				width : 100,
				height : 0,
				align : 'center',
				sortable : true
			}, {
				field : 'powerKey',
				title : '关键字',
				width : 100,
				height : 0,
				align : 'center',
				sortable : true
			}, {
				field : 'powerView',
				title : '是否在菜单显示',
				width : 100,
				height : 0,
				align : 'center',
				sortable : true
			}, {
				field : 'powerStatus',
				title : '权限状态',
				width : 100,
				height : 0,
				align : 'center',
				sortable : true
			}, {
				field : 'powerRoad',
				title : '权限路径',
				width : 100,
				height : 0,
				align : 'center',
				sortable : true
			}, {
				field : 'powerPriority',
				title : '优先级',
				width : 100,
				height : 0,
				align : 'center'
			} ,{
				field : 'powerPid',
				title : '父级权限',
				width : 100,
				height : 0,
				align : 'center'
			}] ]
		});
		} 
		 
		/**
			验证添加权限的权限名称是否重复
		*/
		$('#username2').validatebox({    
			   required: true,    
			   missingMessage:"必须填写该信息"
		});
		$('#username2').blur(function(){
			var powerName = $("#username2").val();
			var stu = {
				powerName:powerName	
			};
			$.ajax({
				type : "post",
				dataType : "json",
				url : "/window/TbPower/queryPowerName.do",
				contentType : "application/json;charset=utf-8",
				data :  JSON.stringify(stu),
				success : function(data1) {
					if(data1.length!=0){
						$("#errorname").html("权限名称重复！");
					}else{
						$("#errorname").html("");
					}			
				}	
			});

		});
	/**
		验证添加权限的关键字是否重复
	*/
	$('#usergz2').validatebox({    
		   required: true,    
		   missingMessage:"必须填写该信息"
	});
	$('#usergz2').blur(function(){
		var powerKey  = $("#usergz2").val();
		var stu = {
			powerKey:powerKey	
		};
		$.ajax({
			type : "post",
			dataType : "json",
			url : "/window/TbPower/queryPowerName.do",
			contentType : "application/json;charset=utf-8",
			data :  JSON.stringify(stu),
			success : function(data1) {
				if(data1.length!=0){
					$("#errorkey").html("关键字重复！");
				}else{
					$("#errorkey").html("");
				}			
			}	
		});

	});
	/* 
	*验证路径是否为空
	*
	*/
	$('#usershz2').validatebox({    
		   required: true,    
		   missingMessage:"必须填写该信息"
	});
	/*
	*验证优先级是否为数字
	*/
	$('#userbz2').numberbox({ 
		value:0,
	    min:0,  
	    max:10,
	    precision:0    
	});  
	/**
	* 验证修改用户名是否唯一
	*/
	$('#quanname').blur(function(){
		var powerId  = $("#quanid").val();
		var powerName  = $("#quanname").val();
		if(powerName==""){
			$("#errorName2").html("权限名不为空!");
			return false;
		}
		$("#errorName2").html("");

		var stu = {
				powerId:powerId,
				powerName:powerName
		};
		$.ajax({
			type : "post",
			dataType : "json",
			url : "/window/TbPower/queryPowerName.do",
			contentType : "application/json;charset=utf-8",
			data :  JSON.stringify(stu),
			success : function(data1) {
				if(data1.length!=0){
					$("#errorName2").html("权限名称重复！");
				}else{
					$("#errorName2").html("");
				}			
			}	
		});

	});
	/**
	**验证修改关键字是否重复
	*/
	$('#quankey').blur(function(){
		
		var powerId  = $("#quanid").val();
		var powerKey  = $("#quankey").val();
		if(powerKey==""){
			$("#errorkkk").html("关键字不为空！");
			return false;
		}
		$("#errorkkk").html("");
		var stu = {
				powerId:powerId,
				powerKey:powerKey
		};
		$.ajax({
			type : "post",
			dataType : "json",
			url : "/window/TbPower/queryPowerName.do",
			contentType : "application/json;charset=utf-8",
			data :  JSON.stringify(stu),
			success : function(data1) {
				if(data1.length!=0){
					$("#errorkkk").html("关键字重复！");
				}else{
					$("#errorkkk").html("");
				}			
			}	
		});

	});
	/**
	*验证修改路径不为空
	*/
	$('#quanurl').blur(function(){
		var powerRoad = $("#quanurl").val();
		if(powerRoad==""){
			$("#URLGJ").html("路径不为空！");
			return false;
		}
		$("#URLGJ").html("");
	});	
	/**
	**验证修改优先级只能是数字不为空
	*/
	$('#quanyou').numberbox({ 
		value:0,
	    min:0,  
	    max:10,
	    precision:0    
	});
	$('#quanyou').blur(function(){
		var powerPriority = $("#quanyou").val();
		if(powerPriority==""){
			$("#errorPriority").html("优先级不为空!");
			return false;
		}
		$("#errorPriority").html("");
	});
	/**
	**实现模糊搜索
	*/
	$("#quanxianmohu").blur(
		function(){
			var powerKey = $("#quanxianmohu").val();
			$('#wu-quan').datagrid({
				url : '/window/TbPower/vague.do?powerKey='+powerKey,
				loadFilter : pagerFilter,
				rownumbers : true,
				singleSelect : true,
				pageSize : 10,
				pagination : true,
				multiSort : true,
				fitColumns : true,
				fit : true,
				fitColumns : true,
				columns : [ [ {
					field : 'powerId',
					title : '权限ID',
					width : 100,
					height : 0,
					align : 'center',
					sortable : true
				}, {
					field : 'powerName',
					title : '权限姓名',
					width : 100,
					height : 0,
					align : 'center',
					sortable : true
				}, {
					field : 'powerKey',
					title : '关键字',
					width : 100,
					height : 0,
					align : 'center',
					sortable : true
				}, {
					field : 'powerView',
					title : '是否在菜单显示',
					width : 100,
					height : 0,
					align : 'center',
					sortable : true
				}, {
					field : 'powerStatus',
					title : '权限状态',
					width : 100,
					height : 0,
					align : 'center',
					sortable : true
				}, {
					field : 'powerRoad',
					title : '权限路径',
					width : 100,
					height : 0,
					align : 'center',
					sortable : true
				}, {
					field : 'powerPriority',
					title : '优先级',
					width : 100,
					height : 0,
					align : 'center'
				},{
					field : 'powerPid',
					title : '父级权限',
					width : 100,
					height : 0,
					align : 'center'
				} ] ]
			});
		}		
	);
	</script>
</body>
</html>