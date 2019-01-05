<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	var status = false ;
	var isappend=false;
	function checkUsername() {
		var reg = /^[a-zA-Z0-9_-]{4,16}$/;
		var username = $("input[name='username']").val();
		if(reg.test(username)==true){
			$.ajax({
				url : "check",
				type:'post',
				data:{
					username:$("input[name='username']").val(),
		        	checkCode:checkCode
		        },//传入后台数据
		        dataType:'text',//后台返回数据类型
				success : function(data) {
					if(isappend==true){
						$("input[name='username']").siblings("span").remove();
					}
					if(data=="1"){
					$("input[name='username']").after($("<span style='color:red;'>用户名被注册!!!</span>"));
						isappend=true;
					} 
				}
			})
		}else{
			if(isappend==true){
				$("input[name='username']").siblings("span").remove();
			}
			$("input[name='username']").after($("<span style='color:red;'>用户名不符合规范</span>"));
			isappend=true;
		}
	}
	
	function checkTel() {
		var reg = /^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\d{8}$/;
		var tel = $("input[name='phonenumber']").val();
		if(reg.test(tel)==true){
			$.ajax({
				url : "check",
				type:'post',
				data:{
					phonenumber:$("input[name='phonenumber']").val(),
		        	checkCode:checkCode
		        },//传入后台数据
		        dataType:'text',//后台返回数据类型
				success : function(data) {
					if(isappend==true){
						$("input[name='phonenumber']").siblings("span").remove();
					}
					if(data=="2"){
						$("input[name='phonenumber']").after($("<span style='color:red;'>手机已被注册!!!</span>"));
						isappend=true;
					} 
				}
			})
		}else{
			if(isappend==true){
				$("input[name='phonenumber']").siblings("span").remove();
			}
				$("input[name='phonenumber']").after($("<span style='color:red;'>手机不符合规范</span>"));
				isappend=true;
		}
	}
	
	function checkEmail() {
		var reg = /^[a-z\d]+(\.[a-z\d]+)*@([\da-z](-[\da-z])?)+(\.{1,2}[a-z]+)+$/;
		var email = $("input[name='email']").val();
		if(reg.test(email)==true){
			$.ajax({
				url : "check",
				type:'post',
				data:{
					email:$("input[name='email']").val(),
		        	checkCode:checkCode
		        },//传入后台数据
		        dataType:'text',//后台返回数据类型
				success : function(data) {
						if(isappend==true){
							$("input[name='email']").siblings("span").remove();
						}
					if(data=="3"){
						$("input[name='email']").after($("<span style='color:red;'>邮箱已被注册!!!</span>"));
						isappend=true;
					} 
				}
			})
		}else{
			if(isappend==true){
				$("input[name='email']").siblings("span").remove();
			}
				$("input[name='email']").after($("<span style='color:red;'>邮箱不符合规范</span>"));
				isappend=true;
		}
	}
	var checkCode ="";
	var isappend=false;
	function sent(){
		alert("已发送");
		$.ajax({   		
			url : "emailCode",
			type:'post',
			data:{email:$("input[name='email']").val()},
			dataType:'text',//后台返回数据类型
			success : function(data) {
        		if(data=="error"){
        			alert("发送失败！！！");
        		}
					checkCode=data;
			}
		});
	}

	
	function checkSub() {
		var username=$("input[name='username']").val();
		var password=$("input[name='password']").val();
		var phonenumber=$("input[name='phonenumber']").val();
		var email=$("input[name='email']").val();
		var emailCode=$("input[name='emailCode']").val();
    	$.ajax({   		
				url : "check.action",
				type:'post',
				data:{username:$("input[name='username']").val(),
		        	  password:$("input[name='password']").val(),
		        	  phonenumber:$("input[name='phonenumber']").val(),
		        	  email:$("input[name='email']").val(),
		        	  emailCode:$("input[name='emailCode']").val(),
		        	  checkCode:checkCode},//传入后台数据
		        	  dataType:'text',//后台返回数据类型
				dataType:'text',//后台返回数据类型
				success : function(data) {
					if(data=="4"){
						alert("验证码错误!!!");
						}
					if(data=="5"){
						window.location="userRegist"
						}
					}
				});
			return false;
		} 
    	
    
    function checkPassword(){
    	var password = $("input[name='password']").val();
    	var repassword = $("input[name='repassword']").val();
    		if(isappend==true){
				$("input[name='repassword']").siblings("span").remove();
			}
	    	if(password != repassword){
				$("input[name='repassword']").after($("<span style='color:red;'>两次密码不一致</span>"));
				isappend=true;
	    	}
    	}
</script>
<body>
用户注册：
	<form  onsubmit="return checkSub()">
		用户名:<input required="required" type="text" name="username" onblur="checkUsername()"><br>
		密码:<input required="required" type="password" name="password" ><br>
		确认密码:<input type="password" required="required" name="repassword" onblur="checkPassword()"><br>
		手机:<input required="required" type="text" name="phonenumber" onblur="checkTel()"><br>
		邮箱：<input required="required" type="text" name="email" onblur="checkEmail()">
		<div onclick="sent()" style="display:inline-block;">
		<input type="button" name="sent"  value="发送邮件">
		</div><br>
		邮箱注册码：<input required="required" type="text" name="emailCode" onblur="check()"><br>
		<!-- 注册码：<input type="text" name="code"> -->
		<input type="submit" value="提交">
	</form>
</body>
</html>