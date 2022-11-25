<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mangoplate</title>
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
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
		<li><a href="admin_notice_list.do">공지사항 관리</a></li>
		<li><a href="admin_eatdeal_list.do">EAT딜 관리</a></li>
		<li><a href="admin_restaurant_list.do">식당등록 관리</a></li>
	</ul>
		
		<h2>식당 상세보기</h2>
		<table class="boardContent">	
			<tr>				
				<th>등록일자</th>
				<td>${vo.rdate}</td>
				<th>조회수</th>
				<td>${vo.rhits}</td>
			</tr>		
			<tr>				
				<th>식당명</th>
				<td>${vo.rname}</td>
			</tr>
			<tr>				
				<th>주소</th>
				<td>${vo.raddr}</td>
			</tr>
			<tr>				
				<th>연락처</th>
				<td>${vo.rcontact}</td>
			</tr>
			<tr>				
				<th>가격대</th>
				<td>${vo.rprice}</td>
			</tr>
			<tr>				
				<th>음식종류</th>
				<td >${vo.rcategory}</td>
			</tr>
			<tr>				
				<th>대표사진</th>
				<td>
					<c:if test="${vo.rsimage != null}">
						<!--  파일업로드 출력 -->
						<img src="http://localhost:9000/mangoplate/resources/upload/${vo.rsimage}"
							width="100" height="70">
					</c:if>
				</td>
			</tr>
			<tr>
				<td>
					<a href="admin_restaurant_update.do?rid=${vo.rid }"><button type="button" class="btn_style">수정하기</button></a>
					<a href="admin_restaurant_delete.do?rid=${vo.rid }"><button type="button" class="btn_style">삭제하기</button></a>
					<a href="admin_restaurant_list.do">
						<button type="button" class="btn_style">리스트</button>
					</a>
				</td>
			</tr>			
		</table>
		
	</div>
	
	<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="750px" scrolling="no" frameborder=0></iframe>
	
</body>
</html>







