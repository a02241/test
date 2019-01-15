<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="UTF-8">
	<title>方融量子</title>
	<meta name="Generator" content="Webstorm">
	<meta name="Author" content="张帅">
	<meta name="keyword" content="方融">
	<meta name="description" content="方融量子网络科技公司">
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	<link href="css/homepage.css" type="text/css" rel="stylesheet" />
	<script type="text/javascript" src="js/homepage.js"></script>
	<script type="text/javascript" src="http://hq.sinajs.cn/list=s_sh000001" charset="gb2312"></script>
	<script type="text/javascript">
		function refresh(){ 
			var elements = hq_str_s_sh000001.split(",");
			$(document).ready(function () {
	            $('#szzs').html(elements[1]);
	        });
		};
		setInterval('refresh()',1000);
		{};
	</script>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0,user-scalable=no">
</head>
<body>
	<div id="top_Nav">
		<div id="top_Circle"></div>
		<div id="top_Text">
			<span>PROJECT</span>
		</div>
		<div id="top_Home">
			<img alt="" src="img/主页.png">
			<span style="margin-left:5px;color:white">主 &nbsp;页</span>
		</div>
		<div id="top_Self">
			<img alt="" src="img/个人.png">
			<span style="margin-left:5px;color:white">个人空间</span>
			<img src="img/下拉.png">
			<div id="top_Selfspace">
				<ul style="list-style:none;margin-left:-20px;margin-top:0">
					<li>复盘笔记</li>
					<li>盘中速记</li>
					<li>经验分享</li>
					<li>模拟炒股</li>
				</ul>
			</div>
		</div>
		<div id="top_Market">
			<img alt="" src="img/股票.png">
			<span style="margin-left:5px;color:white">行 &nbsp;情</span>
			<img src="img/下拉.png">
			<div id="top_Marketspace">
				<ul style="list-style:none;margin-left:-20px;margin-top:0">
					<li>行情中心</li>
					<li>股票筛选</li>
					<li>新股上市</li>
				</ul>
			</div>
		</div>
		<div id="top_Collect">
			<img alt="" src="img/地球.png">
			<span style="margin-left:5px;color:white">收 &nbsp;藏</span>
			<img src="img/下拉.png">
		</div>
		<div id="top_Gion">
			<img alt="" src="img/联结.png">
			<span style="margin-left:5px;color:white">量子链</span>
		</div>
		<div id="top_GionCircle">
			<img alt="" src="img/关联.png">
			<span style="margin-left:5px;color:white">量子圈</span>
		</div>
		<div id="top_Search">
			<input style="height:25px;width:198px;padding-left:14.5px" type="text" placeholder="搜索">
			<img style="position:absolute;right:15px;top:10px" src="img/搜索.png">
		</div>
		<div id="top_Login">
			<span class="dl" style="margin-left:5px;color:white">登录</span>
			<img alt="" class="dl" src="img/进入.png">
		</div>
	</div>
	<div id="bg"></div>
	<div id="login">
		<div id="title">
			<a class="close" href="javascript:">✖</a>
			<div id="tou" style="width:244px;height:51px">登 录&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
			<div id="tou2" style="width:244px;height:51px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注 册</div>
		</div>
		<form action="javascript:" method="post" target="">
			<p><input type="text" name="username_phonenumber_email" class="text" maxlength="26" placeholder="输入用户名、手机号或邮箱"></p>
			<p><input type="password" name="passwordLogin" class="psw" maxlength="16" placeholder="请输入登录密码"/></p>
			<p><input id="loginbutton" style="outline:none" type="submit" class="sub" onclick="login()" value="登    录"/></p>
		</form>
		<a id="forget_password" href="">忘记密码？</a>
		<input id="auto_login" type="checkbox"><span id="auto">记住密码</span>
	</div>
	<div id="regist">
		<div id="title2">
			<a class="close2" href="javascript:">✖</a>
			<div id="tou3" style="width:244px;height:51px">登 录&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
			<div id="tou4" style="width:244px;height:51px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注 册</div>
		</div>
		<form action="javascript:" submit="return checkSub()" target="">
			<p><input type="text" name="username" class="text6" maxlength="26" placeholder="用户名"  onblur="checkUsername()"></p>
			<p><input type="password" name="password" class="psw2" maxlength="16" placeholder="密码"/></p>
			<p><input type="password" name="repassword" class="psw3" maxlength="16" placeholder="确认密码" onblur="checkPassword()"/></                                                                                                 p>
			<p><input type="text" class="text3"  maxlength="26" placeholder="邀请码"/></p>
			<p><input type="text" id="phoneIn" class="text4" name="phonenumber" maxlength="26" placeholder="手机号" oninput = "value=value.replace(/[^\d]/g,'')" onblur="checkTel()"/></p>
			<div id="sendCode" onclick="sent()">发送验证码</div>
			<p><input type="text" id="emailIn" class="text4" name="email" maxlength="26" placeholder="邮箱地址" onblur="checkEmail()"/></p>
			<p><input type="text" class="text5" name="emailCode" maxlength="26" placeholder="输入验证码"/></p>
			<p><input id="registbutton" style="outline:none" type="submit" class="sub2" value="注    册" onclick="checkSub()"/></p>
		</form>
		<div id="mailbox">邮箱验证</div>
		<div id="phonebox">手机验证</div>
	</div>
	<div id="midContent">
		<div id="mid_Exponent">
			<span id="szzs" style="color:red;position:absolute;left:50px;top:50px;font-size:50px"></span>
			<span>实时指数</span>
		</div>
		<div id="mid_Record">
			<div id="mid_RecordCircle"></div>
			<span>复盘记录</span>
		</div>
		<div id="mid_Remember">
			<div id="mid_RememberCircle"></div>
			<span>盘中速记</span>
		</div>
		<div id="mid_Money">
			<div id="mid_MoneyCircle"></div>
			<span>资金流向</span>
		</div>
		<div id="mid_Lab">
			<div id="mid_LabCircle"></div>
			<span>实验室</span>
		</div>
		<div id="mid_Recommend">
			<span>推荐用户</span>
		</div>
		<div id="mid_RecommendBlog">
			<span>优秀博客推送</span>
		</div>
		<div id="mid_RecommendQuant">
			<span>当日热点量子链推送</span>
		</div>
		<div id="mid_News">
			<span>24h 新闻直播</span>
		</div>
		<div id="mid_Board">
			<span>用户收益排行榜</span>
		</div>
		<div id="mid_Announce">
			<span>上市公司公告</span>
		</div>
		<div id="mid_DigBoard">
			<span>挖掘深度排行榜</span>
		</div>
		<div id="mid_Banner">
			<span>活动Banner</span>
		</div>
		<div id="mid_Chat">
			<span>实时量子圈聊天室</span>
		</div>
		<div id="mid_Footer">
			<span>footer</span>
		</div>
	</div>
	<script type="text/javascript">
	var status = false ;
	var isappend=false;
	function checkUsername() {
		var reg = /^[a-zA-Z0-9_-]{4,16}$/;
		var username = $("input[name='username']").val();
		if(reg.test(username)==true){
			$.ajax({
				url : "check.action",
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
						$("input[name='username']").after($("<span id='span1' style='color:red;z-index:3;position:absolute;top:130px;left:265px'>用户名已被注册!</span>"));
						isappend = true;
					}
				}
			})
		}else{
			if(isappend==true){
				$("input[name='username']").siblings("span").remove();
			}
			$("input[name='username']").after($("<span style='color:red;z-index:3;position:absolute;top:130px;left:265px'>用户名不符规范!</span>"));
			isappend=true;
		}
	}
	
	var isappend2 = false;
	function checkTel() {
		var reg = /^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\d{8}$/;
		var tel = $("input[name='phonenumber']").val();
		if(reg.test(tel)==true){
			$.ajax({
				url : "check.action",
				type:'post',
				data:{
					phonenumber:$("input[name='phonenumber']").val(),
		        	checkCode:checkCode
		        },//传入后台数据
		        dataType:'text',//后台返回数据类型
				success : function(data) {
					if(isappend2==true){
						$("input[name='phonenumber']").siblings("span").remove();
					}
					if(data=="2"){
						$("#sendCode").on("click",function(){
							alert("手机号已被注册！");
						});
					} 
				}
			})
		}else{
			alert("请正确输入手机号！");
		}
	}
	
	
	var isappend3 = false;
	function checkEmail() {
		var reg = /^[a-z\d]+(\.[a-z\d]+)*@([\da-z](-[\da-z])?)+(\.{1,2}[a-z]+)+$/;
		var email = $("input[name='email']").val();
		if(reg.test(email)==true){
			$.ajax({
				url : "check.action",
				type:'post',
				data:{
					email:$("input[name='email']").val(),
		        	checkCode:checkCode
		        },//传入后台数据
		        dataType:'text',//后台返回数据类型
				success : function(data) {
					if(data=="3"){
						alert('邮箱已被注册！');
					} 
				}
			})
		}else{
			alert('邮箱不符合规范！');
		}
	}
	var checkCode ="";
	
	function sent(){
		$.ajax({   		
			url :"emailCode.action",
			type:'post',
			data:{email:$("input[name='email']").val()},
			dataType:'text',//后台返回数据类型
			success : function(data) {
	    		if(data=="error"){
	    			alert("发送失败！！！");
	    		}
	    		alert("已发送");
				checkCode = data;
			}
		});
	}

	
	function checkSub() {
		alert('11');
		var username=$("input[name='username']").val();
		var password=$("input[name='password']").val();
		var email=$("input[name='email']").val();
		var emailCode=$("input[name='emailCode']").val();
		$.ajax({   		
			url :"check.action",
			type:'post',
			data:{
				username:username,
	        	password:password,
	        	email:email,
	        	emailCode:emailCode,
	        	checkCode:checkCode
	        },//传入后台数据
	        dataType:'text',//后台返回数据类型
			success : function(data) {
				if(data=="4"){
					alert("验证码错误!!!");
				}
				if(data=="5"){
					window.location = "userLogined.action?username="+username+"&password="+password; 
				}
			}
		});
		alert('22');
	} 
		
	var isappend4=false;
	function checkPassword(){
	var password = $("input[name='password']").val();
	var repassword = $("input[name='repassword']").val();
		if(isappend4==true){
			$("input[name='repassword']").siblings("span").remove();
		}
    	if(password != repassword){
			$("input[name='repassword']").after($("<span style='color:red;z-index:3;position:absolute;top:230px;left:265px'>两次密码不一致！</span>"));
			isappend4=true;
    	}
	}
	
	function login(){
		var passwordLogin = $("input[name='passwordLogin']").val();
		var username = $("input[name='username_phonenumber_email']").val();
		$.ajax({
			url:"userLogin.action",
			type:"post",
			data:{
				username:username,
				passwordLogin:passwordLogin
			},
			dataType:'text',
			success : function(data){
				if(data == "1"){
					 window.location = "userLogined.action?username="+username+"&password="+passwordLogin; 
				}else if(data == "2"){
					alert("密码错误！");
				}else if(data == "3"){
					 alert("账号不存在！");
				}
			}
		});
	}
	window.onload = function(){
		var mailbox = document.getElementById("mailbox");
		var phonebox = document.getElementById("phonebox");
		var emailIn = document.getElementById("emailIn");
		var phoneIn = document.getElementById("phoneIn");
		mailbox.onclick = function(){
			mailbox.style.visibility = "hidden";
			phoneIn.style.visibility = "hidden";
			phonebox.style.visibility = "visible";
			emailIn.style.visibility = "visible";
		}
		phonebox.onclick = function(){
			mailbox.style.visibility = "visible";
			phoneIn.style.visibility = "visible";
			phonebox.style.visibility = "hidden";
			emailIn.style.visibility = "hidden";
		}
	}
	</script>
</body>
</html>