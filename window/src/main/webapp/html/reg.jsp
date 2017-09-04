<%@ page language="java" contentType="text/html;UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="shortcut icon" href="images/favicon.ico" /> 
  <title>注册-reg.html</title> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/components.css?ver=142682356" rel="stylesheet" /> 
  <link href="css/main.css?ver=142682356" rel="stylesheet" /> 
  <link href="css/new-home.css?ver=142682356" rel="stylesheet" /> 
  <style type="text/css">
    @media (min-width: 992px) {
      @font-face {
        font-family: 'proxima-nova';
        src: url('fonts/proximanova-regular-webfont.eot');
        src: url('fonts/proximanova-regular-webfont.eot?#iefix') format('embedded-opentype'),
          url('fonts/proximanova-regular-webfont.woff') format('woff'),
          url('fonts/proximanova-regular-webfont.ttf') format('truetype');
        font-weight: normal;
        font-style: normal;
      }

      @font-face {
        font-family: 'proxima-nova';
        src: url('fonts/proximanova-bold-webfont.eot');
        src: url('fonts/proximanova-bold-webfont.eot?#iefix') format('embedded-opentype'),
          url('fonts/proximanova-bold-webfont.woff') format('woff'),
          url('fonts/proximanova-bold-webfont.ttf') format('truetype');
        font-weight: bold;
        font-style: normal;
      }
    }
  </style> 
  <!-- Add support for bootstrap in IE8 --> 
  <!--[if lt IE 9]>
  <link href="css/ie8.css?ver=142682356" rel="stylesheet">
  <![endif]--> 
  <!--[if IE 9]>
  <link href="css/ie9.css?ver=142682356" rel="stylesheet">
  <![endif]--> 

 </head> 
 <body> 
  <!--[if lt IE 8]>
<div class="alert alert-warning text-center" style="margin-bottom:0;">
  <p>你的浏览器不支持点融网的一些新特性，请升级你的浏览器至<a href="http://se.360.cn/">360浏览器</a>或<a href="http://browsehappy.com/">Chrome</a>。
  </p>
  <p>正在为你跳转到旧版网站...<a href="index.html">立即跳转</a></p>
  <p>2015年了，IE8老了...</p>
