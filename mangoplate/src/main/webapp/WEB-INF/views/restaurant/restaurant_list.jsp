<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛집리스트</title>
<style>
* {
	margin: 0px;
	padding: 0px;
}

.first {
	background-color : #f7f7f7;
}

section.list {
	/* border : 1px solid black;  */
	width: 1150px;
	margin: auto;
	margin-top : 61px;
}

section.list h1 {
	/* 	border : 1px solid yellow; */
	color: #FF792A;
	font-size: 20px;
	margin: 40px 0px 0px 10px;
	padding-top : 30px;
}

/* 상단 tag관련 css */
ul.tag {
	/*  border : 1px solid red;  */
	list-style-type: none;
}

ul.tag li {
	border: 1px solid gray;
	background-color: white;
	color: gray;
	float: left;
	border-radius: 20px;
	margin: 15px 7.5px 20px 4px;
	padding: 8px 15px;
	font-size: 14px;
	text-align: center;
}

/* table.art tr td img {
		border : 1px solid yellow;
		width : 550px; height : 265px;
		padding : 0px 12px 20px 10px;
	} */
table.art {
	margin: auto;
}

div.upper_tag {
	margin: 0px 0px 0px 10px;
}

table td {
	border: 27px solid #f7f7f7;
	width: 550px;
	height: 265px;
	margin: 0px;
	padding: 0px;
	font-size: 30px;
	color: white;
	text-align: center;
	/* background-image:
		url("http://localhost:9000/mangoplate/resources/images/test1.jpg"); */
	font-weight: normal;
}

.art tr td a {
	text-decoration : none;
	color : white;
}

table tr:nth-child(1) td:nth-child(1) {
	background-image:
		url("http://localhost:9000/mangoplate/resources/images/test2.jpg");
	background-size : 550px 265px;
}

table tr:nth-child(1) td:nth-child(2) {
	background-image:
		url("http://localhost:9000/mangoplate/resources/images/chinese_food.jpg");
	background-size : 550px 265px;
}

table tr:nth-child(2) td:nth-child(1) {
	background-image:
		url("http://localhost:9000/mangoplate/resources/images/western_food.jpg");
	background-size : 550px 265px;
}

table tr:nth-child(2) td:nth-child(2) {
	background-image:
		url("http://localhost:9000/mangoplate/resources/images/japanese_food.jpg");
	background-size : 550px 265px;
}

table tr:nth-child(3) td:nth-child(1) {
	background-image:
		url("http://localhost:9000/mangoplate/resources/images/pizza.jpg");
	background-size : 550px 265px;
}

table tr:nth-child(3) td:nth-child(2) {
	background-image:
		url("http://localhost:9000/mangoplate/resources/images/rice_noodle.jpg");
	background-size : 550px 265px;
}

table tr:nth-child(4) td:nth-child(1) {
	background-image:
		url("http://localhost:9000/mangoplate/resources/images/ttokbokki.jpg");
	background-size : 550px 265px;
}

table tr:nth-child(4) td:nth-child(2) {
	background-image:
		url("http://localhost:9000/mangoplate/resources/images/cafe.jpg");
	background-size : 550px 265px;
}

/* 더보기 버튼 css */
/* .more {
	position: relative;
}

.more div {
	border : 1px solid black;
	width: 896px;
	margin: 0 auto;
	text-align: center;
	height: 50px;
	border-bottom: 1px solid #dbdbdb;
}

.more img {
	position: absolute;
	top: 3px;
}

article.more span {
	color: #FF792A;
} */

.more {
	width : 113px;
	margin : auto;
 	margin-bottom : 30px;
}

.more img {
 /* 	border : 1px solid black; */
	width: 113px;
	height : 30px;
	padding : 5px;
}

</style>
<script>

</script>
</head>
<body>
	<!-- header -->
	<!-- <iframe src="header.do" width="100%" height="61px" scrolling="no" frameborder=0 ></iframe> -->
	<jsp:include page="../header.jsp"></jsp:include>

	<!-- content -->
<div class="first">
	<section class="list">
		<h1>믿고 보는 맛집 리스트</h1>
		<div class="upper_tag">
			<ul class="tag">
				<li># 전체</li>
				<li># 파스타</li>
				<li># 무한리필</li>
				<li># 이태원</li>
				<li># 고기</li>
				<li># 데이트</li>
				<li># 강남</li>
				<li># 홍대</li>
				<li># 스테이크</li>
				<li># 가로수길</li>
				<li># 디저트</li>
			</ul>
		</div>
		<table class="art">
			<tr>
				<td>
				<a href="http://localhost:9000/mangoplate/restaurant_content.do?rcategory=한식"><span>한식 맛집 베스트 10곳</span><br> <span>"한식 맛집 총정리"</span></a></td>
				<td>
				<a href="http://localhost:9000/mangoplate/restaurant_content.do?rcategory=중식"><span>중식 맛집 베스트 10곳</span><br> <span>"중식 맛집 총정리"</span></a></td>
			</tr>
			<tr>
				<td>
				<a href="http://localhost:9000/mangoplate/restaurant_content.do?rcategory=양식"><span>양식 맛집 베스트 10곳</span><br> <span>"양식 맛집 총정리"</span></a></td>
				<td>
				<a href="http://localhost:9000/mangoplate/restaurant_content.do?rcategory=일식"><span>일식 맛집 베스트 10곳</span><br> <span>"일식 맛집 총정리"</span></a></td>
			</tr>
			<tr>
				<td>
				<a href="http://localhost:9000/mangoplate/restaurant_content.do"><span>피자 맛집 베스트 10곳</span><br> <span>"피자 맛집 총정리"</span></a></td>
				<td>
				<a href="http://localhost:9000/mangoplate/restaurant_content.do?rcategory=아시안음식"><span>아시안음식 맛집 베스트 10곳</span><br> <span>"아시안음식 맛집 총정리"</span></a></td>
			</tr>
			<tr>
				<td>
				<a href="http://localhost:9000/mangoplate/restaurant_content.do"><span>떡볶이 맛집 베스트 10곳</span><br> <span>"떡볶이 맛집 총정리"</span></a></td>
				<td>
				<a href="http://localhost:9000/mangoplate/restaurant_content.do"><span>카페 베스트 10곳</span><br> <span>"분위기 좋은 카페 총정리"</span></a></td>
			</tr>
		</table>
		<article class="more">
			<div>
				<img src="http://localhost:9000/mangoplate/resources/images/more.png">
			</div>
		</article>
	</section>
	<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="750px" scrolling="no"
		frameborder=0></iframe>
</div>
</body>
</html>