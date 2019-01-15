<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.lang.*" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/blog.css">
<link href="js/favicon.ico" rel="SHORTCUT ICON">
<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<script>
	var _hmt = _hmt || [];
	(function() {
	  var hm = document.createElement("script");
	  hm.src = "//hm.baidu.com/hm.js?aa5c701f4f646931bf78b6f40b234ef5";
	  var s = document.getElementsByTagName("script")[0]; 
	  s.parentNode.insertBefore(hm, s);
	})();
</script>

<style type="text/css">
	  body {
        padding-top: 10px;
        padding-bottom: 40px;
      }
</style>
</head>
<body>
<div class="container">
	
<div class="row">
	<div class="col-md-4">
		<img alt="XX的博客" src="#">
	</div>
	<div class="col-md-8">
		<iframe style="float: right;" width="420" scrolling="no" height="60" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&icon=1&num=5"></iframe>
	</div>
</div>
	
	
<script type="text/javascript">
	function checkData(){
		var q=document.getElementById("q").value.trim();
		if(q==null || q==""){
			alert("请输入您要查询的关键字！");
			return false;
		}else{
			return true;
		}
	}
	function checkNum() {
        var regex = /^\d+$/;
        var num = document.formJ.pageCode.value;
        if(!regex.test(num)) {
           document.formJ.pageCode.value="";
        }
     }
</script>
<div class="row">
	<div class="col-md-12" style="padding-top: 10px">
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="searchblog.action"><font color="black"><strong>首页</strong></font></a>
		    </div>

		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
		      <ul class="nav navbar-nav">
		        <!-- <li><a href="#"><font color="black"><strong>Java1234官网</strong></font></a></li> -->
		        <!-- <li><a href="#"><font color="black"><strong>Java学习路线图</strong></font></a></li> -->
		        <!-- <li><a href="#"><font color="red"><strong>Java1234 VIP项目</strong></font></a></li> -->
		        <li><a href="#"><font color="black"><strong>关于博主</strong></font></a></li>
		        <li><a href="#"><font color="black"><strong>XXX</strong></font></a></li>
		        <li><a href="#"><font color="black"><strong>XXX</strong></font></a></li>
		        <li><a href="#"><font color="black"><strong>登陆后台</strong></font></a></li>
		      </ul>
		      <form action="#" class="navbar-form navbar-right" role="search" method="post" onsubmit="return checkData()">
		        <div class="form-group" >
		          <input type="text" id="q" name="q" value="" class="form-control" placeholder="请输入要查询的关键字...">
		        </div>
		        <button type="submit" class="btn btn-default">搜索</button>
		      </form>
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>
	</div>
</div>
	
	<div class="row">
		<div class="col-md-9">
			



<div class="data_list">
		<div class="data_list_title">
		<img src="/Blog/static/images/list_icon.png"/>
		最新博客</div>
		<div class="datas">
			<ul>
			  <c:forEach var="blog" items="${pageBean.datas}">
			  <li style="margin-bottom: 30px">
			  <span class="date">
			  <a href="comment.action?username=${blog.user.username}&message=${blog.message}
			  &time=${blog.time}&readNumber=${blog.readNumber}
			  &commentsNumber=${blog.commentsNumber}
			  &title=${blog.title}
			  &forwordNumber=${blog.forwordNumber}
			  &blogId=${blog.blogId}">
			  <fmt:formatDate value="${blog.time}" pattern="yyyy年MM月dd日"/>
			  </a>
			  </span>
				  	<span class="title"><a href="/Blog/blog/articles/82.html">${blog.title}</a></span>
				  	<span class="summary">摘要:${blog.message}</span>
				  	<span class="img">
				  	
			  </span>
			  <span class="info">发表于 
			  <fmt:formatDate value="${blog.time}" pattern="yyyy年MM月dd日 hh:mm:ss"/> 
			  阅读(${blog.readNumber}) 评论(${blog.commentsNumber}) 转发数(${blog.forwordNumber})</span>
			  </li>
			  <hr style="height:5px;border:none;border-top:1px dashed gray;padding-bottom:  10px;" />
			  </c:forEach>
			  
			</ul>
		</div>
   </div>

