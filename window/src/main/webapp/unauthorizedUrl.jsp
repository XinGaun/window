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
			<div id="wu-toolbar">
				<div class="wu-toolbar-search"
					style="padding-top: 20px; height: 50px">
					<a id="UpdateUser" href="#" class="easyui-linkbutton"
						data-options="iconCls:'icon-man'" >修改用户</a> <a id="addUser"
						href="#" class="easyui-linkbutton"
						data-options="iconCls:'icon-man'">添加用户</a> <label>关键词：</label><input
						class="wu-text" style="width: 100px"> <a href="#"
						class="easyui-linkbutton" iconCls="icon-search">开始检索</a>
				</div>
			</div>
			<!-- End of toolbar -->
			<table id="wu-datagrid" toolbar="#wu-toolbar"></table>
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
		
	<!-- End of easyui-dialog -->
	<script type="text/javascript">		
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
		//	url : '/window/User/queryUser.do',
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
		/* function ss(){
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
		} */
	</script>
</body>
</html>