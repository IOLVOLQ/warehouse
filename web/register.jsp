<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>login</title>
<link href="css/register.css" rel="stylesheet" type="text/css">
<script src="js/jquery.min.js"></script>
</head>

<body class="login">

<div class="login_m">
	<div class="login_logo">注册页面</div>
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
			<h2>确认密码</h2>
			<label>
				<input type="password" name="password2" id="password2"  placeholder="请输入你的密码" class="txt_input">
			</label>
			<h2>邮箱</h2>
			<label>
				<input type="text" name="email" id="email"  placeholder="请输入你的邮箱" class="txt_input">
			</label>
			<h2>年龄</h2>
			<label>
				<input type="text" name="age" id="age"  placeholder="请输入你的年龄" class="txt_input">
			</label>		
			<div class="rem_sub">
				<div class="rem_sub_l">
				    <input type="button" class="sub_button"  onclick="toLogin()" value="注册" >
					<input type="button" class="sub_button"  onclick="javascript:window.location.href='index.jsp'" value="返回" >
				</div>
				
			</div>		
		</div>
	</div>
</div>
<script type="text/javascript">
	function toLogin(){	  
		  var username=$("#username").val();
		  var password=$("#password").val();
		  var password2=$("#password2").val();
		  var email=$("#email").val();
		  var age=$("#age").val();	  
		  //html  json  text   xml  
		  $.ajax({
	  		 type: "post",//方法类型
	          url: "RegisterServlet" ,//url
	          dataType:"text",
	          async:true,
	          data: {"username":username,"password":password,"password2":password2,"email":email,"age":age},
	          success: function (data) {
	              	if(data != false){
	              		alert("注册成功");
	              		window.location.href="index.jsp?data"+data;
	  	          }else{
	  	        	alert("注册失败");
              		window.location.href="register.jsp?data"+data;
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