</div>
<![endif]--> 
  <div class="wrapper create"> 
   <!--header--> 
   <header class="sl-header" ng-controller="HeaderCtrl" id="sl-header"> 
    <nav class="navbar navbar-inverse navbar-static-top site-nav" role="navigation"> 
     <div class="container"> 
      <!-- Contact info --> 
      <!-- <ul class="nav navbar-nav site-nav-sns"> 
       <li class="site-nav-sns-phone"><span class="navbar-text">客服热线：400-921-9218</span></li> 
       <li> <a href="#" class="icon-sns qq"> 
         <div class="social-content"> 
          <p class="social-title">点融网官方QQ群</p> 
          <p>141444867</p> 
         </div> </a> </li> 
       <li> <a href="http://weibo.com/dianrongwang" target="_blank" class="icon-sns weibo" rel="nofollow"></a> </li> 
       <li> <a href="#" class="icon-sns wechat"> 
         <div class="social-content"> 
          <p class="social-title">扫描关注微信公众号</p> 
          <p><img src="images/qr-code.jpg" /></p> 
         </div> </a> </li> 
      </ul>  -->
      <!-- For non-login users --> 
      <ul id="nonLoginBar" class="nav navbar-nav navbar-right navbar-sm site-nav-login"> 
       <li><a id="login-panel" href="login.html" rel="nofollow">登录</a></li> 
       <li><a id="create-account" href="reg.html" class="btn btn-sm" rel="nofollow">注册账户</a></li> 
      </ul> 
      <!-- For login users --> 
      <ul class="nav navbar-nav navbar-right navbar-sm site-nav-user ng-cloak" ng-if="isAuthenticated()"> 
       <!-- Shopping Cart Widget --> 
       <li ng-show="hasRole('LENDER')" class="dropdown shopping-cart-widget" ng-controller="CartSummaryCtrl"> 
        <!-- Shopping Cart Widget: Not yet invested --> 
        <ul class="dropdown-menu" ng-show="cart.amountSum==0"> 
         <li class="shopping-cart-empty"> <p>你还没有投标，查看<a href="market.html">热投项目</a>，立即开启投资之旅！</p> </li> 
        </ul> 
        <!-- Shopping Cart Widget: Invested --> 
        <ul class="dropdown-menu" ng-show="cart.amountSum!= 0" ng-controller="CartCtrl"> 
         <li class="shopping-cart-title"> <span>投标 <strong>{{ cart.itemsCount }}笔</strong> </span> <span class="pull-right"> 总额<span ng-bind-html="cart.amountSum | slMoney"></span> </span> </li> 
         <li class="divider"></li> 
         <li ng-repeat="item in cart.items" class="shopping-cart-item" ng-mouseover="show=true" ng-mouseleave="show=false" ng-init="show=false"> <a href="#"> <span>{{item.loanTitle | slStringTruncate:18}}</span> <span ng-bind-html="item.amount | slMoney" ng-class="{hidden:show}"></span> <span data-toggle="modal" data-target="#deleteCartItem" class="sl-icon-trash hidden" ng-click="transId(item.loanId)" ng-class="{hidden:!show}"></span> </a> </li> 
         <li class="divider"></li> 
         <li class="shopping-cart-checkout"> <a id="checkout-shopping-cart" href="/market/checkout" class="btn btn-sm btn-primary btn-block btn-embossed">查看购物车</a> </li> 
        </ul> </li> 
       <!-- My Account Menu --> 
       <li class="dropdown"> <a href="member_info.html" class="dropdown-toggle hoverHeader" ng-show="session.firstLoaded &amp;&amp; session.actor.username" data-toggle="dropdown" data-hover="dropdown">{{session.actor.displayName?session.actor.displayName:session.actor.username}}的账户 <b class="caret"></b></a> 
        <ul class="dropdown-menu"> 
         <li><a href="member_info.html">我的账户</a></li> 
         <li><a href="#" ng-click="logout()">退出</a></li> 
        </ul> </li> 
      </ul> 
     </div> 
    </nav> 
    <div class="site-menu"> 
     <div class="header-navbar-container sl-nav-wrapper header-nav-container"> 
      <nav class="navbar navbar-static-top sl-navbar" role="navigation"> 
       <div class="container"> 
        <div class="navbar-header  col-xs-6"> 
         <button type="button" class="navbar-toggle"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button> 
         <a class="navbar-brand" href="index.html"> <span class="sl-logo">点融网 - DianRong</span> </a> 
        </div> 
        <div class=" navbar-collapse navbar-ex1-collapse sl-nav"> 
         <ul class="nav navbar-nav main-menu navbar-right"> 
          <!--menus--> 
          <li class="main-link-list" ng-class="{active:isActive('/market')}"> <a class="main-link" href="market.html"> <span class="main-link-text">我要投资</span> </a> </li> 
          <li class="main-link-list" ng-class="{active:isActive('/public/borrower')}"> <a class="main-link" href="borrow.html"> <span class="main-link-text">我要借款</span> </a> </li> 
          <li class="main-link-list" ng-class="{active:isActive('/public/help-center')}"> <a class="main-link" href="help.html"> <span class="main-link-text">帮助中心</span> </a> </li> 
          <li class="main-link-list" ng-class="{active:isActive('/public/about')}"> <a class="main-link" href="about.html"> <span class="main-link-text">关于我们</span> </a> </li> 
         </ul> 
        </div> 
        <!-- /.navbar-collapse --> 
       </div> 
      </nav> 
     </div> 
     <!--secondaryNav--> 
     <!--jumbotron--> 
    </div> 
   </header> 
   <div class="modal fade" id="deleteCartItem" tabindex="-1" role="dialog" aria-hidden="true"> 
    <div class="modal-dialog" ng-controller="CartCtrl"> 
     <div class="modal-content"> 
      <div class="modal-header"> 
       <button type="button" class="close sl-icon-cross" data-dismiss="modal" aria-hidden="true"></button> 
       <h6 class="modal-title">删除投标</h6> 
      </div> 
      <div class="modal-body"> 
       <h4>确定删除投标：ID{{selectedId}}？</h4> 
      </div> 
      <div class="modal-footer"> 
       <a class="btn btn-link" data-dismiss="modal">取消</a> 
       <a class="btn btn-action" ng-model="loanId" ng-click="removeNote()">删除</a> 
      </div> 
     </div> 
    </div> 
   </div> 
   <div id="notifications" ng-show="notify.messages.msg.length &gt; 0" class="ng-cloak affix-top" data-spy="affix" data-offset-top="0"> 
    <div class="container"> 
     <div class="msg-fold-up" ng-class="{ 'alert-success' : notify.messages.type == 'success', 'alert-danger' : notify.messages.type == 'error', 'alert-info' : notify.messages.type == 'info' }"> 
     </div> 
     <div class="alert msg-content"> 
      <a type="button" class="close sl-icon-cross" ng-click="notify.dismiss($index)" aria-hidden="true"></a> 
      <p ng-repeat="m in notify.messages.msg track by $index" ng-bind-html="m"></p> 
     </div> 
     <div class="msg-fold-down" ng-class="{ 'alert-success' : notify.messages.type == 'success', 'alert-danger' : notify.messages.type == 'error', 'alert-info' : notify.messages.type == 'info' }"> 
     </div> 
    </div> 
   </div> 
   <!--content--> 
   <div class="container create-account-container" ng-controller="CreateCtrl"> 
    <div class="tabs-container"> 
     <ul id="createAccountTabs" class="nav nav-tabs one-half-tabs"> 
      <li class="lender active"> <a href="javascript:void(0);">我要投资</a> </li> 
      <li class="borrower"> <a href="javascript:void(0);">我要借款</a> </li> 
     </ul> 
    </div> 
    <div class="create-account-content"> 
     <div class="row"> 
      <!-- Reg Form--> 
      <div class="col-xs-4 create-account-content-form">
