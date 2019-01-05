<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="login.jsp">登录</a>	
	<a href="regist.jsp">注册</a>
	<a href="searchblog?uid=4a9286e30a3e11e995e3e0d55ebbf96c">博客</a>
	<a href="yanzheng.action">滑块验证</a>
	
	邮箱注册：~~~~~~~~~~~~~~~
	<form action="/email/regist" method="post">
		<table>
			<tr><td>用户名：</td><td><input type="text" name="username"/></td></tr>
			<tr><td>密码：</td><td><input type="password" name="password"/></td></tr>
			<tr><td>邮箱：</td><td><input type="text" name="email"/></td></tr>
			<tr><td colspan="2"><input type="submit" value="注册"/></td></tr>
		</table>
	</form>
</body>
</html>