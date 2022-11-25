<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mangoplate</title>
<link rel="stylesheet"
	href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<link rel="stylesheet"
	href="http://localhost:9000/mangoplate/resources/css/restaurant_detail.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

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

.personality_head {
	/* border: 1px solid blue; */
	width: 100%;
	height: 250px;
	background-color: coral;
}

.personality_head h1 {
	/* border: 1px solid blue;  */
	color: white;
	font-weight: bold;
	font-size: 50px;
	font-family: "SpoqaHanSans", "Noto Sans SC", "APPLE SD Gothic NEO",
		"sans-serif";
	/* display: inline-block; */
	display: block;
	padding-top: 30px;
	margin-top: 30px;
	margin-left: 30px;
}

.personality_head p {
	/* border: 1px solid red; */
	color: white;
	font-size: 20px;
	font-family: "SpoqaHanSans", "Noto Sans SC", "APPLE SD Gothic NEO",
		"sans-serif";
	/* display: inline-block; */
	margin-top: 20px;
	margin-left: 30px;
}

.personality {
	/* border: 1px solid blue; */
	width: 100%;
	height: 500px;
}

.personality h3 {
	/* border: 1px solid blue; */
	color: coral;
	font-weight: bold;
	font-family: "SpoqaHanSans", "Noto Sans SC", "APPLE SD Gothic NEO",
		"sans-serif";
	display: block;
	margin-top: 30px;
	text-align: center;
}

.mypage {
	/* border: 1px solid black; */
	width: 100%;
	height: 800px;
	clear: both;
}

.member {
	/* border: 1px solid green; */
	padding: 30px;
	width: 900px;
	height: 400px;
	text-align: center;
	margin: auto;
}

.selfie {
 	/* border: 1px solid black;  */
	width: 300px;
	height: 300px;
	float: left;
	margin : 0px;
	padding : 0px;
	/*  margin: auto;
		 text-align: center; */
	position : relative;
	}
	
	.selfie img {
		/* border : 1px solid black; */
		width: 200px;
		height: 200px;
		display : inline-block;
		margin-left: 120px;
	}
	
	.selfie button {
		/* border : 1px solid blue; */
		display : block;
		position : absolute;
		left : 100px;
		top: 180px;
	}
	
	.membership{
	 	/*  border: 1px solid red;  */
		 display : inline-block;
		 width: 500px;
		 height: 300px;
		 /* clear:both; */
		 position: relative;
	}
	.membership button {
		/* border: 2px solid blue; */
		position: absolute; 
		left: 323px;
		top: 230px;
	}
</style>
</head>
<body>
	<!-- Header Include -->
	<jsp:include page="../header.jsp"></jsp:include>
	<!-- <iframe src="header.do" width="100%" height="61px" scrolling="no" frameborder=0 ></iframe> -->

	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="content">
		<section class="information">
			<div class="personality_head">
				<h1>My Mangoplate</h1>
				<p>―</p>
				<p class="subtitle">Eat, Share, Be Happy.</p>
				<!-- <p class="subtitle2">망고플레이트에 오신 것을 환영합니다</p> -->
			</div>
			<div class="personality">
				<h3>Profile</h3>
				<div class="member">
					<div class="selfie">
						<img alt=""
							src="http://localhost:9000/mangoplate/resources/images/profile.jpg">
						<!-- <button type="button" class="btn_style">사진설정</button> -->
					</div>
					<div class="membership">
						<table class="board" border=1>
							<tr>
								<th>아이디</th>
								<td>${vo.id}</td>
							</tr>
							<tr>
								<th>성명</th>
								<td>${vo.name}</td>
							</tr>
							<tr>
								<th>이메일</th>
								<td>${vo.email}</td>
							</tr>
							<tr>
								<th>주소</th>
								<td colspan="5">${vo.addr1} ${vo.addr2}</td>
							</tr>
							<tr>
								<th>연락처</th>
								<td colspan="5">${vo.pnumber}</td>
							</tr>

						</table>
						<a href="mypage_update.do?id=${ vo.id }"><button type="button" class="btn_style" id="profile_update">회원정보수정</button></a>
					</div>
				</div>
			</div>
		</section>
	</div>
	
	<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="750px" scrolling="no"
		frameborder=0></iframe>
</body>
</html>