<div class="tab-content">
<div id="lender" class="tab-pane active">
<div class="create-account-form ng-isolate-scope" referral-name="">
<h5 class="create-account-form-title"> 30秒注册，开始投资 </h5>
<form class="ng-pristine ng-invalid ng-invalid-required" novalidate=""  role="form" >
<input id="referral_name" type="hidden" value="" name="referral_name">
<div class="form-group ng-hide" ng-show="formType!=2">
<input id="account-email-phone" class="form-control forcePlaceholder ng-pristine ng-animate ng-valid-remove ng-invalid-add ng-valid-remove-active ng-invalid ng-invalid-add-active ng-invalid-required" type="text" sl-mobile-phone="" sl-email-available="" sl-email-or-phone="" autocomplete="off" placeholder="手机号码或电子邮箱" required="" ng-model="user.emailOrPhone" name="emailOrPhone" style="">
<div class="ng-scope" ng-class="ng-hide" name="emailOrPhone" sl-validation-errors="">
<span class="hide" ng-transclude="">

</span>
</div>
</div>
<div class="form-group" ng-show="formType==2">
<span class="input-group-addon tag sl-icon-bold-email" ng-class="{active:inputFocusMail}"></span>
<!-- <input id="account-email" class="form-control forcePlaceholder inputRemoveBorder ng-pristine ng-animate ng-valid-remove ng-invalid-add ng-valid-remove-active ng-invalid ng-invalid-add-active ng-invalid-required" type="text" sl-email-available="" sl-email="" ng-blur="inputFocusMail=false" ng-focus="inputFocusMail=true" autocomplete="off" placeholder="电子邮箱" required="" ng-model="user.email" name="email" style=""> -->
<div class="ng-scope" ng-class="ng-hide" name="email" sl-validation-errors="">
<span class="hide" ng-transclude="">

</span>
</div>
</div>
<div class="form-group" ng-show="formType==2">
<span class="input-group-addon tag sl-icon-bold-mobile" ng-class="{active:inputFocusPhone}"></span>
<input id="account-phone" class="form-control forcePlaceholder inputRemoveBorder ng-pristine ng-animate ng-valid-remove ng-invalid-add ng-valid-remove-active ng-invalid ng-invalid-add-active ng-invalid-required" type="text" sl-mobile-phone="" ng-blur="inputFocusPhone=false" ng-focus="inputFocusPhone=true" autocomplete="off" placeholder="手机号码" required="" ng-model="user.phone" name="phone" style="" >
<div class="ng-scope" ng-class="ng-hide" name="phone" sl-validation-errors="">
<span class="hide" ng-transclude="">
<span class="ng-scope" for="required" sl-error-message="">请输入手机号</span>
<span class="ng-scope" for="mobilePhone" sl-error-message="">手机号输入有误</span>
</span>
</div>
</div>
<div class="form-group ng-scope" ng-if="!isNoCaptcha" style="">
<div class="form-inline">
<span class="input-group-addon tag sl-icon-puzzle" ng-class="{active:inputFocusCaptchaCode}"></span>
<div class="ng-scope" ng-class="ng-hide" name="captchaVerifyCode" sl-validation-errors="">

