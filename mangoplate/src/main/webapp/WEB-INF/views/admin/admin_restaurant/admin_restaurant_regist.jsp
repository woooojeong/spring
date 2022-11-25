<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mangoplate</title>
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/am-pagination.css">
<script src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function(){
		
		$('#btnNoticeWrite').click(function(){
			boardWriteForm.submit();
		});
		
 	});
</script>
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
		height: 300px;
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
	
	ul.h2 li:nth-child(5) a {
		background-color: coral;
		color:#fff;
	}
	
	h2 {
		border: 1px solid red;
		margin: 50px;
	}
</style>
</head>
<body>
	<!-- Header Include -->
	<jsp:include page="../../header.jsp"></jsp:include>
	
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="content">
		<div class="admin_head">
			<h1>관리자 페이지</h1>	
		</div>
	<ul class="h2">
		<li><a href="admin.do">Admin</a></li>
		<li><a href="admin_member_list.do">회원정보관리</a></li>
		<li><a href="contact.asp">공지사항 관리</a></li>
		<li><a href="about.asp">eatdeal 관리</a></li>
		<li><a href="admin_restaurant_list.do">식당등록 관리</a></li>
	</ul>
		
		<h2>식당상세정보-등록하기</h2>
		<form name="boardWriteForm" action="admin_restaurant_regist_check.do" method="post" enctype="multipart/form-data">
			<ul>
				<li>
					<label>식당명</label>
					<input type="text" name="rname" id="rname">
				</li>
				<li>
					<label>주소</label>
					<input type="text" name="raddr" id="raddr">
				</li>
				<li>
					<label>연락처</label>
					<input type="text" name="rcontact" id="rcontact">
				</li>
				<li>
					<label>가격대</label>
					<input type="text" name="rprice" id="rprice">
				</li>
				<li>
					<label>음식종류</label>
					<select name="rcategory">
						<option value="양식">양식</option>
						<option value="한식">한식</option>
						<option value="중식">중식</option>
						<option value="일식">일식</option>
						<option value="아시안음식">아시안음식</option>
					</select>
				</li>
				<li>
					<label>대표사진</label>
					<input type="file" name="file1">
				</li>
				<li>
					<button type="button" class="btn_style" id="btnNoticeWrite">등록완료</button>
					<button type="reset" class="btn_style">다시쓰기</button>
					<a href="http://localhost:9000/mangoplate/admin_restaurant_list.do">
						<button type="button" class="btn_style">리스트</button></a>
					<a href="http://localhost:9000/mangoplate/admin.do"><button type="button" class="btn_style">관리자홈</button></a>
				</li>
			</ul>
		</form>
	</div>
	
	<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="750px" scrolling="no" frameborder=0></iframe>
	
</body>
</html>

