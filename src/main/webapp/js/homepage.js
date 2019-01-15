/**
 * 
 */
$(function(){
	$("#tou2").mouseover(function (){  
        $("#tou2").css({color:"white",background:"#E38B98"});
        $("#tou").css({color:"#E38B98",background:"#E3E4E7"}); 
    }).mouseout(function (){  
        $("#tou2").css({color:"#E38B98",background:"#E3E4E7"});  
        $("#tou").css({color:"white",background:"#E38B98"});
    }); 
	$("#tou3").mouseover(function (){  
        $("#tou3").css({color:"white",background:"#E38B98"});
        $("#tou4").css({color:"#E38B98",background:"#E3E4E7"}); 
    }).mouseout(function (){  
        $("#tou3").css({color:"#E38B98",background:"#E3E4E7"});  
        $("#tou4").css({color:"white",background:"#E38B98"});
    }); 
	$("#loginbutton").mouseover(function(){
		$("#loginbutton").css({color:"white",background:"#E38B98"});
	}).mouseout(function(){
		$("#loginbutton").css({color:"#E38B98",background:"white"});
	});
	$("#registbutton").mouseover(function(){
		$("#registbutton").css({color:"white",background:"#E38B98"});
	}).mouseout(function(){
		$("#registbutton").css({color:"#E38B98",background:"white"});
	});
	playauto();//playauto()函数控制弹出框居中显示
	function playauto() {
		var _width=$(window).width();//获取浏览器窗口宽度
		var _height=$(window).height();//获取高度
		$(" #login").css({left:_width/2-220,top:_height/2-225}); //使弹出框居中
		$(" #regist").css({left:_width/2-220,top:_height/2-225});
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
	$("#tou2").click(function(){
		if(!$("#regist").is(':visible')){
			$("#regist").css({height:'390px'});
		}
		playauto();
		$("#bg").show();
		$("#regist").show();
		$("#regist").animate({height:"540px"});
		$("#login").hide();
	})
	$(".zc").click(function () {//点击超链接按钮显示bg、login样式
		playauto();
		$("#bg").show();
		$("#regist").show();
	})
	$("#tou3").click(function () {//点击超链接按钮显示bg、login样式
		if(!$("#login").is(':visible')){
			$("#login").css({height:'540px'});
		}
		playauto();//再次点击登陆按钮时，弹出框仍然处于居中位置
		$("#bg").show();
		$("#login").show();
		$("#login").animate({height:"390px"});
		$("#regist").hide();
	})
	$(".close").click(function () {//点击弹出框上的X按钮隐藏bg、login样式，即关闭弹出框
		$("#bg").hide();
		$("#login").hide();
		
	});
	$(".close2").click(function () {//点击弹出框上的X按钮隐藏bg、login样式，即关闭弹出框
		$("#bg").hide();
		$("#regist").hide();
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
		});
	});

	$("#regist").mousedown(function(e){
		var x=e.clientX;//鼠标按下的X坐标
		var y=e.clientY;//鼠标按下的Y坐标
		var left=("#regist").offset().left;//登陆框距离左边位置
		var top=("#regist").offset().top;//登陆框距离顶部位置
		var l=x-$left;//点击的坐标点距离弹出框左边的距离
		var t=y-$top;//点击的坐标点距离弹出框上边的距离
		$(document).mousemove(function (e) {
			var nx=e.clientX;
			var ny=e.clientY;
			var n_left=nx-l;//动态得到弹出框距离浏览器左边距离
			var n_top=ny-t;//动态得到弹出框距离浏览器上边距离
			$("#regist").css({left: n_left,top:n_top});
		});
		$(document).mouseup(function () {
			$(document).unbind("mousemove");//解除鼠标移动事件
			$(document).unbind("mouseup");
		});
	});
	$('#top_Home').click(function(){
		if($('.dl').html()=='登录'){
			
		}else{
			window.location = "userLogined.action";
		}
	});
	
})

window.onload = function(){
	var self = document.getElementById("top_Self");
	var selfspa = document.getElementById("top_Selfspace");
	var market = document.getElementById("top_Market");
	var marketspa = document.getElementById("top_Marketspace");
	var top_Login = document.getElementById("top_Login");
	var top_SelfInfo = document.getElementById("top_SelfInfo");
	var top_Icon = document.getElementById("top_Icon");
	self.onmouseover = function(){
		selfspa.style.visibility = "visible";
	}
	self.onmouseout = function(){
		selfspa.style.visibility = "hidden";
	}
	market.onmouseover = function(){
		marketspa.style.visibility = "visible";
	}
	market.onmouseout = function(){
		marketspa.style.visibility = "hidden";
	}
	top_Login.onmouseover = function(){
		top_SelfInfo.style.visibility = "visible";
		top_Icon.style.width = "53px"; 
		top_Icon.style.height = "53px"; 
		top_Icon.style.margin = "18px 0 0 -13px";
	}
	top_Login.onmouseout = function(){
		top_SelfInfo.style.visibility = "hidden";
		top_Icon.style.width = "27px"; 
		top_Icon.style.height = "27px"; 
		top_Icon.style.margin = "3px 0 0 0";
	}
}


