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
<link rel="stylesheet" href="css/jigsaw.css">
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
	
	function replay(obj){
	$('replay').value+='回复'+obj.value+'楼\n';
	}
	function $(id){
	return document.getElementById(id)
	}
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
		<img alt="${username}的博客" src="#">
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
		      <a class="navbar-brand" href="/Blog/index.html"><font color="black"><strong>首页</strong></font></a>
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
		      <form action="/Blog/blog/q.html" class="navbar-form navbar-right" role="search" method="post" onsubmit="return checkData()">
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
			<script type="text/javascript" src="/Blog/static/ueditor/third-party/SyntaxHighlighter/shCore.js"></script>
		<link rel="stylesheet" href="/Blog/static/ueditor/third-party/SyntaxHighlighter/shCoreDefault.css">
<script type="text/javascript">
    SyntaxHighlighter.all();
</script>




<script type="text/javascript">
		var check="";
	function loadimage(){
		document.getElementById("randImage").src="/Blog/image.jsp?"+Math.random();
	}
	function dosss(){
	jigsaw.init({
			    el: document.getElementById('captcha'),
			    onSuccess: function() {
			      document.getElementById('msg').innerHTML = '登录成功！'
			      check="true";
			    },
			    onFail: cleanMsg,
			    onRefresh: cleanMsg
			  })
			  function cleanMsg() {
			    document.getElementById('msg').innerHTML = ''
			  }
	}
	
	function submitData(){
		var comments=$("#content").val();
		var imageCode=$("#imageCode").val();
		if(content==null || content==''){
			alert("请输入评论内容！");
		}else if(check==null || check==''){
			alert("请滑动验证码！");
			jigsaw.init({
			    el: document.getElementById('captcha'),
			    onSuccess: function() {
			      document.getElementById('msg').innerHTML = '登录成功！'
			      check="true";
			    },
			    onFail: cleanMsg,
			    onRefresh: cleanMsg
			  })
			  function cleanMsg() {
			    document.getElementById('msg').innerHTML = ''
			  }
		}else if(check="true"){
			 $.ajax({
				url : "saveComment.action",
				type:'post',
				data:{
					comments:$("textarea[name='content']").val(),
					username:$("input[name='myname']").val(),
					blogId:$("input[name='myblogId']").val()
		        },//传入后台数据  
		         dataType:'text',//后台返回数据类型 
				success : function(resultMap) {
					if(resultMap=="success"){
						window.location.reload();
						alert("评论已提交成功，审核通过后显示！");
					}else{
						alert(resultMap.errorInfo);
					}  
				}
			}) 
			
			 /* $.post("saveComment.action",{'content':content,'imageCode':imageCode,'blog.id':'82'},function(result){
				 alert(result);
				if(result.success){
					window.location.reload();
					alert("评论已提交成功，审核通过后显示！");
				}else{
					alert(result.errorInfo);
				}
			},"json");  */
		}
	}
	
	function showOtherComment(){
		$('.otherComment').show();
	}
	
	function delect(cId){
		$.ajax({
			url : "delectComment.action",
			type:'post',
			data:{
				cId:cId
	        },//传入后台数据  
	         dataType:'text',//后台返回数据类型 
			success : function(resultMap) {
				if(resultMap=="success"){
					window.location.reload();
					alert("删除成功！");
				}else{
					alert(resultMap.errorInfo);
				}  
			}
		}) 
	}
</script>
<div class="data_list">
	<div class="data_list_title">
		<img src="/Blog/static/images/blog_show_icon.png"/>
		博客信息
	</div>
	<div>
	   <div class="blog_title"><h3><strong>${title}</strong></h3></div>
	   <div style="padding-left: 330px;padding-bottom: 20px;padding-top: 10px">
		<div class="bshare-custom"><a title="分享到QQ空间" class="bshare-qzone"></a>
		<a title="分享到新浪微博" class="bshare-sinaminiblog"></a>
		<a title="分享到人人网" class="bshare-renren"></a>
		<a title="分享到腾讯微博" class="bshare-qqmb"></a>
		<!-- <a title="分享到网易微博" class="bshare-neteasemb"></a> -->
		<a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a>
		<span>转发数: ${forwordNumber}</span>
		<%-- <span class="BSHARE_COUNT bshare-share-count">转发数: ${forwordNumber}</span> --%>
		</div>
		<script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=1&amp;lang=zh"></script><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
	   </div>
		<div class="blog_info">
			发布时间：『 <fmt:formatDate value="${time}" pattern="yyyy年MM月dd日 hh:mm:ss"/>』
			&nbsp;&nbsp;博客类别：Java项目源码&nbsp;&nbsp;
			阅读(${readNumber}) 评论(${commentsNumber})
		</div>
		<div class="blog_content">
			<p>${message}<br/></p>
		</div>
		<div class="blog_keyWord">
			<font><strong>关键字：</strong></font>
			
				
				
					
						&nbsp;&nbsp;<a href="/Blog/blog/q.html?q=3333" target="_blank">3333</a>&nbsp;&nbsp;
					
				
			
		</div>
		<div class="blog_lastAndNextPage">
			<p>xxx<a href='/Blog/blog/articles/81.html'>XXXXXXXXXX</a></p><p>xxx</p>
		</div>
	</div>
</div>
		<c:forEach var="comments" items="${comments}">
<div class="data_list">
	<div class="data_list_title">
		<img src="/Blog/static/images/comment_icon.png"/>
		评论信息
		<%-- <form action="delectComment.action?
			  Newusername=${username}&message=${message}
			  &time=${time}&readNumber=${readNumber}
			  &commentsNumber=${commentsNumber}
			  &title=${title}
			  &forwordNumber=${forwordNumber}
			  &blogId=${blogId}" method="post"> --%>
		<button  onclick="delect('${comments.cId}')">删除</button>   
		<!-- </form> -->
	</div>
	<div class="commentDatas">
		<div class="comment">
		
			<span><font>${comments.username}&nbsp;&nbsp;&nbsp;&nbsp;</font>		
			${comments.comments}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[&nbsp;<fmt:formatDate value="${comments.commentTime}" pattern="yyyy年MM月dd日 hh:mm:ss"/>&nbsp;]</span>
		
		<a href="javascript:void 0;" onclick="replay(this)" value="1">回复</a>
		<hr>
		<br>
		</div>								
		
	</div>
</div>
		</c:forEach>

<div class="data_list" >
<input type="hidden" name="myname" value="${username}">
<input type="hidden" name="myblogId" value="${blogId}">
	<div class="data_list_title">
		<img src="/Blog/static/images/publish_comment_icon.png"/>
		发表评论
	</div>
	<div class="publish_comment">
			<div>
				<textarea style="width: 100%" rows="3" id="content" name="content" placeholder="来说两句吧..."></textarea>
			</div>
			<div class="verCode">
			<div id="captcha"></div>
 			 <div id="msg"></div>
 			 <script src="js/jigsaw.js"></script>
    		<button type="button" onclick="dosss()">点击验证</button>
			</div>
			<div class="publishButton">
				<button class="btn btn-primary" type="button" onclick="submitData()">发表评论</button>
			</div>
		</form>
	</div>
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