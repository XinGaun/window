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
			<div id="wu-jueses">
				<div class="wu-toolbar-search"
					style="padding-top: 20px; height: 50px;">
					<shiro:hasPermission name="updateRole">
					<a id="UpdateTbRole" href="#" class="easyui-linkbutton"
						data-options="iconCls:'icon-man'">修改角色</a>
						</shiro:hasPermission>
							<shiro:hasPermission name="addRole">
						 <a id="addTbRole"
						href="#" class="easyui-linkbutton"
						data-options="iconCls:'icon-man'">添加角色</a>
						</shiro:hasPermission>
						 <label>角色名称：</label><input
						class="wu-text" style="width: 100px" id="roleNameQuery"> <a href="#"
						class="easyui-linkbutton" iconCls="icon-search" id="roleNameQueryGO">开始检索</a>
				</div>
			</div>
			<!-- End of toolbar -->
			<table id="wu-juese" toolbar="#wu-jueses"></table>
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
	<div id="juseii">
		<form action="">
			<div class="easyui-panel" title="Register"
				style="borwidth: 400px; padding: 30px 60px">
				<input id="role" style="display: none;" />
				<div style="margin-bottom: 20px;">
					<div>角色名称:</div>
					<input id="rolename" class="easyui-textbox"
						style="width: 100%; height: 32px"> <br> <span
						id="errorrolename" style="color: red;"></span>
				</div>
				<div style="margin-bottom: 20px">
					<div>角色关键字:</div>
					<input id="rolekey" class="easyui-textbox"
						style="width: 100%; height: 32px"> <span id="errorrolekey"
						style="color: red;"></span>
				</div>
				<div style="margin-bottom: 20px">
					<div>角色状态:</div>
					<select id="rolestu" class="easyui-combobox" name="dept"
						style="width: 100%; height: 32px" style="width: 200px;">
						<option value="正常">正常</option>
						<option value="禁用">禁用</option>
					</select>
				</div>
				<div style="margin-bottom: 20px">
					<div>分配权限:</div>
					<ul id="roleadd"></ul>
				</div>
				<div>
					<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
						style="width: 100%; height: 32px" id="addrole">确认添加</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
						style="width: 100%; height: 32px" id="guanbirole">取消</a>

				</div>
			</div>
		</form>
	</div>
	<div id="juseupdate">
		<form action="">
			<div class="easyui-panel" title="Register"
				style="width: 400px; padding: 30px 60px">
				<input id="jueseID" style="display: none;" />
				<div style="margin-bottom: 20px">
					<div>角色名称:</div>
					<input id="jueseName" class="easyui-textbox"
						style="width: 100%; height: 32px"> <br> <span
						id="errorjueseName" style="color:red"></span>
				</div>
				<div style="margin-bottom: 20px">
					<div>角色关键字:</div>
					<input id="jueseKey" class="easyui-textbox"
						style="width: 100%; height: 32px"> <span
						id="errorjueseKey" style="color:red"></span>
				</div>
				<div style="margin-bottom: 20px">
					<div>角色状态:</div>
					<select id="jueseStu" class="easyui-combobox" name="dept"
						style="width: 100%; height: 32px" style="width: 200px;">
						<option value="正常">正常</option>
						<option value="禁用">禁用</option>
					</select>
				</div>
				<div style="margin-bottom: 20px">
					<div>分配权限:</div>
					<ul id="roleupdate"></ul>
				</div>
				<div>
					<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
						style="width: 100%; height: 32px" id="updderole">确认添加</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
						style="width: 100%; height: 32px" id="rolecloo">取消</a>

				</div>
			</div>
		</form>
	</div>
	<!-- End of easyui-dialog -->
	<script type="text/javascript">
		//验证添加是名称和关键字是否为空
		$('#rolename').validatebox({
			required : true,
			missingMessage : "此信息为必填信息!"
		});
		$('#rolekey').validatebox({
			required : true,
			missingMessage : "此信息为必填信息!"
		});

		//生成添加角色树形菜单
		$('#roleadd').tree({
			url : '/window/TbPower/RolePower.do',
			checkbox : true
		});
		//执行修改角色方法
		$("#updderole").click(function() {
			var roleId = $("#jueseID").val();
			var roleName = $("#jueseName").val();
			var userRoleKeywords = $("#jueseKey").val();
			var userRoleStatus = $("#jueseStu").val();
			var rows = $('#roleupdate').tree('getChecked',['checked','indeterminate']);
			console.info(rows);
			if (roleName == "" || userRoleKeywords == "" || $("#errorjueseName").html()!=""||$("#errorjueseKey").html()!="") {
				return false;				
			}
			var stu = {
				roleId : roleId,
				roleName : roleName,
				userRoleKeywords : userRoleKeywords,
				userRoleStatus : userRoleStatus,
				rows:rows
			};
			$.ajax({
				type : "post",
				dataType : "json",
				url : "/window/tbrole/updateRole.do",
				contentType : "application/json;charset=utf-8",
				data : JSON.stringify(stu),
				success : function(data1) {
					if (data1 == 'success') {
						alert("修改成功!")
						$('#juseupdate').window('close');
						dada();
					} else {
						alert("添加失败!");
					}
				}
			});
		});
		//关闭修改模态框
		$("#rolecloo").click(function() {
			$('#juseupdate').window('close');
		});
		//生成修改角色树形菜单
		$('#roleupdate').tree({
			url : '/window/TbPower/RolePower.do',
			checkbox : true,
			animate:true,
			onBeforeLoad : function(node, param) {
				param.roleId = $("#jueseID").val();
				
			}
		});
		//打开修改角色模态框
		$("#UpdateTbRole").click(function() {

			var row = $('#wu-juese').datagrid('getSelected');
			if (!row) {
				alert("请选择一个角色进行修改!");
			} else {

				$("#jueseID").val(row.roleId);
				$("#jueseName").val(row.roleName);
				$("#jueseKey").val(row.userRoleKeywords);
				
					var node = $('#roleupdate').tree('getSelected');//获取根节点
					if (node){
						$('#roleupdate').tree('expandAll',node.target);
						
					} else {
						$('#roleupdate').tree('expandAll');
				
					}
					
				$('#juseupdate').window('open');
			}
		});
		//生成修改角色模态框
		$('#juseupdate').dialog({
			title : '修改角色',
			width : 550,
			height : 400,
			closed : true,
			cache : false,
			modal : true
		});
		//执行添加角色方法
		$("#addrole").click(
				function() {
					var roleName = $("#rolename").val();
					var userRoleKeywords = $("#rolekey").val();
					var userRoleStatus = $("#rolestu").val();
					var rows = $('#roleadd').tree('getChecked',['checked','indeterminate']);
					//alert(rows[0].id);
					if (userRoleKeywords == "" || roleName == ""
							|| $("#errorrolename").html() != ""
							|| $("#errorrolekey").html() != "") {
						return false;

					}
					var stu = {
						roleName : roleName,
						userRoleKeywords : userRoleKeywords,
						userRoleStatus : userRoleStatus,
						rows : rows
					};
					$.ajax({
						type : "post",
						dataType : "json",
						url : "/window/tbrole/addTbRole.do",
						contentType : "application/json;charset=utf-8",
						data : JSON.stringify(stu),
						success : function(data1) {
							if (data1 == 'success') {
								alert("添加成功!")
								$("#rolename").val("");
								$("#rolekey").val("");
								$('#juseii').window('close');
								dada();
							} else {
								alert("添加失败!");
							}
						}
					});
				});
		//打开模态框
		$("#guanbirole").click(function() {
			$('#juseii').window('close');
		});
		//打开模态框
		$("#addTbRole").click(function() {
			$('#juseii').window('open');
		});
		//生成添加角色模态框
		$('#juseii').dialog({
			title : '添加角色',
			width : 550,
			height : 400,
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
		$('#wu-juese').datagrid({
			url : '/window/tbrole/queryTbRole.do',
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
				field : 'roleId',
				title : '角色ID',
				width : 100,
				height : 0,
				align : 'center',
				sortable : true
			}, {
				field : 'roleName',
				title : '角色名称',
				width : 100,
				height : 0,
				align : 'center',
				sortable : true
			}, {
				field : 'userRoleKeywords',
				title : '关键字',
				width : 100,
				height : 0,
				align : 'center',
				sortable : true
			}, {
				field : 'userRoleStatus',
				title : '角色状态',
				width : 100,
				height : 0,
				align : 'center',
				sortable : true
			} ] ]
		});
		function dada() {
			$('#wu-juese').datagrid({
				url : '/window/tbrole/queryTbRole.do',
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
					field : 'roleId',
					title : '角色ID',
					width : 100,
					height : 0,
					align : 'center',
					sortable : true
				}, {
					field : 'roleName',
					title : '角色名称',
					width : 100,
					height : 0,
					align : 'center',
					sortable : true
				}, {
					field : 'userRoleKeywords',
					title : '关键字',
					width : 100,
					height : 0,
					align : 'center',
					sortable : true
				}, {
					field : 'userRoleStatus',
					title : '角色状态',
					width : 100,
					height : 0,
					align : 'center',
					sortable : true
				} ] ]
			});
		}
		/**
		 **验证角色名称是否唯一
		 */
		$('#rolename').blur(function() {
			var roleName = $('#rolename').val();
			if (roleName == "") {
				$("#errorrolename").html("角色名不为空!");
				return false;
			} else {
				$("#errorrolename").html("");
			}
			var stu = {
				roleName : roleName
			};
			$.ajax({
				type : "post",
				dataType : "json",
				url : "/window/tbrole/queryTbRoleNameKey.do",
				contentType : "application/json;charset=utf-8",
				data : JSON.stringify(stu),
				success : function(data1) {
					if (data1.length != 0) {
						$("#errorrolename").html("角色名重复!");
					} else {
						$("#errorrolename").html("");
					}
				}
			});

		});
		/**
		 **验证添加角色关键字是否重复
		 */
		$('#rolekey').blur(function() {
			var userRoleKeywords = $('#rolekey').val();
			if (userRoleKeywords == "") {
				$("#errorrolekey").html("关键字不为空!");
				return false;
			} else {
				$("#errorrolekey").html("");
			}
			var stu = {
				userRoleKeywords : userRoleKeywords
			};
			$.ajax({
				type : "post",
				dataType : "json",
				url : "/window/tbrole/queryTbRoleNameKey.do",
				contentType : "application/json;charset=utf-8",
				data : JSON.stringify(stu),
				success : function(data1) {
					if (data1.length != 0) {
						$("#errorrolekey").html("关键字重复!");
					} else {
						$("#errorrolekey").html("");
					}
				}
			});

		});
		/**
		 **验证修改角色名称是否唯一
		 */
		$('#jueseName').blur(function() {
			var roleName = $('#jueseName').val();
			var roleId = $('#jueseID').val();
			if(roleName==""){
				$('#errorjueseName').html("角色名不为空!");
				return false;
			}
			$('#errorjueseName').html("");
			var stu = {
				roleName : roleName,
				roleId : roleId
			};
			$.ajax({
				type : "post",
				dataType : "json",
				url : "/window/tbrole/queryTbRoleNameKey.do",
				contentType : "application/json;charset=utf-8",
				data : JSON.stringify(stu),
				success : function(data1) {
					if (data1.length != 0) {
						$("#errorjueseName").html("角色名重复!");
					} else {
						$("#errorjueseName").html("");
					}
				}
			});
		});
		/**
		**验证修改角色关键字是否唯一
		*/
		$('#jueseKey').blur(function() {
			var userRoleKeywords = $('#jueseKey').val();
			var roleId = $('#jueseID').val();
			if (userRoleKeywords == "") {
				$("#errorjueseKey").html("关键字不为空!");
				return false;
			} else {
				$("#errorjueseKey").html("");
			}
			var stu = {
				userRoleKeywords : userRoleKeywords,
				roleId:roleId
			};
			$.ajax({
				type : "post",
				dataType : "json",
				url : "/window/tbrole/queryTbRoleNameKey.do",
				contentType : "application/json;charset=utf-8",
				data : JSON.stringify(stu),
				success : function(data1) {
					if (data1.length != 0) {
						$("#errorjueseKey").html("关键字重复!");
					} else {
						$("#errorjueseKey").html("");
					}
				}
			});

		});
		/**
		**通过角色名称查询
		*/
		$("#roleNameQuery").blur(function(){
			var roleName = $("#roleNameQuery").val();
			$('#wu-juese').datagrid({
				url : '/window/tbrole/queryTbRoleName.do?roleName='+roleName,
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
					field : 'roleId',
					title : '角色ID',
					width : 100,
					height : 0,
					align : 'center',
					sortable : true
				}, {
					field : 'roleName',
					title : '角色名称',
					width : 100,
					height : 0,
					align : 'center',
					sortable : true
				}, {
					field : 'userRoleKeywords',
					title : '关键字',
					width : 100,
					height : 0,
					align : 'center',
					sortable : true
				}, {
					field : 'userRoleStatus',
					title : '角色状态',
					width : 100,
					height : 0,
					align : 'center',
					sortable : true
				} ] ]
			});
		});
	</script>
</body>
</html>