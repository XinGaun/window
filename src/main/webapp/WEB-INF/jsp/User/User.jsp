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
			<div id="wu-toolbar11">
				<div class="wuu-toolbar-search"
					style="padding-top: 20px; height: 50px">
					<shiro:hasPermission name="updateUser">
					<a id="UpdateUser" href="#" class="easyui-linkbutton"
						data-options="iconCls:'icon-man'">修改用户</a>
						</shiro:hasPermission>
						<shiro:hasPermission name="addUser">
						 <a id="addUser"
						href="#" class="easyui-linkbutton"
						data-options="iconCls:'icon-man'">添加用户</a>
						</shiro:hasPermission>
						 <label>员工姓名：</label><input
						class="wu-text" style="width: 100px" id="dimUserName"> <a href="#"
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
							style="width: 100%; height: 32px"> <br> <span
							style="color: red;" id="userCallerror"></span>
					</div>
					<div style="margin-bottom: 20px">
						<div>密码:</div>
						<input type="password" id="pwd" class="easyui-textbox"
							style="width: 100%; height: 32px">
					</div>
					<div style="margin-bottom: 20px">
						<div>确认密码:</div>
						<input type="password" class="easyui-textbox"
							style="width: 100%; height: 32px" id="pwdY"> <br> <span
							id="errorpwdY" style="color: red;"></span>
					</div>
					<div style="margin-bottom: 20px">
						<div>身份证号:</div>
						<input id="usershz1" class="easyui-textbox"
							style="width: 100%; height: 32px"> <br> <span
							id="errorusershz1" style="color: red;"></span>
					</div>
					<div style="margin-bottom: 20px">
						<div>备注:</div>
						<textarea id="userbz1" 
							style="width: 100%; height: 50px; ">...</textarea>
					</div>
					<div style="margin-bottom: 20px">
						<div>性别:</div>
						<select id="sex" class="easyui-combobox" name="dept"
							style="width: 100%; height: 32px" style="width: 200px;">
							<option value="男">男</option>
							<option value="女">女</option>
						</select>
					</div>
					<div style="margin-bottom: 20px">
						<div>状态:</div>
						<select id="UserStutas" class="easyui-combobox" name="dept"
							style="width: 100%; height: 32px" style="width: 200px;">
							<option value="正常">正常</option>
							<option value="禁用">禁用</option>
						</select>
					</div>
					<div style="margin-bottom: 20px">
						<div>添加角色:</div>
						<table id="addUserRole"></table>
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
					<br/>
					<span id="errorusername2" style="color:red;"></span>
				</div>
				<div style="margin-bottom: 20px">
					<div>员工工资:</div>
					<input id="usergz2" class="easyui-textbox"
						style="width: 100%; height: 32px" onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this)" onblur="this.v();">
						<br/>
					<span id="errorusergz2" style="color:red;"></span>
				</div>
				<div style="margin-bottom: 20px">
					<div>手机号:</div>
					<input class="easyui-textbox" id="call2"
						style="width: 100%; height: 32px">
							<br/>
					<span id="errorcall2" style="color:red;"></span>
				</div>
				<div style="margin-bottom: 20px">
					<div>身份证号:</div>
					<input id="usershz2" class="easyui-textbox"
						style="width: 100%; height: 32px">
								<br/>
					<span id="errorusershz2" style="color:red;"></span>
				</div>
				<div style="margin-bottom: 20px">
					<div>备注:</div>
					<textarea id="userbz2" 
							style="width: 100%; height: 50px; ">...</textarea>
				</div>
				
				<div style="margin-bottom: 20px">
					<div>性别:</div>
					<select id="sex2" class="easyui-combobox" name="dept"
						style="width: 100%; height: 32px" style="width: 200px;">
						<option value="男">男</option>
						<option value="女">女</option>
					</select>
				</div>
				<div style="margin-bottom: 20px">
						<div>状态:</div>
						<select id="UserStutas2" class="easyui-combobox" name="dept"
							style="width: 100%; height: 32px" style="width: 200px;">
							<option value="正常">正常</option>
							<option value="禁用">禁用</option>
						</select>
					</div>
				<div>
				<div style="margin-bottom: 20px">
						<div>添加角色:</div>
						<table id="addUserRole2"></table>
				</div>
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
			var userStatus = $("#UserStutas2").val();
			var arr = new Array();
			var test = $("input[name^='addUserJu2']:checked").each(function(){
			   arr.push($(this).val()); 
			})
			
			var rows = arr;
			var stu = {
				userId : userId,
				userName : userName,
				userSalary : userSalary,
				userSex : userSex,
				userCall : userCall,
				identityCard : identityCard,
				userRemark : userRemark,
				userStatus:userStatus,
				rows:rows
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
				var userId = $("#userid2").val();
			
				$("#username2").val(row.userName);
				$("#usergz2").val(row.userSalary);
				$("#call2").val(row.userCall);
				$("#usershz2").val(row.identityCard);
				$("#userbz2").val(row.userRemark);
				$("#addUserRole2").html("");
				var stu = {
						userId : userId
				}
				$.ajax({
					type : "post",
					dataType : "json",
					url : "/window/User/queryTbRole.do",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify(stu),
					success : function(data1) {
						var index = 0;
						var str ="";
						for(var i=0;i<data1.length;i++){
							str =str+ "<td><input type='checkbox' name='addUserJu2' value='"+data1[i].id+"' "+data1[i].checked+"/>"+data1[i].text +"</td>"
							index++;
							if(index==5||i==data1.length-1){
								str = "<tr>"+str +"</tr>";
								$("#addUserRole2").append(str);
								str="";
								index=0;
							}
						}
						
					}
				});
				
				$('#ee').window('open');

			}

		});
		//添加用户信息
		$("#insertUser").click(
				function() {
					var userName = $("#username1").val();
					var userPassword = $("#pwd").val();
					var userSalary = $("#usergz1").val();
					var userSex = $("#sex").val();
					var userCall = $("#call").val();
					var identityCard = $("#usershz1").val();
					var userRemark = $("#userbz1").val();
					var userStatus = $("#UserStutas").val();
					var arr = new Array();
					var test = $("input[name^='addUserJu']:checked").each(function(){
					   arr.push($(this).val()); 
					})
					
					var rows = arr;/* $("input:checkbox[name='addUserJu']:checked").val(); */
					
					var stu = {
						userName : userName,
						userPassword : userPassword,
						userSalary : userSalary,
						userSex : userSex,
						userCall : userCall,
						identityCard : identityCard,
						userRemark : userRemark,
						userStatus : userStatus,
						rows:rows
					};
					if (userName == "" || userPassword == ""
							|| userSalary == "" || userCall == ""
							|| identityCard == "") {
						return false;
					}
					
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
		//添加信息模态框
		$("#addUser").click(function() {
			$("#addUserRole").html("");
			var userId = 0;
			var stu = {
					userId : userId
			}
			$.ajax({
				type : "post",
				dataType : "json",
				url : "/window/User/queryTbRole.do",
				contentType : "application/json;charset=utf-8",
				data : JSON.stringify(stu),
				success : function(data1) {
					var index = 0;
					var str ="";
					for(var i=0;i<data1.length;i++){
						str =str+ "<td><input type='checkbox' name='addUserJu' value='"+data1[i].id+"'/>"+data1[i].text +"</td>"
						index++;
						if(index==5||i==data1.length-1){
							str = "<tr>"+str +"</tr>";
							$("#addUserRole").append(str);
							str="";
							index=0;
						}
					}
					
				}
			});
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
			}, {
				field : 'userStatus',
				title : '状态',
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
				}, {
					field : 'userStatus',
					title : '状态',
					width : 100,
					height : 0,
					align : 'center'
				} ] ]
			});
		}
		//添加员工姓名不为空
		$('#username1').validatebox({
			required : true,

		});
		//添加员工工资不为空
		$('#usergz1').numberbox({
			required : true,
			min : 0,
			precision : 2
		});
		//员工手机号验证
		$('#call').numberbox({
			required : true,
			min : 1
		});
		/**
		 **添加员工手机号唯一验证
		 **/
		$("#call").blur(function() {
			var userCall = $('#call').val();
			if (userCall == "") {

				return false;
			}
			var stu = {
				userCall : userCall
			};

			$.ajax({
				type : "post",
				dataType : "json",
				url : "/window/User/queryUserCall.do",
				contentType : "application/json;charset=utf-8",
				data : JSON.stringify(stu),
				success : function(data1) {
					if (data1 == 'success') {
						$("#userCallerror").html("");
					} else {
						$("#userCallerror").html("手机号重复!");
					}
				}
			});
		});
		/**
		 **添加员工验证密码
		 */
		$('#pwd').validatebox({
			required : true,
		});
		$('#pwdY').validatebox({
			required : true,
		});
		$('#pwdY').blur(function() {
			var pwd = $('#pwd').val();
			var pwdY = $('#pwdY').val();
			if (pwdY != pwd) {
				$("#errorpwdY").html("两次输入密码不一致!");
				return false;
			}
			$("#errorpwdY").html("");
		});
		/**
		 **验证添加员工身份证号是否重复
		 */
		$('#usershz1').validatebox({
			required : true,
		});
		$('#usershz1').blur(function() {
			var identityCard = $('#usershz1').val();
			if (identityCard == ""||identityCard.length!=18) {
				$("#errorusershz1").html("身份证号格式错误!");
				return false;
			}
			$("#errorusershz1").html("");
			var stu = {
				identityCard : identityCard
			};
			$.ajax({
				type : "post",
				dataType : "json",
				url : "/window/User/queryUserCall.do",
				contentType : "application/json;charset=utf-8",
				data : JSON.stringify(stu),
				success : function(data1) {
					if (data1 == 'success') {
						$("#errorusershz1").html("");
					} else {
						$("#errorusershz1").html("身份证号重复!");
					}
				}
			});
		});
		/**
		***验证修改员工的角色名称
		**/
		$("#username2").blur(function(){
			var username2 = $("#username2").val();
			if(username2==""){
				$("#errorusername2").html("用户名不为空!");
			}else{
				$("#errorusername2").html("");
			}
		});
		/*
		**验证修改员工工资
		*/
		$('#usergz2').blur(function(){
			var usergz2 = $("#usergz2").val();
			if(usergz2==""){
				$("#errorusergz2").html("工资不为空!");
			}else{
				$("#errorusergz2").html("");
			}
		});
		/**
		**验证员工手机号是否重复
		*/
		$("#call2").blur(function() {
			var userCall = $('#call2').val();
			var userId = $("#userid2").val();
			if (userCall == "") {
				$("#errorcall2").html("手机号格式错误!");
				return false;
			}
			$("#errorcall2").html("");
			var stu = {
				userCall : userCall,
				userId:userId
			};

			$.ajax({
				type : "post",
				dataType : "json",
				url : "/window/User/queryUserCall.do",
				contentType : "application/json;charset=utf-8",
				data : JSON.stringify(stu),
				success : function(data1) {
					if (data1 == 'success') {
						$("#errorcall2").html("");
					} else {
						$("#errorcall2").html("手机号重复!");
					}
				}
			});
		});
		/**
		***验证修改角色身份证号是否唯一
		*/
		$('#usershz2').blur(function() {
			var identityCard = $('#usershz2').val();
			var userId = $("#userid2").val();
			if (identityCard == ""||identityCard.length!=18) {
				$("#errorusershz2").html("身份证号格式错误!");
				return false;
			}
			$("#errorusershz2").html("");
			var stu = {
				identityCard : identityCard,
				userId:userId
			};
			$.ajax({
				type : "post",
				dataType : "json",
				url : "/window/User/queryUserCall.do",
				contentType : "application/json;charset=utf-8",
				data : JSON.stringify(stu),
				success : function(data1) {
					if (data1 == 'success') {
						$("#errorusershz2").html("");
					} else {
						$("#errorusershz2").html("身份证号重复!");
					}
				}
			});
		});
		/**
		**通过用户名进行模糊查询
		*/
		$("#dimUserName").blur(function(){
			var userName = $("#dimUserName").val();
			$('#wu-datagrid').datagrid({
				url : '/window/User/queryDimUserName.do?userName='+userName,
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
				}, {
					field : 'userStatus',
					title : '状态',
					width : 100,
					height : 0,
					align : 'center'
				} ] ]
			});
		});
	</script>
</body>
</html>