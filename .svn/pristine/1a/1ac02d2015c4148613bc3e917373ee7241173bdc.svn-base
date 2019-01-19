<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
        .drag{
            width: 300px;
            height: 40px;
            line-height: 40px;
            background-color: #e8e8e8;
            position: relative;
            margin:auto;
        }
        .bg{
            width:40px;
            height: 100%;
            position: absolute;
            background-color: #75CDF9;
            margin-top:-36px;
        }
        .text{
            position: absolute;
            width: 100%;
            height: 100%;
            text-align: center;
            user-select: none;
            margin-top:-36px;
        }
        .btn{
            width:40px;
            height: 38px;
            position: absolute;
            border:1px solid #ccc;
            cursor: move;
            font-family: "宋体";
            text-align: center;
            background-color: #fff;
            user-select: none;
            color:#666;
            margin-top:-36px;
        }
        .photo{
            margin:40px 0px 0px 0px;
        }
    </style>
</head>
<body>
<div class="drag">
        <div class="bg" ></div>
        <div class="text" onselectstart="return false;">请拖动滑块解锁</div>
        <div class="btn" onclick="fn()">&gt;&gt;
        <img src="/photo/newImage.png" style="display:none" id="photo">
        </div>
        <div class="photo">
        <img src="/photo/oriCopyImage.png" style="display:none" id="photo2">
        </div>
    </div>
    <script>
    function fn(){
		var img=document.getElementById("photo");
		var img2=document.getElementById("photo2");
		img.style.display="block";
		img2.style.display="block";
		/* if(document.getElementById("world").innerHTML=="隐藏图片"){
			img.className="hide";
			document.getElementById("world").innerHTML="显示图片";
		}else{
			img.className="";
			document.getElementById("world").innerHTML="隐藏图片";
		} */
	}

    
        //一、定义一个获取DOM元素的方法
        var $ = function(selector){
                return  document.querySelector(selector);
            },
            box = $(".drag"),//容器
            bg = $(".bg"),//背景
            text = $(".text"),//文字
            btn = $(".btn"),//滑块
            success = false,//是否通过验证的标志
            distance = 20;//滑动成功的宽度（距离）

        //二、给滑块注册鼠标按下事件
        btn.onmousedown = function(e){

            //1.鼠标按下之前必须清除掉后面设置的过渡属性
            btn.style.transition = "";
            bg.style.transition ="";

            //说明：clientX 事件属性会返回当事件被触发时，鼠标指针向对于浏览器页面(或客户区)的水平坐标。

            //2.当滑块位于初始位置时，得到鼠标按下时的水平位置
            var e = e || window.event;
            var downX = e.clientX;

            //三、给文档注册鼠标移动事件
            document.onmousemove = function(e){

                var e = e || window.event;
                //1.获取鼠标移动后的水平位置
                var moveX = e.clientX;

                //2.得到鼠标水平位置的偏移量（鼠标移动时的位置 - 鼠标按下时的位置）
                var offsetX = moveX - downX;

                //3.在这里判断一下：鼠标水平移动的距离 与 滑动成功的距离 之间的关系
                if( offsetX < 0){
                    offsetX = 0;//如果滑到了起点的左侧，就将它重置为起点位置
                }

                //4.根据鼠标移动的距离来动态设置滑块的偏移量和背景颜色的宽度
                btn.style.left = offsetX + "px";
                bg.style.width = offsetX + "px";

                //如果鼠标的水平移动距离 = 滑动成功的宽度
                if( offsetX == distance){

                    //1.设置滑动成功后的样式
                    text.innerHTML = "验证通过";
                    text.style.color = "#fff";
                    btn.innerHTML = "&radic;";
                    btn.style.color = "green";
                    bg.style.backgroundColor = "lightgreen";

                    //2.设置滑动成功后的状态
                    success = true;
                    //成功后，清除掉鼠标按下事件和移动事件（因为移动时并不会涉及到鼠标松开事件）
                    btn.onmousedown = null;
                    document.onmousemove = null;

                    //3.成功解锁后的回调函数
                    setTimeout(function(){
                        alert('解锁成功！');
                    },100);
                }
            }

            //四、给文档注册鼠标松开事件
            document.onmouseup = function(e){

                //如果鼠标松开时，滑到了终点，则验证通过
                if(success){
                    return;
                }else{
                    //反之，则将滑块复位（设置了1s的属性过渡效果）
                    btn.style.left = 0;
                    bg.style.width = 0;
                    btn.style.transition = "left 1s ease";
                    bg.style.transition = "width 1s ease";
                }
                //只要鼠标松开了，说明此时不需要拖动滑块了，那么就清除鼠标移动和松开事件。
                document.onmousemove = null;
                document.onmouseup = null;
            }


        }
    </script>
    
</body>
</html>