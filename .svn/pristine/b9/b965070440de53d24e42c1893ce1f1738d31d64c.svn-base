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
			<span style="margin-left:5px;color:white" onclick="window.location = 'searchblog.action?username=${user.username}&uid=${user.uid}'">个人空间</span>
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
			<div id="top_Icon">ok</div>
			<div id="top_SelfInfo">
				<img alt="" src="img/Rectangle.png" style="margin-left:21.6px;margin-top:35px">
				<span style="font-size:14px;margin-left:50px">等级</span><br>
				<div style="width:115px;height:5px;border-radius:2.5px;background: #FEE1E0;margin-left:15px;margin-top:10px">
					<div style="width:80px;height:5px;border-radius:2.5px;background: #FF817C;margin-top:10px"></div>
				</div><br>
				<span style="font-size:10px;position:absolute;left:65px;top:75px;font-weight:100">800/1150</span><br>
				
				<img alt="" src="img/徽章.png" style="position:absolute;left:24px;top:243px">
				<img alt="" src="img/设置.png" style="position:absolute;left:64px;top:243px">
				<img onclick="window.location = 'index.jsp'" alt="" src="img/退出.png" style="position:absolute;left:104px;top:243px">
			</div>
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
			<p><input type="text" class="text4" name="phonenumber" maxlength="26" placeholder="手机号" oninput = "value=value.replace(/[^\d]/g,'')" onblur="checkTel()"/></p>
			<div id="sendCode">发送验证码</div>
			<p><input type="text" class="text5" maxlength="26" placeholder="输入验证码"/></p>
			<p><input id="registbutton" style="outline:none" type="submit" class="sub2" value="注    册"/></p>
		</form>
		<a id="mailbox" href="">邮箱验证？</a>
	</div>
	<div id="midContent">
		<div id="mid_Exponent">
			<span id="szzs"></span>
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
</body>
</html>