</div>
</div>
</div>
<div class="form-group" ng-show="formType==2 || (createAccountForm.emailOrPhone.$dirty && !createAccountForm.emailOrPhone.$error.required && !createAccountForm.emailOrPhone.$error.mobilePhone)">
<div class="form-inline">
<span class="input-group-addon tag sl-icon-bold-verify" ng-class="{active:inputFocusCode}"></span>
</div>
</div>
<div class="form-group">
<span class="input-group-addon tag sl-icon-bold-pwd" ng-class="{active:inputFocusPwd}"></span>
<input id="account-password" class="form-control forcePlaceholder inputRemoveBorder ng-pristine ng-animate ng-valid-remove ng-invalid-add ng-valid-remove-active ng-invalid ng-invalid-add-active ng-invalid-required" type="password" sl-atmost-forty-chars="" sl-atleast-eight-chars="" sl-contains-digits="" sl-contains-letters="" required="" ng-blur="inputFocusPwd=false" ng-focus="inputFocusPwd=true" placeholder="密码为8个以上字母和数字组合" ng-model="user.password" name="password" style="">
<div class="ng-scope" ng-class="ng-hide" name="password" sl-validation-errors="">
<span class="hide" ng-transclude="">
</span>
</div>
</div>
<div class="form-group">
<span class="input-group-addon tag sl-icon-bold-pwd" ng-class="{active:inputFocusPwd}"></span>
<input id="accountpassword" class="form-control forcePlaceholder inputRemoveBorder ng-pristine ng-animate ng-valid-remove ng-invalid-add ng-valid-remove-active ng-invalid ng-invalid-add-active ng-invalid-required" type="password" sl-atmost-forty-chars="" sl-atleast-eight-chars="" sl-contains-digits="" sl-contains-letters="" required="" ng-blur="inputFocusPwd=false" ng-focus="inputFocusPwd=true" placeholder="请确认密码" ng-model="user.password" name="password" style="">
<div class="ng-scope" ng-class="ng-hide" name="password" sl-validation-errors="">
<span class="hide" ng-transclude="">
</span>
</div>
</div>
<div class="form-group pwd ng-hide" ng-show="showTicket">
<div class="form-inline">
<!-- <input class="form-control forcePlaceholder pro-input ng-pristine ng-valid" type="text" placeholder="输入礼券号" ng-model="load.promotionCode" name="promotionCode" style="">
<span class="apply">
<a class="btn btn-secondary btn-add-amount sub-btn" ng-click="useTicket()" ng-disabled="load.promotionCode==''" disabled="disabled">使用</a>
</span> -->
</div>
</div>
<div class="text-left">
<!-- <button id="dd" class="btn btn-block btn-secondary">立即注册 </button> -->
<input type="button" id="dd" class="btn btn-block btn-secondary" value="立即注册 "/>
</div>
<div class="text-center weiboLogin ng-scope" ng-if="!disableTpLogin" style="">
</div>
</form>      
</div>
</div>
<div id="borrower" class="tab-pane">
<div class="text-center">
<h6>申请，审批，放款，迅速有效</h6>
<a class="btn btn-action btn-embossed ng-isolate-scope" target="_blank" url="reg.html"sl-old-href="" href="https://www2.dianrong.com/new-borrower">注册申请贷款</a>
</div>
</div>
</div>
</div>
      <!-- Reg Banner --> 
      <div class="col-xs-8 create-account-content-banner"> 
       <img src="images/create-account-banner.jpg" /> 
      </div> 
     </div> 
    </div> 
   </div> 
   <!--footer--> 
   <div class="bottom-menu bottom-menu-large bottom-menu-inverse sl-footer open-bottom footer-animate  footer-navbar"> 
    <!-- <div class="container inside-container"> 
     <div class="row"> 
      <div class="col-xs-4" ng-cloak=""> 
       <div class="navbar-brand">
        <a href="#"><i class="image-sprites logo"></i></a>
       </div> 
       <ul class="bottom-icons social-icons"> 
        <li><a href="#" data-toggle="modal" data-target="#myModal" rel="nofollow"><span class="sl-icon-wechat"></span></a></li> 
        <li><a href="http://weibo.com/dianrongwang" target="_blank" rel="nofollow"><span class="sl-icon-weibo"></span></a></li> 
       </ul> 
       <div class="support-phone"> 
        <span class="phone">咨询电话</span> 
        <h4 class="number">400-921-9218</h4> 
       </div> 
      </div> 
      <div class="col-xs-7 col-xs-offset-1"> 
       <div class="row site-map"> 
        <div class="col-xs-4"> 
         <h6 class="title footer-home">公司信息</h6> 
         <ul class="bottom-links"> 
          <li><a href="/public/about#/company">公司简介</a></li> 
          <li><a href="/public/about#/news">最新动态</a></li> 
          <li><a href="/public/about#/media">媒体报道</a></li> 
          <li><a href="/public/about#/job">招贤纳士</a></li> 
          <li><a href="/public/about#/contact">联系我们</a></li> 
          <li><a href="/blog/devBlog">点融新享</a></li> 
         </ul> 
        </div> 
        <div class="col-xs-4"> 
         <h6 class="title footer-policy">相关政策</h6> 
         <ul class="bottom-links"> 
          <li><a href="/public/rates-and-fees" target="_blank">费率说明</a></li> 
          <li><a href="/public/principal-protection" target="_blank">本金保障</a></li> 
          <li><a href="/public/terms-of-use" target="_blank">使用条款</a></li> 
          <li><a href="/public/terms-of-use?protocol=privacy-and-security" target="_blank">隐私保护</a></li> 
         </ul> 
        </div> 
        <div class="col-xs-4"> 
         <h6 class="title footer-mobile">手机应用</h6> 
         <ul class="bottom-links"> 
          <li><a href="https://itunes.apple.com/us/app/dian-rong-wang/id725186555?mt=8" target="_blank" ga-event="" ga-category="iosAppLink" ga-action="click" ga-label="footer" ga-value="trackValue" rel="nofollow">iPhone版下载</a></li> 
          <li><a href="http://app.mi.com/detail/56106" target="_blank" ga-event="" ga-category="androidAppLink" ga-action="click" ga-label="footer" ga-value="trackValue" rel="nofollow">Android版下载（测试版）</a></li> 
         </ul> 
         <div class="wechat" ng-cloak=""> 
          <i class="image-sprites qr-code"></i> 
          <div class="description"> 
           <span class="name">微信公众号</span> 
           <span>点融网</span> 
          </div> 
         </div> 
        </div> 
       </div> 
      </div> 
     </div> 
    </div> 
    <div class="friend-links"> 
     <div class="container"> 
      <div class="col-xs-2"> 
       <p><span class="sl-icon-branch"></span>友情链接</p> 
      </div> 
      <div class="col-xs-10"> 
       <a href="http://iof.hexun.com/" target="_blank">和讯互联网金融</a> 
       <a href="http://licai.cofool.com/" target="_blank">叩富理财 </a> 
       <a href="http://www.jinfuzi.com/p2p/" target="_blank">金斧子理财</a> 
       <a href="http://www.trustores.cn" target="_blank">香港保险</a> 
       <a href="http://www.asiafinance.cn" target="_blank">金融导航</a> 
       <a href="http://www.fxsol-uk.com" target="_blank">Fxsol官网</a> 
       <a href="http://www.guijinshu.com" target="_blank">贵金属</a> 
       <a href="http://www.dingniugu.com" target="_blank">顶牛股网</a> 
       <a href="http://www.ucai123.com" target="_blank">航运指数</a> 
       <a href="http://www.szjstz.cn/" target="_blank">金苏财富</a> 
       <a href="http://www.myfund.com/" target="_blank">展恒基金</a> 
       <a href="http://www.dianrong.com/caifu/" target="_blank">P2P理财</a> 
      </div> 
     </div> 
    </div> 
    <div class="container inside-container"> 
     <div class="credit" style="margin-top: 0;padding-top: 20px;"> 
      <div class="navbar copyright"> 
       <ul class="nav navbar-nav"> 
        <li>&copy;2015 点融网</li> 
        <li>沪ICP备14028311号</li> 
        <li>上海点荣金融信息服务有限责任公司</li> 
       </ul> 
      </div> 
      <div class="authentication-info"> 
       <a target="_blank" href="https://trustsealinfo.verisign.com/splash?form_file=fdf/splash.fdf&amp;dn=www.dianrong.com&amp;lang=zh_cn" rel="nofollow"><i class="image-sprites norton-logo"></i></a> 
       <a id="__szfw_logo__" href="https://search.szfw.org/cert/l/CX20150107006323006821" target="_blank"><i class="image-sprites credit-logo"></i></a> 
       <a target="_blank" href="http://www.itrust.org.cn/yz/pjwx.asp?wm=1062547634" rel="nofollow"><i class="image-sprites itrust-logo"></i></a> 
      </div> 
     </div> 
    </div>  -->
   </div> 
   <!-- Modal --> 
   <div class="modal fade wechat-modal" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"> 
    <div class="modal-dialog modal-sm"> 
     <div class="modal-content"> 
      <div class="modal-header"> 
       <button type="button" class="close sl-icon-cross" data-dismiss="modal" aria-hidden="true"></button> 
       <h6 class="modal-title" id="myModalLabel">关注点融网官方微信</h6> 
      </div> 
      <div class="modal-body"> 
       <div class="wechat-subscription"> 
        <h6>点融网订阅号</h6> 
        <p>了解各种点融咨询</p> 
        <img src="images/qrcode-dianrongapi.jpg" alt="点融网订阅号" /> 
        <p>dianrongapi</p> 
       </div> 
       <div class="wechat-service"> 
        <h6>点融网服务号</h6> 
        <p>查询投资情况</p> 
        <img src="images/qrcode-dianrongvip.jpg" alt="点融网服务号" /> 
        <p>dianrongvip</p> 
       </div> 
      </div> 
      <div class="modal-footer">
        添加方式：打开微信，点击″发现″菜单，使用″扫一扫″功能；或者在微信中点击&quot;联系人&quot;，添加以上英文账号名为好友。 
      </div> 
     </div>
     <!-- /.modal-content --> 
    </div>
    <!-- /.modal-dialog --> 
   </div>
   <!-- /.modal --> 
  </div> 
  <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/common.js" type="text/javascript"></script>
 </body>
