<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>仓库管理系统登陆页面</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<script src="js/jquery.min.js"></script>
</head>
<body class="login">
<div class="login_m">
	<div class="login_logo">仓库管理系统</div>
	<div class="login_boder">
		<div class="login_padding">
			<h2>用户名</h2>				
			<label>
				<input type="text" name="username" id="username" placeholder="请输入你的账号" class="txt_input">
			</label>
			<h2>密码</h2>
			<label>
				<input type="password" name="password" id="password"  placeholder="请输入你的密码" class="txt_input">
			</label>
			<p class="forgot"><a href="javascript:void(0);">忘记密码?</a></p>
			<div class="rem_sub">
				<div class="rem_sub_l">
					<input type="checkbox" name="checkbox" id="save_me">
					<label for="checkbox">记住</label>
					<input type="button" class="sub_button"  onclick="javascript:window.location.href='register.jsp'" value="注册" >
				</div>
				<label>
					<input type="button" class="sub_button"  onclick="toLogin()" value="登录" >
				</label>
			</div>		
		</div>
	</div>
</div>
<script type="text/javascript">
	function toLogin(){	  
		  var username=$("#username").val();
		  var password=$("#password").val();
		  //html  json  text   xml  
		  $.ajax({
	  		 type: "post",//方法类型
	          url: "LoginServlet" ,//url
	          dataType:"text",
	          async:true,
	          data: {"username":username,"password":password},
	          success: function (data) {  
	              	if (data == "no"){
	              		alert("登陆失败");
	              	}else{
	              			window.location = "IndexServlet";
					}                          	
	          },
	          error : function() {
	              alert("异常请求！");
	          }
	  	});
	  } 	
	</script>
<br />
<br />
<p align="center">@ 仓库管理 2020</p>
</body>
</html>