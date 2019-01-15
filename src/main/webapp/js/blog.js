/**
 * 
 */
window.onload = function(){
	var mid_Top = document.getElementsByClass("mid_Top");
	mid_Top[0].onclick = function(){
		mid_Top[0].style.background = "#FDA6A2";
		mid_Top[1].style.background = "red";
		mid_Top[2].style.background = "red";
		mid_Top[3].style.background = "red";
	}
	mid_Top[1].onclick = function(){
		mid_Top[1].style.background = "#FDA6A2";
		mid_Top[0].style.background = "red";
		mid_Top[2].style.background = "red";
		mid_Top[3].style.background = "red";
	}
}

















