<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mangoplate</title>
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/am-pagination.css">
<script src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
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
	
	ul.h2 li:nth-child(2) a {
		background-color: coral;
		color:#fff;
	}
	
	h3 {
		border: 1px solid red;
	}
	table.board {
		border: 1px solid red;
	}
	
	tr:last-child {
		border: none;	
	}
</style>
</head>

<body>
	<!-- Header Include -->
	<jsp:include page="../../header.jsp"></jsp:include>
	
	<!---------------------------------------------->
	<!--------------- Content ---------------------->
	<!---------------------------------------------->
	<div class="content">
		<div class="admin_head">
				<h1>관리자 페이지</h1>	
		</div>
	<ul class="h2">
		<li><a href="admin.do">Admin</a></li>
		<li><a href="admin_member_list.do" class="active">회원정보관리</a></li>
		<li><a href="admin_notice_list.do">공지사항 관리</a></li>
		<li><a href="admin_eatdeal_list.do">EAT딜 관리</a></li>
		<li><a href="admin_restaurant_list.do">식당등록 관리</a></li>
	</ul>
		<h2>회원정보-상세보기</h2>
		<table class="board" border=1>
			<tr>
				<th>아이디</th>
				<td>${vo.id }</td>
			</tr>
			<tr>
				<th>성명</th>
				<td>${vo.name}</td>
			</tr>
			<tr>
				<th>가입날짜</th>
				<td>${vo.mdate}</td>
			</tr>
			<tr>
				<th>주소</th>
				<td >${address}</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td >${vo.email}</td>
			</tr>
			<tr>
				<th>연락처</th>
				<td >${vo.pnumber}</td>
			</tr>
			
			<tr>
				<td colspan="7">					
					<a href="admin_member_list.do"><button type="button" class="btn_style">리스트</button></a>
					<a href="admin.do"><button type="button" class="btn_style">관리자홈</button></a>
				</td>
			</tr>	
		</table>
	</div>
	
<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="750px" scrolling="no" frameborder=0></iframe>
	
</body>
</html>