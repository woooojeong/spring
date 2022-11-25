<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{
		padding : 0px;
		margin : 0px;
	}
	
	/* 배경관련 css */
	
	body {
		background-color : #e9e9e9;
	}
	
	/* 가운데 흰 부분 관련 css */
	
	.review_content {
		width : 610px;
		height : 486px;
		background-color : #ffffff;
		margin : 70px auto 7px;
	 	padding : 10px 0px;
	}
	
	/* content 관련 css */
	
	.real_content {
		width : 600px;
		height : 466px;
	/* 	border : 1px solid black; */
		margin : auto;
	}
	
	.first_div {
		width : 570px;
		margin : 10px auto;
	}
	
	.first_div div:nth-child(1) {
	/* 	border : 1px solid blue; */
		width : 300px;
		float : left;
	}
	
	.first_div div:nth-child(1) img {
		width : 42px;
		height : 42px;
	/* 	border : 1px solid red; */
		float : left;
		margin-top : 4px;
	}
	
	.first_div div:nth-child(1) p {
		font-size : 16px;
		margin-left : 50px;
		margin-top : 4px;
	}
	
	.first_div div:nth-child(1) span {
		font-size : 12px;
	}
	
	.first_div div:nth-child(2) {
	/* 	border : 1px solid red; */
		width : 42px;
		float : right;
		margin-bottom : 20px;
		position : relative;
	}
	
	.first_div div:nth-child(2) img {
	/* 	border : 1px solid yellow; */
		width : 42px;
		height : 42px;
	}
	
	.first_div div:nth-child(2) span {
		color : #ff7100;
		font-size : 12px;
	/* 	border : 1px solid blue; */
		position : absolute;
		top : 40px;
		left : 3px;
	}
	
	.real_content div:nth-child(2) p {
		width : 570px;
		height : 150px;
	/* 	border : 1px solid red; */
		margin : 0px auto 10px;
		clear : both;
		font-size : 15px;
		color : #434343;
	}
	
	.real_content div:nth-child(3) {
		width : 570px;
		margin : auto;
	/* 	border : 1px solid red; */
	}
	
	.real_content div:nth-child(3) img {
		width : 200px;
		height : 200px;
		clear : both;
	}
	
	.real_content div:nth-child(4) {
	 	width : 570px;
	/* 	border : 1px solid black; */
		margin : auto;
		margin-top : 40px;
	}
	
	.real_content div:nth-child(4) button {
		border : 2px solid #FF7100;
		width : 130px;
		/*height : 40px; */
		padding : 14px 0px;
		float : right;
		border-radius : 30px;
		color : #ff7100;
	}
	
	.detail_page {
		margin-right : 10px;
	}
	
</style>
</head>
<body>
<!-- header -->
<!-- <iframe src="header.do" width="100%" height="61px" scrolling="no" frameborder=0 ></iframe> -->
<jsp:include page="../header.jsp"></jsp:include>
	<article class="review_content">
		<section class="real_content">
			<div class="first_div">
				<div>
					<img src="http://localhost:9000/mangoplate/resources/images/profile.jpg">
					<p>아이디<p>
					<span>조회수</span>
				</div>
				<div>
					<img src="http://localhost:9000/mangoplate/resources/images/delicious_checked.png">
					<span>맛있다</span>
				</div>
			</div>
			<div>
			</div>
			<div>
				<img src="http://localhost:9000/mangoplate/resources/images/test1.jpg">
				<img src="http://localhost:9000/mangoplate/resources/images/test1.jpg">
			</div>
			<div>
				<a href="http://localhost:9000/mangoplate/index.do"><button type="button">홈으로</button></a>
				<a href="http://localhost:9000/mangoplate/restaurant_detail.do"><button type="button" class="detail_page">상세페이지로</button></a>
			</div>
		</section>
	</article>
</body>
</html>