<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>망고플레이트 - 공지사항</title>
<style>
	* {
		margin: 0px;
		padding: 0px;
	}
	.out { 
 	width:100%;
 	background-color:#ffffff;
 	display: flex;
  	justify-content: center; 
  	position:absolute;
  	} 
 .in { 
 	width:80%;
 	/* margin: 0 150px; */
 	background-color:#ffffff;
 	/* margin: 0 auto; */
 	position:relative;
 	}
	h1.title {
		font-size: 28.8px;
		font-weight: normal;
		color: #ff792a;
		margin-bottom: 30px;
		line-height: 2rem;
	}
	
	div.flip {
		width:2500%; height:67px;
		max-width:1522.3px;
		background-color:#FFFFFF;
		border-bottom: 1px solid #E9E9E9;
		
		/* padding: 15px 40px 0px 15px; */
		display:block; 
		position:relative;
		
	}
	div.content {
		border-top: 1px solid #E9E9E9;
		width:2500%; height:auto;
		max-width:1492.3px;
		background-color:#E9E9E9;
		font-size: 12.8px;
		display:none; /* slideDown()을 실습할때는 주석 없애주면 된다 */
		padding: 20px 15px;
		position:relative;
	}
	div.ntitle {
		font-size: 15.2px;
		color: #4f4f4f;
	}
	div.ndate {
		font-size: 11.2px;
		color: #cbcbcb;
	}
	#btn_style1 {
		border-radius:4px;
		position:absolute;
		right:-120px;
		top:0px;
		/* left:-665px; top:12px; */
	}
	#btn_style2 {
		border-radius:4px;
		position:absolute;
		right:-120px;
		top:-45px;
	}
	#btn_style3 {
		border-radius:4px;
		position:absolute;
		right:-120px;
		top:5px;
	}
	img {
		display:block;
		width:auto;
		max-width:1300px;
		position:relative;
		
	}
	 .footer {
  padding: 0 0 180px 0;
 }
</style>
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<script src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function(){
		
		$(".flip").click(function(){ 
			var a = $(this).attr("id");
			$("#content_"+a).slideToggle(300);
		});
		
	});
</script>
</head>
<body>
	<!-- header -->
	<iframe src="header.do" width="100%" height="101px" scrolling="no" frameborder=0 ></iframe>
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	
	<div class="out">
	<div class="in">
<%--	<a href="admin_notice_write.do">
					<button type="button" class="btn_style" id="btn_style1">글쓰기</button></a> --%>
	<h1 class="title">공지사항</h1>
	
	
	<table>
		<c:forEach var="vo" items="${ list }">
		<tr>
			<td>
				<div id="${ vo.nid }" class="flip">
					<div class="ntitle" style="padding: 15px 0px 5px 15px;">${ vo.ntitle }</div>
					<div class="ndate" style="padding: 0px 0px 10px 15px; margin: 0 0 15px 0">${ vo.ndate }</div>
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<div id="content_${ vo.nid }" class="content" style="white-space:pre;">${ vo.ncontent }
				
<%-- 				<a href="admin_notice_update.do?nid=${ vo.nid }"><button type="button" class="btn_style" id="btn_style2">수정하기</button></a>	
				<a href="admin_notice_delete.do?nid=${ vo.nid }"><button type="button" class="btn_style" id="btn_style3">삭제하기</button></a> --%>
					<c:if test="${ vo.nsfile != null }">
						<br><br>
							<img src="http://localhost:9000/mangoplate/resources/upload/${ vo.nsfile }">
						<br><br>
					</c:if>
				</div>
			</td>
		</tr>
		</c:forEach>
	</table>
	<div class="footer"></div>
	</div>
	</div>
</body>
</html>