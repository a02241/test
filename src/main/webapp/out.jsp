<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>方融</title>
	<meta charset="UTF-8"><!--GBK与UTF-8由公司服务器决定-->
	<meta name="Generator" content="Webstorm">
	<meta name="Author" content="张帅">
	<meta name="keyword" content="方融">
	<meta name="description" content="方融量子网络科技公司">
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	<style type="text/css">
		body{background:white}
		*{margin: 0;padding: 0;}
		a{color: black;text-decoration: none;font-size: 14px;}
		a:hover{text-decoration: underline}
		#href{float: right;margin-right: 20px;}
		#bg{background:rgba(0,0,0,0.2);/*背景颜色半透明opacity:0.5*/
		width:100%;height: 100%;position: fixed;left: 0;top: 0;display: none}
		#login{width: 600px;height: 418px;background: white;position: fixed;display: none}
		#login #title{color: white;background: #E38B98;width: 100%;height: 179px;line-height: 50px;font-size: 24px;}
		#login #title .close{font-size: 24px;color: white;float: right;margin-right: 15px;text-decoration: none}
		#login p{margin-top: 35px;margin-left: 120px;}
		#login form p input{width:260px;height:35px;border:1px solid #dddddd;font-size: 18px;}
		#login form p .text,.psw{height:45px;width:401px;border-radius:10px;padding-left:20px;box-shadow:grey 6px 6px 10px 3px}
		#login form p .text{position:absolute;top:156.5px;left:95.5px}
		#login form p .psw{position:absolute;top:226.5px;left:95.5px;height:45px;width:401px}
		#login form p .sub{color:white;margin-left: 65px;background: #E38B98 ;height:45px;width:421px;position:absolute;top:326.5px;left:30.5px;border-radius:10px}
		#login #title #tou{width:75px;height:75px;backgroung:white;position:absolute;top:50px;left:258px}
		#register{color:#E38B98;text-decoration:none;position:absolute;top:290px;left:410px}
		#forget_password{color:#E38B98;text-decoration:none;position:absolute;top:290px;left:460px}
		#auto_login{color:#E38B98;position:absolute;top:295px;left:95.5px}
		#auto{color:#E38B98;position:absolute;top:290px;left:115.5px}
		input::-webkit-input-placeholder {color: #aab2bd;font-size: 14px}
	</style>
</head>
<body>
	<div id="href">
		<a class="dl" href="javascript:">登录</a>&nbsp;<a href="javascript:">注册</a>
	</div><!--作为按钮,用js禁止，使点击不跳转也不刷新-->
	<div id="bg"></div>
	<div id="login">
		<div id="title">
			<a class="close" href="javascript:">X</a>
			<div id="tou" style="width:75px;height:75px;background:white;border-radius:50%;box-shadow:grey 6px 6px 10px 3px"></div>
		</div>
		<form action="javascript:" target="">
			<p><input type="text" class="text" maxlength="26" placeholder="输入用户名、手机号或邮箱" ></p>
			<p><input type="password" class="psw" maxlength="16" placeholder="请输入登录密码"/></p>
			<p><input type="submit" class="sub" value="登    录"/></p>
		</form>
		<a id="register" href="register.jsp">注册</a>
		<a id="forget_password" href="">忘记密码</a>
		<input id="auto_login" type="checkbox"><span id="auto">记住密码</span>
	</div>
	<script>
		playauto();//playauto()函数控制弹出框居中显示
		function playauto() {
			var _width=$(window).width();//获取浏览器窗口宽度
			var _height=$(window).height();//获取高度
			$(" #login").css({left:_width/2-300,top:_height/2-225});//使弹出框居中
		}
		//动态改变浏览器窗口时执行
		$(window).resize(function () {
			playauto();//浏览器窗口大小改变，则重新执行playauto()函数，使弹出框居中
		} );
		$(".dl").click(function () {//点击超链接按钮显示bg、login样式
			playauto();//再次点击登陆按钮时，弹出框仍然处于居中位置
			$("#bg").show();
			$("#login").show();
		})
		$(".close").click(function () {//点击弹出框上的X按钮隐藏bg、login样式，即关闭弹出框
			$("#bg").hide();
			$("#login").hide();
		});
		$("#login").mousedown(function(e){
			var x=e.clientX;//鼠标按下的X坐标
			var y=e.clientY;//鼠标按下的Y坐标
			var left=("#login").offset().left;//登陆框距离左边位置
			var top=("#login").offset().top;//登陆框距离顶部位置
			var l=x-$left;//点击的坐标点距离弹出框左边的距离
			var t=y-$top;//点击的坐标点距离弹出框上边的距离
			$(document).mousemove(function (e) {
			var nx=e.clientX;
			var ny=e.clientY;
			var n_left=nx-l;//动态得到弹出框距离浏览器左边距离
			var n_top=ny-t;//动态得到弹出框距离浏览器上边距离
			$(" #login").css({left: n_left,top:n_top});
		});
		$(document).mouseup(function () {
			$(document).unbind("mousemove");//解除鼠标移动事件
			$(document).unbind("mouseup");
		})
	})
	</script>
</body>
</html>