</html>
<script type="text/javascript">
	var phone=0;
	var pass=0;
	var pass1=0;
	$("#account-phone").blur(function(){
		//alert($("#account-phone").val().length);
		if ($("#account-phone").val()==""||$("#account-phone").val().length!=11) {
			$("#account-phone").css("border-color","red");
		}else{
			phone=1;
			$("#account-phone").css("border-color","gray");
		}
	});
	$("#account-password").blur(function (){
		if ($("#account-password").val()==""||$("#account-password").val().length<8||$("#account-password").val().length>16) {
			$("#account-password").css("border-color","red");
		}else{
			pass=1;
			$("#account-password").css("border-color","gray");
		}
	});
	$("#accountpassword").blur(function (){
		if($("#account-password").val()!=("#accountpassword").val()){
			$("#accountpassword").css("border-color","red");
		}else{
			pass1=1;
			$("#accountpassword").css("border-color","gray");
		}
	});
	$("#dd").click(function(){
		alert("1");
//		 if (phone==1&&pass==1&&pass1==1) {	 	
			var data={investpersonphoto:$("#account-phone").val(),investpersonpass:$("#account-password").val()}
			$.ajax({			
				type : "post",
				dataType : "json",
				url:"/window/zjc/saveinvestperson.do",
				contentType : "application/json;charset=utf-8",
				data :  JSON.stringify(data),
				success:function (data1){
					if(data1==0){
						alert("手机号已经注册");
						$("#account-phone").css("border-color","red");
					}else{
						alert("注册成功");
					}
				}
				
			});
//		}
	});
</script>