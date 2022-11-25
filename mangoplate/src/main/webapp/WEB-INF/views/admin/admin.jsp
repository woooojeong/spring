<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mangoplate</title>
<script src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/am-pagination.css">
<script src="http://localhost:9000/mangoplate/resources/js/am-pagination.js"></script>
<style>
	* {
			margin: 0px;
			padding: 0px;
		}
		
		.content {
		/* 	border: 1px solid red; */
			width: 100%;
		/* 	height: auto; */
			margin-top: 61px;
		}
	
	.admin_head {
		/* border: 1px solid blue; */
		width: 100%;
		height: 250px;
		background-color: coral;
	}
	
	.admin_head h1 {
		/* border: 1px solid blue;  */
		color: white;
		font-weight:bold;
		font-size: 50px;
		font-family: "SpoqaHanSans", "Noto Sans SC", "APPLE SD Gothic NEO","sans-serif";
		/* display: inline-block; */
		display: block;
		padding-top:30px;
		margin-top: 30px;
		margin-left: 30px;
	}
	
	.admin_index {
		/* border: 1px solid red; */
		width: 100%;
		height: 500px;
		margin: auto;
		padding: 50px;
	}
	
	.admin_index h2{
		/* border: 1px solid blue; */
		color: coral;
		text-align: center;
		font-weight: bold;
		font-size: 50px;
	}
	.admin_index p{
		/* border: 1px solid black; */
		color: coral;
		text-align: center;
		font-weight: bold;
		font-size: 20px;
		padding: 10px;
	}
	
	.admin_icon {
		/* border: 1px solid red; */
		text-align: center;
		padding: 50px;
		width: 100%;
		height: 300px;
		position:relative; 
	}
	
	.admin_icon a{
		/* border: 1px solid blue; */
		height: 170px;
		padding: 100px;
		text-decoration:none;
		
	}
	
	.admin_icon img{
		/* border: 2px solid coral; */
		border-radius: 5px;
		
	}
	
	.admin_icon span{
		/* border: 1px solid red; */
		position:absolute;
		width: 100px; height: 40px;
		color: white;
		background-color: coral;
		font-weight: bold;
		font-size: 20px;
		margin-top: 170px;
		margin-left: -125px;
		padding: 5px 10px;
	}
	
	
</style>
</head>
<body>
	<!-- Header Include -->
	<jsp:include page="../header.jsp"></jsp:include>
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="content">
		<div class="admin_head">
			<h1>관리자 페이지</h1>	
		</div>
	<ul class="h2">
		<li><a href="admin.do" class="active">Admin</a></li>
		<li><a href="admin_member_list.do">회원정보관리</a></li>
		<li><a href="admin_notice_list.do">공지사항 관리</a></li>
		<li><a href="admin_eatdeal_list.do">EAT딜 관리</a></li>
		<li><a href="admin_restaurant_list.do">식당등록 관리</a></li>
	</ul>
	</div>
	
	<div class="admin_index">
		<h2> 관리자님 안녕하세요</h2>
		<p>원하시는 작업을 선택해주세요</p>
		<div class="admin_icon">
			<a href="http://localhost:9000/mangoplate/admin_restaurant_list.do">
				<img src="http://localhost:9000/mangoplate/resources/images/restaurant.png">
				<span>식당등록</span>
			</a>
			<a href="http://localhost:9000/mangoplate/admin_eatdeal_list.do">
				<img src="http://localhost:9000/mangoplate/resources/images/eatdeal.png">
				<span>EAT딜</span>
			</a>
			<a href="http://localhost:9000/mangoplate/admin_notice_list.do">
				<img src="http://localhost:9000/mangoplate/resources/images/notice.png">
				<span>공지사항</span>
			</a>
			<a href="http://localhost:9000/mangoplate/admin_member_list.do">
				<img src="http://localhost:9000/mangoplate/resources/images/user.png">
				<span>회원정보</span>
			</a>
		</div>
	</div>
	<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="750px" scrolling="no" frameborder=0></iframe>
</body>
</html>







