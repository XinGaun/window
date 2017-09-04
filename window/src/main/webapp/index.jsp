<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台登录</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="css/style.css" tppabs="css/style.css" />
<style>
body {
	height: 100%;
	background: #16a085;
	overflow: hidden;
}

canvas {
	z-index: -1;
	position: absolute;
}
</style>
<script src="js/jquery.min.js"></script>
<script src="js/verificationNumbers.js" tppabs="js/verificationNumbers.js"></script>
<script src="js/Particleground.js" tppabs="js/Particleground.js"></script>
<script>
	$(document).ready(function() {
		//粒子背景特效
		$('body').particleground({
			dotColor : '#5cbdaa',
			lineColor : '#5cbdaa'
		});
		//验证码
		createCode();
		//测试提交，对接程序删除即可
		$(".submit_btn").click(function() {
			location.href = "javascrpt:;"/*tpa=http://***index.html*/;
		});
	});
</script>



</head>
<body>
<form action="" method="post">
	<dl class="admin_login">
		<dt>
			<strong>贷款融资后台管理系统</strong> <em>Management System</em>
		</dt>
		<dd class="user_icon">
			<input type="text" placeholder="手机号" class="login_txtbx" id="user" name="userCall"/>
		</dd>
		<dd class="pwd_icon">
			<input type="password" placeholder="密码" class="login_txtbx" id="pwd" name="userPassword"/>
		</dd>
		<dd class="val_icon">
			<div class="checkcode">
				<input type="text" id="J_codetext" placeholder="验证码" maxlength="4"
					class="login_txtbx">
				<canvas class="J_codeimg" id="myCanvas" onclick="createCode()">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
			</div>
			<input type="button" value="验证码核验" class="ver_btn"
				onClick="validate();">
		</dd>
		<dd>
			<input type="button" value="立即登陆" class="submit_btn"
				onclick="login()" />
		</dd>
		<dd>
			<p>© 2017-2018 GG 版权所有</p>
			<p>B2-8998988-1</p>
		</dd>
	</dl>

</form>

</body>
</html>

<script type="text/javascript">
/**
 * 进行登录请求方法
 * @returns {Boolean}
 */
function login(){
	var user = $("#user").val();
	var inputCode = document.getElementById("J_codetext").value.toUpperCase();
    var codeToUp=code.toUpperCase();
	var pwd = $("#pwd").val();
	if(user.length<=0||pwd.length<=0){
		return false;
	}
	if(inputCode.length <=0) {
	
      document.getElementById("J_codetext").setAttribute("placeholder","输入验证码");
      createCode();
      return false;
    }
    else if(inputCode != codeToUp ){
	  
      document.getElementById("J_codetext").value="";
      document.getElementById("J_codetext").setAttribute("placeholder","验证码错误");
      createCode();
      return false;
    }else{
    	var stu = {
    		userCall : user,
    		userPassword : pwd
    	};
		$.ajax({
			type : "post",
			dataType : "json",
			url : "/window/User/verification.do",//请求登录验证
			contentType : "application/json;charset=utf-8",
			data :  JSON.stringify(stu),
			success : function(data1) {
				alert(data1);
				if(data1=="登录成功!"){
				    document.getElementById("J_codetext").value="";
				    document.getElementById("J_codetext").setAttribute("placeholder","验证码错误");
					window.location.href="backStage.jsp";
				}
			}		
		});
	}
	
}
</script>