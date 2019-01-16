<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
var isappend=false;
$(document).ready(function(){
			$("input[name='selectName']").keyup(function(){
				  $.ajax({   		
					url : "selectName.action",
					data:{
						name:$("input[name='selectName']").val()
			        },
					dataType:"json",
					success : function(list) {
						if(isappend==true){
							$("#search").siblings("option").remove();
						}
						var name="";
						$.each(list, function(i, p){
							name+="<option id='search'"+"name='code'>"+p.name+"("+p.code+")"+"</option>";
							isappend=true;
						});
						$("datalist[name='num']").html($("datalist[name='num']").html()+name);
						}
					}); 
			});
});

function graphical(){
	$.ajax({   		
		url : "graphical.action",
		/* data:{
			name:$("input[name='selectName']").val()
        }, */
		dataType:"text",
		success : function(obj) {
			$("#pp").html(obj);
			}
		});
}
</script>
</head>
<body>
	<div>
			<button type="button" onclick="graphical()">111</button>
			<input  list ="num" name="selectName" id="selectName" />
			<div style="height:50px;overflow:hidden;">
		        <datalist id ="num" name="num" onfocus="selectFocus()">
		            <option>--请选择输入--</option >
		        </datalist>
		<span id="pp"></span>
		    </div>
	</div>
</body>
</html>