<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7-dist/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css" type="text/css"></link>
<style>
	#title button{
		margin-top:10px;
		height:100%;
		width:100%;
	}
	div{
		border:1px ;
	}
	#second{ 
		border:1px  ;
	}
	#therd span{
		display:inline; 
		color:white;	 
	}
	#therd{
		height:60px;
	}
	#therd h4{
		margin-left:10px;
		display:inline; 
		color:white;	
		font-size:20px; 
		line-height:50px;
	}
	#divMoney{
		border:10px solid #CCCCFF;
		
	}
	#titleOne{
		margin-top:30px;
	}
	#inputDiv{
		float:left;
	}
	#moneyDiv{
		margin-top:30px;
		/* background-color:#C0C0C0; */
	}
	#buttonDiv{
		margin-top:70px;
	}
</style>
</head>
<body>
	<nav class="navbar navbar-default" style="background-color:black">
	  <div class="container-fluid" style="height:20px">
	    <div class="navbar-header col-md-11">
	      <a class="navbar-brand" href="#"></a>
	    </div>
	    <div class="col-md-1" id="title" >
	    	<button type="button" class="btn btn-danger">退出</button>
	    </div>
	  </div>
	</nav>
	
	<div class="col-md-12 " id="second" style="border:1px solid red;background-color:#E4E4E4">
			<div class="col-md-1"></div>
			<div class="col-md-3" id="logo" style="border:1px solid red;height:40px">
				<a class="navbar-brand" href="index.html"> <span
									class="sl-logo">点融网 - DianRong</span>
				</a>
			</div>
			<div class="col-md-5 ">
				<ul class="nav navbar-nav main-menu navbar-right">
									<!--menus-->
									<li class="main-link-list"><a class="main-link"
										href="market.html"> <span class="main-link-text">首页</span>
									</a></li>
									<li class="main-link-list"><a class="main-link"
										href="borrow.html"> <span class="main-link-text">我的账户</span>
									</a></li>
				</ul>
			</div>
	</div>
	
	<div class="col-md-12 label-info" id="therd" style="border:1px solid red">
			<div class="col-md-1"></div><div class="col-md-6 "><span class="glyphicon glyphicon-home"></span><h4>贷款申请</h4></div>
	</div>	
	
	
	<div class="col-md-12" id="titleOne">
				<div class="col-md-4"></div>
				<div class="col-md-5"><h3 >算算更放心,未放款不收费</h3></div>
	</div>
		 	
	<div class="col-md-12" id="moneyDiv" style="height:150px">
						<div class="col-md-3" ></div>
						<div class="col-md-3" id="inputDiv">
							
							<h5>申请金额</h5> <input type="text" style="width:280px;height:50px" class="form-control" placeholder="1-20 " aria-describedby="sizing-addon1">
						</div>
						
						<div class="col-md-4" style="height:100px">
							<h5>借款金额</h5>
							<div class="dropdown" >
									<button type="button" class="btn dropdown-toggle" style="width:200px;height:50px" id="dropdownMenu1" 
											data-toggle="dropdown">
										12个月
										<span class="caret"></span>
									</button>
									<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
										
									</ul>
							</div>			  
						</div>
	</div>
	<div class="col-md-12">
			<div class="col-md-12">
					<div class="col-md-3" ></div>
					<div class="col-md-3">
							<h4>您的每月还款</h4>
					</div>
			</div>
			<div class="col-md-3"></div>
			<div class="col-md-8">
					<table class="table table-striped" style="width:800px">
							
							<thead>
								<tr>
									<th>名称</th>
									<th>城市</th>
									<th>邮编</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Tanmay</td>
									<td>Bangalore</td>
									<td>560001</td>
								</tr>
								<tr>
									<td>Sachin</td>
									<td>Mumbai</td>
									<td>400003</td>
								</tr>
								<tr>
									<td>Uma</td>
									<td>Pune</td>
									<td>411027</td>
								</tr>
							</tbody>
				</table>
			</div>
	</div>
	<div class="col-md-12" id="buttonDiv"> 
			<div class="col-md-4"></div><div class="col-md-5"><button type="button" class="btn  btn-success" style="width:300px;height:70px">申请贷款</button></div>
	</div>
</body>
</html>
<script>
	
</script>