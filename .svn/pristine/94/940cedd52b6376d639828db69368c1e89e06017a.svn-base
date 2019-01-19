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
	<title>方融量子</title>
	<meta name="Generator" content="Webstorm">
	<meta name="Author" content="张帅">
	<meta name="keyword" content="方融">
	<meta name="description" content="方融量子网络科技公司">
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	<script type="text/javascript" src="js/homepage.js"></script>
	<link href="css/homepage.css" type="text/css" rel="stylesheet" />
	<link href="css/blog.css" type="text/css" rel="stylesheet" />
	<link href="css/blogarea.css" type="text/css" rel="stylesheet" />
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="css/blog/blog.css">
	<link rel="stylesheet" href="css/bloghome.css">
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
	        padding-bottom: 40px;
	    }
	</style>
</head>
<body>
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
			<div id="top_Icon"></div>
			<div id="top_SelfInfo">
				<img alt="" src="img/Rectangle.png" style="margin-left:21.6px;margin-top:35px">
				<span style="font-size:14px;margin-left:50px">等级</span><br>
				<div style="width:115px;height:5px;border-radius:2.5px;background: #FEE1E0;margin-left:15px;margin-top:10px">
					<div style="width:80px;height:5px;border-radius:2.5px;background: #FF817C;margin-top:10px"></div>
				</div><br>
				<span style="font-size:10px;position:absolute;left:65px;top:75px;font-weight:100">800/1150</span><br>
				<img alt="" src="img/徽章.png" style="position:absolute;left:24px;top:100px">
				<img alt="" src="img/设置.png" style="position:absolute;left:64px;top:100px">
				<img onclick="window.location = 'index.jsp'" alt="" src="img/退出.png" style="position:absolute;left:104px;top:100px">
			</div>
		</div>
	</div>
	<div id="mid_Content">
		<div id="mid_Top_one" class="mid_Top">复盘笔记</div>
		<div id="mid_Top_two" class="mid_Top">盘中速记</div>
		<div id="mid_Top_three" class="mid_Top">经验分享</div>
		<div id="mid_Top_four" class="mid_Top">模拟炒股</div>
		<div id="blogarea">
			<div class="data_list">
				<div class="data_list_title">
				<img src="img/list_icon.png"/>
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
		</div>
		<div id="pageNum">
			<div>
				<nav>
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
				</nav>
			 </div>
		</div>
		<div id="blogfooter">
		</div>
		
		<div id="userInfo">
			<div id="userInfoCircle"></div>
			<div class="col-md-3" style="width:100%">
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
			
			
		</div>
		
		<div id="linkblog">
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
</body>
</html>