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
	<link rel="stylesheet" href="css/jigsaw.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="css/blog/blog.css">
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
		function checkNum() {
	        var regex = /^\d+$/;
	        var num = document.formJ.pageCode.value;
	        if(!regex.test(num)) {
	           document.formJ.pageCode.value="";
	        }
	     }
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
				<div class="data_list_title" style="color: #FFFFFF;right	:20px">
					<img src="img/blog_show_icon.png"/>
					博客信息
				</div>
				<div>
				    <div class="blog_title"><h3><strong style="color: #FFFFFF">${title}</strong></h3></div>
				    <div style="padding-left: 330px;padding-bottom: 20px;padding-top: 10px">
						<div class="bshare-custom"><a title="分享到QQ空间" class="bshare-qzone"></a>
							<a title="分享到新浪微博" class="bshare-sinaminiblog"></a>
							<a title="分享到人人网" class="bshare-renren"></a>
							<a title="分享到腾讯微博" class="bshare-qqmb"></a>
							<!-- <a title="分享到网易微博" class="bshare-neteasemb"></a> -->
							<a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a>
							<span style="color: #FFFFFF">转发数: ${forwordNumber}</span>
							<%-- <span class="BSHARE_COUNT bshare-share-count">转发数: ${forwordNumber}</span> --%>
						</div>
						<script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=1&amp;lang=zh"></script><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
				 	</div>
					<div class="blog_content" style="color: #FFFFFF">
						<p>${message}<br/></p>
					</div>
					<div class="blog_keyWord" style="position:absolute;top:700px">
						<font><strong style="color: #FFFFFF">关键字：</strong></font>
						&nbsp;&nbsp;<a href="/Blog/blog/q.html?q=3333" target="_blank" style="color: #FFFFFF">3333</a>&nbsp;&nbsp;
					</div>
					<div class="blog_lastAndNextPage" style="position:absolute;top:750px">
						<p>xxx<a href='/Blog/blog/articles/81.html'>XXXXXXXXXX</a></p><p>xxx</p>
					</div>
				</div>
			</div>
			<span style="position:absolute;left:368px;top:1020px;color:white">发布于 <fmt:formatDate value="${time}" pattern="yyyy年MM月dd日 hh:mm:ss"/></span>
			<span style="position:absolute;left:699px;top:1020px;color:white">阅读 (${readNumber})</span>
			<span style="position:absolute;left:776px;top:1020px;color:white">评论 (${commentsNumber})</span>
			<span style="position:absolute;left:862px;top:1020px;color:white">收藏</span>
		</div>
		
		<div id="discussarea">
			<c:forEach var="comments" items="${pageBean.datas}">
			<div class="data_list">
				<div class="data_list_title" style="color: #FFFFFF">
					<img src="img/comment_icon.png"/>
					评论信息
					<input type="hidden" name="cId" value="${comments.cId}">
					<button type="submit" onclick="delect(${comments.cId})">删除</button>   
				</div>
				<div class="commentDatas">
					<div class="comment">
						<span><font>${comments.username}&nbsp;&nbsp;&nbsp;&nbsp;</font>
						${comments.comments}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[&nbsp;<fmt:formatDate value="${comments.commentTime}" pattern="yyyy年MM月dd日 hh:mm:ss"/>&nbsp;]</span>
						<hr>
					</div>								
				</div>
			</div>
			</c:forEach>
		</div>
		<div id="pageNum">
		<table>
		<tr>        
         <td  colspan="3">当前是${pageBean.pageCode }/${pageBean.allPages }页</td>
         <td  colspan="3">
            <a href="comment.action?username=${username}&message=${message}
			  &time=${time}&readNumber=${readNumber}
			  &commentsNumber=${commentsNumber}
			  &title=${title}
			  &forwordNumber=${forwordNumber}
			  &blogId=${blogId}">
			  首页
			  </a>
            <c:if test="${pageBean.pageCode > 1 }">
               <a href="comment.action?pageCode=${pageBean.pageCode-1 }&username=${username}&message=${message}
			  &time=${time}&readNumber=${readNumber}
			  &commentsNumber=${commentsNumber}
			  &title=${title}
			  &forwordNumber=${forwordNumber}
			  &blogId=${blogId}" class="jianli_apply">上一页</a>
            </c:if>
            <c:forEach var="pageCode" begin="1" end="${pageBean.allPages }" step="1">
               <a href="comment.action?pageCode=${pageCode}&username=${username}&message=${message}
			  &time=${time}&readNumber=${readNumber}
			  &commentsNumber=${commentsNumber}
			  &title=${title}
			  &forwordNumber=${forwordNumber}
			  &blogId=${blogId}">${pageCode}</a>
            </c:forEach>
            <c:if test="${pageBean.pageCode < pageBean.allPages}">
              <a href="comment.action?pageCode=${pageBean.pageCode+1 }&username=${username}&message=${message}
			  &time=${time}&readNumber=${readNumber}
			  &commentsNumber=${commentsNumber}
			  &title=${title}
			  &forwordNumber=${forwordNumber}
			  &blogId=${blogId}">下一页</a>
            </c:if>
            <a href="comment.action?pageCode=${pageBean.allPages }&username=${username}&message=${message}
			  &time=${time}&readNumber=${readNumber}
			  &commentsNumber=${commentsNumber}
			  &title=${title}
			  &forwordNumber=${forwordNumber}
			  &blogId=${blogId}" class="sel_btn ch_cls">末页</a>
         </td>
         <td  colspan="3">
              <form action="comment.action?username=${username}&message=${message}
			  &time=${time}&readNumber=${readNumber}
			  &commentsNumber=${commentsNumber}
			  &title=${title}
			  &forwordNumber=${forwordNumber}
			  &blogId=${blogId}" name="formJ" method="post">
                <input type="text" name="pageCode" size="5" onblur="checkNum()"/>
                <input type="submit" value="GO" />
              </form>
         </td>
     </tr>
     </table>
		</div>
		<div id="discuss">
			<div class="data_list" >
<input type="hidden" name="myname" value="${username}">
<input type="hidden" name="myblogId" value="${blogId}">
				<div class="data_list_title">
					<img src="img/publish_comment_icon.png"/>
					发表评论
				</div>
				<div class="publish_comment">
						<div>
							<textarea style="width: 100%" rows="3" id="content" name="content" placeholder="来说两句吧..."></textarea>
						</div>
						<div class="verCode">
							<div class="verCode1">
						<div id="captcha"></div>
			 			 <div id="msg"></div>
			 			 <script src="js/jigsaw.js"></script>
			 			 	</div>
			    		<button type="button" onclick="dosss()">点击验证</button>
						</div>
						<div class="publishButton">
							<button class="btn btn-primary" type="button" onclick="submitData()">发表评论</button>
						</div>
				</div>
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
		
		<div id="banner">
		</div>
	</div>
</body>
</html>