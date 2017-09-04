<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<div id="wu-toolbar11">
				<div class="wuu-toolbar-search"
					style="padding-top: 20px; height: 50px">
					<a id="UpdateUser" href="#" class="easyui-linkbutton"
						data-options="iconCls:'icon-man'">修改用户</a> <a id="addUser"
						href="#" class="easyui-linkbutton"
						data-options="iconCls:'icon-man'">添加用户</a> <label>关键词：</label><input
						class="wu-text" style="width: 100px"> <a href="#"
						class="easyui-linkbutton" iconCls="icon-search">开始检索</a>
				</div>
			</div>
			<!-- End of toolbar -->
			<table id="wu-datagrid" toolbar="#wu-toolbar11"></table>
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
		<div id="dd">
			<form action="">
				<div class="easyui-panel" title="Register"
					style="width: 400px; padding: 30px 60px">
					<input id="userid1" style="display: none;" />
					<div style="margin-bottom: 20px">
						<div>员工名称:</div>
						<input id="username1" class="easyui-textbox"
							style="width: 100%; height: 32px">
					</div>
					<div style="margin-bottom: 20px">
						<div>员工工资:</div>
						<input id="usergz1" class="easyui-textbox"
							style="width: 100%; height: 32px">
					</div>
					<div style="margin-bottom: 20px">
						<div>手机号:</div>
						<input class="easyui-textbox" id="call"
							style="width: 100%; height: 32px">
					</div>
					<div style="margin-bottom: 20px">
						<div>密码:</div>
						<input type="password" id="pwd" class="easyui-textbox"
							style="width: 100%; height: 32px">
					</div>
					<div style="margin-bottom: 20px">
						<div>确认密码:</div>
						<input type="password" class="easyui-textbox"
							style="width: 100%; height: 32px">
					</div>
					<div style="margin-bottom: 20px">
						<div>身份证号:</div>
						<input id="usershz1" class="easyui-textbox"
							style="width: 100%; height: 32px">
					</div>
					<div style="margin-bottom: 20px">
						<div>备注:</div>
						<input id="userbz1" class="easyui-textbox"
							style="width: 100%; height: 32px" value="...">
					</div>
					<div style="margin-bottom: 20px">
						<div>性别:</div>
						<select id="sex" class="easyui-combobox" name="dept"
							style="width: 100%; height: 32px" style="width: 200px;">
							<option value="男">男</option>
							<option value="女">女</option>
						</select>
					</div>
					<div>
						<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
							style="width: 100%; height: 32px" id="insertUser">添加员工</a>&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
							style="width: 100%; height: 32px" id="guanbi">取消</a>

					</div>
				</div>
			</form>
		</div>
	</div>
	<div id="ee">
		<form action="">
			<div class="easyui-panel" title="Register"
				style="width: 400px; padding: 30px 60px">
				<input id="userid2" style="display: none;" />
				<div style="margin-bottom: 20px">
					<div>员工名称:</div>
					<input id="username2" class="easyui-textbox"
						style="width: 100%; height: 32px">
				</div>
				<div style="margin-bottom: 20px">
					<div>员工工资:</div>
					<input id="usergz2" class="easyui-textbox"
						style="width: 100%; height: 32px">
				</div>
				<div style="margin-bottom: 20px">
					<div>手机号:</div>
					<input class="easyui-textbox" id="call2"
						style="width: 100%; height: 32px">
				</div>
				<div style="margin-bottom: 20px">
					<div>身份证号:</div>
					<input id="usershz2" class="easyui-textbox"
						style="width: 100%; height: 32px">
				</div>
				<div style="margin-bottom: 20px">
					<div>备注:</div>
					<input id="userbz2" class="easyui-textbox"
						style="width: 100%; height: 32px" value="...">
				</div>
				<div style="margin-bottom: 20px">
					<div>性别:</div>
					<select id="sex2" class="easyui-combobox" name="dept"
						style="width: 100%; height: 32px" style="width: 200px;">
						<option value="男">男</option>
						<option value="女">女</option>
					</select>
				</div>
				<div>
					<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
						style="width: 100%; height: 32px" id="upUser">确认修改</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
						style="width: 100%; height: 32px" id="guanbi2">取消</a>

				</div>
			</div>
		</form>
	</div>
	<!-- End of easyui-dialog -->
	<script type="text/javascript">
		//修改员工信息
		$("#upUser").click(function() {
			var userId = $("#userid2").val();
			var userName = $("#username2").val();
			var userSalary = $("#usergz2").val();
			var userSex = $("#sex2").val();
			var userCall = $("#call2").val();
			var identityCard = $("#usershz2").val();
			var userRemark = $("#userbz2").val();
			var stu = {
				userId : userId,
				userName : userName,
				userSalary : userSalary,
				userSex : userSex,
				userCall : userCall,
				identityCard : identityCard,
				userRemark : userRemark
			};
			$.ajax({
				type : "post",
				dataType : "json",
				url : "/window/User/updateUser.do",
				contentType : "application/json;charset=utf-8",
				data : JSON.stringify(stu),
				success : function(data1) {
					if (data1 == 'success') {
						alert("修改成功!")
						$('#ee').window('close');
						ss();
					} else {
						alert("添加失败!");
					}
				}
			});
		});
		//关闭修改模态框
		$("#guanbi2").click(function() {
			$('#ee').window('close');
		});
		//弹出修改用户信息模态框
		$("#UpdateUser").click(function() {
			var row = $('#wu-datagrid').datagrid('getSelected');
			if (!row) {
				alert("请选中一个员工进行修改!");
			} else {
				$("#userid2").val(row.userId);
				$("#username2").val(row.userName);
				$("#usergz2").val(row.userSalary);
				$("#call2").val(row.userCall);
				$("#usershz2").val(row.identityCard);
				$("#userbz2").val(row.userRemark);
				$('#ee').window('open');

			}

		});
		//添加用户信息
		$("#insertUser").click(function() {
			var userName = $("#username1").val();
			var userPassword = $("#pwd").val();
			var userSalary = $("#usergz1").val();
			var userSex = $("#sex").val();
			var userCall = $("#call").val();
			var identityCard = $("#usershz1").val();
			var userRemark = $("#userbz1").val();
			var stu = {
				userName : userName,
				userPassword : userPassword,
				userSalary : userSalary,
				userSex : userSex,
				userCall : userCall,
				identityCard : identityCard,
				userRemark : userRemark
			};
			$.ajax({
				type : "post",
				dataType : "json",
				url : "/window/User/addUser.do",
				contentType : "application/json;charset=utf-8",
				data : JSON.stringify(stu),
				success : function(data1) {
					if (data1 == 'success') {
						alert("添加成功!")
						$('#dd').window('close');
						ss();
					} else {
						alert("添加失败!");
					}
				}
			});
		});
		$('#dd').dialog({
			title : '添加员工',
			width : 600,
			height : 500,
			closed : true,
			cache : false,
			modal : true
		});
		$('#ee').dialog({
			title : '修改员工',
			width : 600,
			height : 500,
			closed : true,
			cache : false,
			modal : true
		});
		//关闭模态窗
		$("#guanbi").click(function() {
			$('#dd').window('close');
		});
		$("#addUser").click(function() {
			$('#dd').window('open');
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
		$('#wu-datagrid').datagrid({
			url : '/window/User/queryUser.do',
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
				field : 'userId',
				title : '员工ID',
				width : 100,
				height : 0,
				align : 'center',
				sortable : true
			}, {
				field : 'userName',
				title : '员工姓名',
				width : 100,
				height : 0,
				align : 'center',
				sortable : true
			}, {
				field : 'userSalary',
				title : '员工工资',
				width : 100,
				height : 0,
				align : 'center',
				sortable : true
			}, {
				field : 'userSex',
				title : '性别',
				width : 100,
				height : 0,
				align : 'center',
				sortable : true
			}, {
				field : 'userCall',
				title : '手机号',
				width : 100,
				height : 0,
				align : 'center',
				sortable : true
			}, {
				field : 'identityCard',
				title : '身份证号',
				width : 100,
				height : 0,
				align : 'center',
				sortable : true
			}, {
				field : 'userRemark',
				title : '备注',
				width : 100,
				height : 0,
				align : 'center'
			} ] ]
		});
		function ss() {
			$('#wu-datagrid').datagrid({
				url : '/window/User/queryUser.do',
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
					field : 'userId',
					title : '员工ID',
					width : 100,
					height : 0,
					align : 'center',
					sortable : true
				}, {
					field : 'userName',
					title : '员工姓名',
					width : 100,
					height : 0,
					align : 'center',
					sortable : true
				}, {
					field : 'userSalary',
					title : '员工工资',
					width : 100,
					height : 0,
					align : 'center',
					sortable : true
				}, {
					field : 'userSex',
					title : '性别',
					width : 100,
					height : 0,
					align : 'center',
					sortable : true
				}, {
					field : 'userCall',
					title : '手机号',
					width : 100,
					height : 0,
					align : 'center',
					sortable : true
				}, {
					field : 'identityCard',
					title : '身份证号',
					width : 100,
					height : 0,
					align : 'center',
					sortable : true
				}, {
					field : 'userRemark',
					title : '备注',
					width : 100,
					height : 0,
					align : 'center'
				} ] ]
			});
		}
	</script>
</body>
</html>