<div>
	<nav>
	  <ul class="pagination pagination-sm">
	  <table>
	  <tr>        
         <td  colspan="3">当前是${pageBean.pageCode }/${pageBean.allPages }页</td>
         <td  colspan="3">
            <a href="searchblog?uid=4a9286e30a3e11e995e3e0d55ebbf96c" class="sel_btn ch_cls">首页</a>
            <c:if test="${pageBean.pageCode > 1 }">
               <a href="searchblog?pageCode=${pageBean.pageCode-1 }&uid=4a9286e30a3e11e995e3e0d55ebbf96c" class="jianli_apply">上一页</a>
            </c:if>
            <c:forEach var="pageCode" begin="1" end="${pageBean.allPages }" step="1">
               <a href="searchblog?pageCode=${pageCode}&uid=4a9286e30a3e11e995e3e0d55ebbf96c">${pageCode}</a>
            </c:forEach>
            <c:if test="${pageBean.pageCode < pageBean.allPages}">
              <a href="searchblog?pageCode=${pageBean.pageCode+1 }&uid=4a9286e30a3e11e995e3e0d55ebbf96c">下一页</a>
            </c:if>
            <a href="searchblog?pageCode=${pageBean.allPages }&uid=4a9286e30a3e11e995e3e0d55ebbf96c" class="sel_btn ch_cls">末页</a>
         </td>
         <td  colspan="3">
              <form action="searchblog?uid=4a9286e30a3e11e995e3e0d55ebbf96c" name="formJ" method="post">
                <input type="text" name="pageCode" size="5" onblur="checkNum()"/>
                <input type="submit" value="GO" />
              </form>
         </td>
     </tr>
     </table>
	    <li><a href='/Blog/index.html?page=1&'>首页</a></li><li class='disabled'><a href='#'>上一页</a></li><li class='active'><a href='/Blog/index.html?page=1&'>1</a></li><li class='disabled'><a href='#'>下一页</a></li><li><a href='/Blog/index.html?page=1&'>末页</a></li>
	  </ul>
	</nav>
 </div>
		</div>
		
		<div class="col-md-3">
			<div class="data_list">
				<div class="data_list_title">
					<img src="/Blog/static/images/user_icon.png"/>
					博主信息
				</div>
				<div class="user_image">
					<img src="/Blog/static/userImages/20180508013228.jpg"/>
				</div>
				<div class="nickName">【${username}】</div>
				<div class="userSign">(爱终究是来日方长的秘密！)</div>
			</div>
			<div class="data_list">
				<div class="data_list_title">
					<img src="/Blog/static/images/byType_icon.png"/>
					按日志类别
				</div>
				<div class="datas">
					<ul>
						
							<li><span><a href="#">XX1(X)</a></span></li>
						
							<li><span><a href="#">XX1(X)</a></span></li>
						
							<li><span><a href="#">博主心情(X)</a></span></li>
						
							<li><span><a href="#">XX(X)</a></span></li>
						
							<li><span><a href="#">X(X)</a></span></li>
						
							<li><span><a href="#4">X(X)</a></span></li>
						
							<li><span><a href="#">X(X)</a></span></li>
						
					</ul>
				</div>
			</div>
			
			<div class="data_list">
				<div class="data_list_title">
					<img src="/Blog/static/images/byDate_icon.png"/>
					按日志日期
				</div>
				<div class="datas">
					<ul>
						
							<li><span><a href="/Blog/index.html?releaseDateStr=2018年05月">2019年1月(9)</a></span></li>
							<li><span><a href="/Blog/index.html?releaseDateStr=2018年05月">2018年12月(9)</a></span></li>
						
					</ul>
				</div>
			</div>
			
			<div class="data_list">
				<div class="data_list_title">
					<img src="/Blog/static/images/link_icon.png"/>
					友情链接
				</div>
				<div class="datas">
					<ul>
						
						
						
							<li><span><a href="http://www.php1234.cn" target="_blank">PHP学习网站</a></span></li>
						
							<li><span><a href="http://www.ischoolbar.com" target="_blank">校园二手市场</a></span></li>
						
							<li><span><a href="https://www.baidu.com" target="_blank">百度搜索</a></span></li>
						
					</ul>
				</div>
			</div>
			
		</div>
		
		
	</div>
	
	
<div class="row">
	<div class="col-md-12" >
		<div align="center" style="padding-top: 120px" >
			  chenzhuo © 2018-2019 方荣
		</div>
	</div>
</div>
</div>
</body>

</html>